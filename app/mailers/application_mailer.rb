# frozen_string_literal: true

# the `ApplicationMailer` class is the base class for all mail senders in an application.
class ApplicationMailer < ActionMailer::Base
  # set the default sender address.
  default from: 'from@example.com'

  # set the default layout for email formatting.
  layout 'mailer'
end
