class NotifierMailer < ApplicationMailer
  def notify_user(contact)
    @contact = contact
    mail(to: ENV['ADMIN_EMAIL'], subject: @contact.subject)
  end
end


# Instead 'mantecajc@gmail.com' Rails.application.credentials.gmail[:ADMIN_EMAIL]
