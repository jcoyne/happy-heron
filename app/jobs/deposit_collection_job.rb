# frozen_string_literal: true

# Deposits a Collection into SDR API.
class DepositCollectionJob < BaseDepositJob
  queue_as :default

  def perform(collection_version)
    deposit(request_dro: CocinaGenerator::CollectionGenerator.generate_model(collection_version: collection_version))
  rescue StandardError => e
    Honeybadger.notify(e)
  end

  private

  def deposit(request_dro:)
    login_result = login

    raise login_result.failure unless login_result.success?

    create_or_update(request_dro)
  end

  def create_or_update(request_dro)
    case request_dro
    when Cocina::Models::RequestCollection
      SdrClient::Deposit::CreateResource.run(accession: true,
                                             metadata: request_dro,
                                             logger: Rails.logger,
                                             connection: connection)
    when Cocina::Models::Collection
      SdrClient::Deposit::UpdateResource.run(metadata: request_dro,
                                             logger: Rails.logger,
                                             connection: connection)
    end
  end

  def connection
    @connection ||= SdrClient::Connection.new(url: Settings.sdr_api.url)
  end
end
