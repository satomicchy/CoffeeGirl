class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.valid?
      Mailer.contact(params[:contact]).deliver
      redirect_to thanks_contacts_path
    else
      render :new
    end
  end

  def thanks
  end

end
