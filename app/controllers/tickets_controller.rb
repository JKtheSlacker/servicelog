class TicketsController < ApplicationController

  def index
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(params[:ticket])
    @ticket.save
    flash[:notice] = "Ticket has been entered."
    redirect_to @ticket
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
