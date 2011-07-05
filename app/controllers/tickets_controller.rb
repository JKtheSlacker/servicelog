class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
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

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update_attributes(params[:ticket])
    flash[:notice] = "Ticket has been updated."
    redirect_to @ticket
  end
end
