# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'maxime@parentheze.com'
  layout 'mailer'
end
