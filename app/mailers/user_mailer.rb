class UserMailer < ActionMailer::Base
  default from: "lvtc.events@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.registration_confirmation.subject
  #
  def registration_confirmation(firstname, lastname, email, event)
    @firstname = firstname
    @lastname = lastname
    @email = email
    @event = event
    attachments.inline["new_logo.png"] = File.read("#{Rails.root}/app/assets/images/new_logo.png")

    mail to: email, subject: "Registration Confirmation: #{event.title}"
  end
end
