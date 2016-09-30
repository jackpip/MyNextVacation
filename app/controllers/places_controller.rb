class PlacesController < ApplicationController

  def show
    @place = Place.find(params[:id])
    @base_uri = "https://maps.googleapis.com/maps/api/place/"
    @hotels = HTTParty.get(@base_uri + "textsearch/json?query=lodging in " + @place.city + "&key=" + ENV["PLACES_SECRET_KEY"])
    @hotels_details = details(@hotels)
    @attractions = HTTParty.get(@base_uri + "textsearch/json?query=attractions in " + @place.city + "&key=" + ENV["PLACES_SECRET_KEY"])
    @attractions_details = details(@attractions)
    @restaurants = HTTParty.get(@base_uri + "textsearch/json?query=restaurants in " + @place.city + "&key=" + ENV["PLACES_SECRET_KEY"])
    @restaurants_details = details(@restaurants)
  end

  private

  def details(list)
    d = []
    i = 0
    list["results"].each do |r|
      return d if i >= 3
      id = r["place_id"]
      d.push(HTTParty.get(@base_uri + "details/json?placeid=" + id + "&key=" + ENV["PLACES_SECRET_KEY"]))
      i += 1
    end
    d
  end

end
