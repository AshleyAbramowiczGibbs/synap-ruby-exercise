class Api::PeopleController < ApplicationController

  #index method to display via json
  def index
    @people = Person.all
    render "index.json.jbuilder"
  end

  #show method to display via json
  def show
    @person = Person.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
