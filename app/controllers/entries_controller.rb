class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    # render entry/index view
  end
  
  def show
    # find a Entry
    @entries = Entry.find_by({ "id" => params["id"] })
    # find Contacts for the Company
    @place = Place.where({ "entry_id" => @place["id"] })
    # render companies/show view with details about Company
  end

  def new
    # render entry/new view with new Entry form
  end

  def create
    # start with a new Entry
    @entry = Entry.new

    # assign user-entered form data to Post's columns
    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]

    # save Post row
    @entry.save

    # redirect user
    redirect_to "/posts"
  end
  
end
