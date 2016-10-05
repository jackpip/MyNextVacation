class PlansController < ApplicationController
  before_action :authenticate_user!

  def create
    puts params.inspect
    puts params[:place_id]
    puts params[:id]
    @place = Place.find(params[:place_id])
    @plan = current_user.plans.create(place: @place )
    head :ok, content_type: "text/html"
  end

end
