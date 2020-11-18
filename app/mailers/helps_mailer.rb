# typed: false
# frozen_string_literal: true

# The endpoint for the help modal
class HelpsMailer < ApplicationMailer
  def send_jira(email, subject, body)
    @email = email
    @subject = subject
    @body = body
    mail(to: 'sdr-contact@lists.stanford.edu',
         from: @email,
         subject: @subject,
         body: @body)
  end
end
