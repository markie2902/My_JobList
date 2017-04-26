class SearchesController < ApplicationController

  def new
    @search = Search.new
    @titles = Job.uniq.pluck(:title)
    @status = Job.uniq.pluck(:status)
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    # binding.pry
  end

  private

    def search_params
      params.require(:search).permit(:keywords, :title, :status, :location)
    end

end
