class PlansController < ApplicationController
  before_action :authenticate_user!

  def create
    puts params.inspect
    puts params[:place_id]
    puts params[:id]
    @place = Place.find(params[:place_id])
    @plan = current_user.plans.create(place: @place )
    id_plan = @plan.id
    respond_to do |format|
      format.js { render json: @plan, status: :ok }
    end
    #redirect_to place_path(@place)
    #render :json => @plan
    #head :ok, content_type: "text/html"
  end

end
