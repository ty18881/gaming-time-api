class ApplicationMailer < ActionMailer::Base
  ## base class that all other mailers will inherit from.
  default from: 'ty18881@yahoo.com'
  layout 'mailer'
end
