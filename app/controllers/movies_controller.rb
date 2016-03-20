class MoviesController < ApplicationController

  before_action :authenticate_admin!, :except => [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      description: params[:description],
      duration: params[:duration],
      image_url: params[:image]
    )    
    redirect_to '/movies'
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(
      title: params[:title],
      description: params[:description],
      duration: params[:duration], 
      image_url: params[:image]
      )
  end

  def destroy
  end

  private

  def authenticate_admin!
    unless current_user && current_user.role.name = "admin"
      redirect_to '/movies'
    end
  end

end
