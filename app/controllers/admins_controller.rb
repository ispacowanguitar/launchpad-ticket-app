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

  private

  def authenticate_admin!
    unless current_user && current_user.role.name = "admin"
      redirect_to '/movies'
    end
  end

end


