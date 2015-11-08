class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)

    if @search.save
      redirect_to :root
    end
  end

  private

  def search_params
    params.require(:search).permit(:category, :start_date, :end_date, :city, :state, :coutnry)
  end
end
