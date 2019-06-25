class Api::ContactsController < ApplicationController
  def show
    @contact = Contact.first
    render 'show.json.jb'
  end
end
