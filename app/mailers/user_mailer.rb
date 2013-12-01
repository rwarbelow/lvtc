class UserMailer < ActionMailer::Base
  default from: "lvtc.events@gmail.com"

  def registration_confirmation(firstname, lastname, email, event)
    @firstname = firstname
    @lastname = lastname
    @email = email
    @event = event
    attachments.inline["new_logo.png"] = File.read("#{Rails.root}/app/assets/images/new_logo.png")

    mail to: email, subject: "Registration Confirmation: #{event.title}"
  end

  def membership_confirmation(people, user_membership)
  	@people = people
  	@user_membership = user_membership

    attachments.inline["new_logo.png"] = File.read("#{Rails.root}/app/assets/images/new_logo.png")

    mail to: @user_membership.users.first.email_address, subject: "Welcome to the Las Vegas Track Club!"
  end
end
