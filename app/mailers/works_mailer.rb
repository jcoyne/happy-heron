# typed: true
# frozen_string_literal: true

# Sends email notifications about works
class WorksMailer < ApplicationMailer
  def approved_email
    @user = params[:user]
    @work = params[:work]
    mail(to: @user.email, subject: 'Your deposit has been reviewed and approved')
  end

  def deposited_email
    @user = params[:user]
    @work = params[:work]
    mail(to: @user.email, subject: "Your deposit, #{@work.title}, is published in the SDR")
  end

  def first_draft_reminder_email
    @work = params[:work]
    @user = @work.depositor

    subject = "Reminder: Deposit to the #{@work.collection_name} collection in the SDR is in progress"

    mail(to: @user.email, subject: subject)
  end

  def new_version_reminder_email
    @work = params[:work]
    @user = @work.depositor

    subject = "Reminder: New version of a deposit to the #{@work.collection_name} collection in the SDR is in progress"

    mail(to: @user.email, subject: subject)
  end

  def new_version_deposited_email
    @user = params[:user]
    @work = params[:work]
    mail(to: @user.email, subject: "A new version of #{@work.title} has been deposited in the SDR")
  end

  def reject_email
    @user = params[:user]
    @work = params[:work]
    mail(to: @user.email, subject: 'Your deposit has been reviewed and returned')
  end

  def submitted_email
    @user = params[:user]
    @work = params[:work]
    mail(to: @user.email, subject: 'Your deposit is submitted and waiting for approval')
  end
end
