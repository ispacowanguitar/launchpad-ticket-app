class OrdersController < ApplicationController

  def buy
    @showing = Showing.find(params[:id])
  end

  def create
    showing = Showing.find(params[:id])
    if showing.remaining_seats < 1 
      flash[:warning] = "Sorry, this show has sold out"
    end

    if params[:credit_card_number].length == 10 && params[:expiration_date]
      order = Ticket.new(
        name: params[:name],
        email: params[:email],
        showing_id: params[:id]
        )
      if order.save
        flash[:success] = "Ticket purchased. Receipt sent to #{params[:email]}"
      else
        flash[:danger] = "Ticket purchase failed. Make sure you entered your name and email (or you should have hired a developer with more experience!)"
      end
    else
      flash[:warning] = "Either your credit card is invalid, or you forgot the expiration date. Or you're broke."
    end
    redirect_to '/'
  end

end
