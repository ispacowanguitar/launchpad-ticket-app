class AdminsController < ApplicationController

  before_action :authenticate_admin!
  
  def index
  end

  def new_auditorium
  end

  def create_auditorium
    auditorium = Auditorium.new(
      seating_capacity: params[:seating_capacity]
      )

    if auditorium.save
      flash[:success] = "You created auditorium number #{auditorium.id}, with a seating capacity of #{auditorium.seating_capacity}"
    else
    end
    redirect_to '/admin'
  end

  def sales
    @movies = Movie.all

    if params[:movie_id] && params[:movie_id] != 'all'
      movie = Movie.find(params[:movie_id])
      @tickets = Ticket.joins(:showing).where("showings.movie_id = #{params[:movie_id]}")
    else params[:movie_id] == 'all'
      @tickets = Ticket.all
    end

  end

  def new_showing
    @movies = Movie.all
  end

  def create_showing
    start_time = "#{params[:start_time]["(1i)"]}-#{params[:start_time]["(2i)"]}-#{params[:start_time]["(3i)"]} [#{params[:start_time]["(4i)"]}:#{params[:start_time]["(5i)"]}:00]"

    # YYYY-MM-DD [HH:MM:SS]

    p start_time
    puts params[:start_time]
    showing = Showing.new(
      auditorium_id: params[:auditorium_id],
      movie_id: params[:movie_id],
      start_time: start_time
      )

    if showing.save
      flash[:success] = "You created a new showing of #{Movie.find(params[:movie_id])}"
    end
    redirect_to '/admin'
  end

  private

  def authenticate_admin!
    unless current_user
      redirect_to '/movies'
    end
  end


end


