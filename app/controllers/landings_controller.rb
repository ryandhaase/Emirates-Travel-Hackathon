class LandingsController < ApplicationController
  def home
    @landing = Landing.new
  end

  def create
    @landing = Landing.new(landing_params)

    if @landing.save
      redirect_to @landing
    end
  end

  def show
  end

  private

  def landing_params
    params.require(:landing).permit(:category, :start_date, :end_date, :city, :state, :country)
  end
end
