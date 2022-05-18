class PlacesController < ApplicationController
   def index
    @places = Place.all
   end

   def show
    @place = Place.find_by({ "id" => params["id"]})
    @posts = Post.where({"place_id" => @place["id"]})
    # @post["title"]=Post.where({"id" => @place["id"]})["title"]
    # @post["title"] = @post["title"]
    # @post["description"] = params["post"]["description"]
    # @post["posted_on"] = params["post"]["posted_on"]
    # @post["place_id"] = params["post"]["place_id"]
    # @post["description"] = params["post"]["description"]
    # # render /views/places/show.html.erb <h2><%= @post["title"] %></h1>
   end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
    end

    def destroy
        @place = Place.find_by({ "id" => params["id"] })
        @place.destroy
        redirect_to "/places"
    end
end