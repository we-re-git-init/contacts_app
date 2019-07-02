class Api::ContactsController < ApplicationController
  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number]
    )
    @contact.save
    render 'show.json.jb'
  end

  def update
    # find the contact
    @contact = Contact.find_by(id: params[:id])
    # change the contact
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.save
    render 'show.json.jb'
  end
end
