class SightsController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @plan = Plan.find(params[:plan_id])
    @sight = @place.sights.create(name: params[:name], address: params[:address], website: params[:website], url: params[:url], plan: @plan)
    puts @sight.inspect
    respond_to do |format|
      format.js { render json: @sight, status: :ok }
    end
    #head :ok, content_type: "text/html"
  end

  def destroy
    @place = Place.find(params[:place_id])
    @sight = @place.sights.where(name: params[:name], plan: Plan.find(params[:plan_id])).destroy_all
    head :ok, content_type: "text/html"
  end

end
