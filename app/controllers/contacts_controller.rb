class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    Mailer.contact(params[:contact]).deliver

    redirect_to thanks_contacts_path
  end

  def thanks
  end

end
