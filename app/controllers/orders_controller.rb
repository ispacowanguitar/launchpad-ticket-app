class OrdersController < ApplicationController

  def buy
    @showing = Showing.find(params[:id])
  end

  def create

    if params[:credit_card_number].length == 10 && params[:expiration_date]
      order = Ticket.new(
        name: params[:name],
        email: params[:email],
        showing_id: params[:id]
        )
      if order.save
        flash[:success] = "Ticket purchased. Receipt sent to #{params[:email]}"
      end
      redirect_to '/'
    end
  end

end
