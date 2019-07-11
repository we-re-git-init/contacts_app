class Api::ContactsController < ApplicationController
  def index

    @contacts = Contact.all

    # if you're logged in, see just your contacts
    if current_user
      @contacts = current_user.contacts
    else
      @contacts = []
    end
    # if you're not logged in...
    # show them nothing
    render 'index.json.jb'
  end

  def create
    p "*" * 50
    p current_user
    p "*" * 50

    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      middle_name: params[:middle_name],
      bio: params[:bio],
      user_id: current_user.id
    )
    if @contact.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end

  def update
    # find the contact
    @contact = Contact.find_by(id: params[:id])
    # change the contact
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.bio = params[:bio] || @contact.bio
    if @contact.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end
end
