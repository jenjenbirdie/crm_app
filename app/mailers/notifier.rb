class Notifier < ActionMailer::Base
  default :from => "Jennifer Bernardino<jbernardino66@gmail.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.general_email.subject
  #
  def general_email
    @greeting = "Hi"

    mail :to => "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_email.subject
  #
  def contact_email
    @greeting = "Hi"

    mail :to => "to@example.org"
  end
end
