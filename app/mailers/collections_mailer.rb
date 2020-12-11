# typed: true
# frozen_string_literal: true

# Sends email notifications about collections
class CollectionsMailer < ApplicationMailer
  def invitation_to_deposit_email
    @user = params[:user]
    @collection = params[:collection]
    mail(to: @user.email, subject: "Invitation to deposit to the #{@collection.name} collection in the SDR")
  end

  def deposit_access_removed_email
    @user = params[:user]
    @collection = params[:collection]
    mail(to: @user.email, subject: "Your Depositor permissions for the #{@collection.name} " \
      'collection in the SDR have been removed')
  end
end
