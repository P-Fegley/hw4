class EntriesController < ApplicationController

  def new
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry.image.attach(params["image"])
    @entry["place_id"] = params["place_id"]
    @entry["user_id"] = @user["id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
