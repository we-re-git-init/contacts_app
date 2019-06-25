class Api::ContactsController < ApplicationController
  def show
    render 'show.json.jb'
  end
end
