class SightsController < ApplicationController

  def create
    puts params.inspect
    puts params[:place_id]
    puts params[:id]
    @place = Place.find(params[:place_id])
    @sight = @place.sights.create(name: params[:name], address: params[:address], website: params[:website], url: params[:url], plan: Plan.find(params[:plan_id]))
    head :ok, content_type: "text/html"
  end

end
