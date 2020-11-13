class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      NotifierMailer.notify_user(@contact).deliver
      flash[:notice] = "Message sent! Thank you for contacting us."
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send message'
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :last_name, :subject, :message, :email)
  end
end
