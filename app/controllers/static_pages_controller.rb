class StaticPagesController < ApplicationController

  def index
    @random_place = Place.order("RANDOM()").first
  end

end
