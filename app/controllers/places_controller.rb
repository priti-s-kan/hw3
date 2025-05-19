class PlacesController < ApplicationController

  def index
    # find all Places rows
    @place = Place.all
    # render place/index view
  end
  
  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Contacts for the Company
    # @contacts = Contact.where({ "company_id" => @company["id"] })
    # render companies/show view with details about Company
  end

  def new
    # render view with new Place form
  end

  def create
    # start with a new Company
    @place = Place.new

    # assign user-entered form data to place's columns
    @place["name"] = params["name"]

    # save place row
    @place.save

    # redirect user
    redirect_to "/places"
  end

end
