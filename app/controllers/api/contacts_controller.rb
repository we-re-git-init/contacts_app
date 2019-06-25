class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.first
    render 'show.json.jb'
  end

  def all
    @contacts = Contact.all
    render 'every_single_contact.json.jb'
  end
end
