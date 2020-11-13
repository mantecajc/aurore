class NotifierMailer < ApplicationMailer
  def notify_user(contact)
    @contact = contact
    mail(to: 'mantecajc@gmail.com', subject: @contact.subject)
  end
end
