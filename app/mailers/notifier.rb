class Notifier < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.registration_confirmation.subject
  #
  def registration_confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
