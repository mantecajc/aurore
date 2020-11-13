class NotifierMailer < ApplicationMailer
  def notify_user(contact)
    @contact = contact
    mail(to: Rails.application.credentials.admin[:ADMIN_EMAIL], subject: @contact.subject)
  end
end
