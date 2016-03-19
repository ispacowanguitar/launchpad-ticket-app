class MoviesController < ApplicationController

  before_action :authenticate_admin!, :except => [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def edit
  end


  def create
    @movie = Movie.new(movie_params)    
  end

  def update
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
