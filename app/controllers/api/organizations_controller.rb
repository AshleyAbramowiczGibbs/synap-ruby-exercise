class Api::OrganizationsController < ApplicationController

  #index method to display via json
  def index
    @organizations = Organization.all
    render "index.json.jbuilder"
  end

#show method to display via json
  def show
    @organization = Organization.find_by(id: params[:id])
    render "show.json.jbuilder"
  end
end
