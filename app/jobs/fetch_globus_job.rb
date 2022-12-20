# frozen_string_literal: true

require 'zip'

# Change work version from a globus type to a browser type by fetching file names
# from Globus and creating Attached Files.
class FetchGlobusJob < BaseDepositJob
  queue_as :default

  def perform(work_version)
    work_version.attached_files.destroy_all

    filepaths_for(work_version).each do |path|
      work_version.attached_files << new_attached_file(path, work_version)
    end
    work_version.upload_type = 'browser'
    work_version.fetch_globus_complete!
  end

  def filepaths_for(work_version)
    filepaths = GlobusClient.get_filenames(path: work_version.globus_endpoint, user_id: work_version.work.owner.email)
    filepaths.map { |filepath| filepath.delete_prefix(globus_prefix(work_version)) }
  end

  def globus_prefix(work_version)
    "#{Settings.globus.uploads_directory}#{work_version.globus_endpoint}/"
  end

  def new_attached_file(path, work_version)
    AttachedFile.new(path:, work_version:).tap do |attached_file|
      blob = ActiveStorage::Blob.create_before_direct_upload!(
        key: attached_file.create_globus_active_storage_key,
        filename: path,
        service_name: ActiveStorage::Service::GlobusService::SERVICE_NAME,
        byte_size: 0,
        checksum: path
      )
      attached_file.file.attach(blob)
    end
  end
end
