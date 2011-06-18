class TicketsController < ApplicationController

  def index
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    if @ticket.save
      flash[:notice] = "Ticket has been entered."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been entered."
      render :action => "new"
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
