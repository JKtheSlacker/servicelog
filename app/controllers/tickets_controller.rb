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
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Ticket has been updated."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.customer = "VOID"
    @ticket.in_by = "VOID"
    @ticket.make = "VOID"
    @ticket.model = "VOID"
    @ticket.serial = "VOID"
    @ticket.out_by = "VOID"
    @ticket.date_out = Time.now
    @ticket.update_attributes(params[:ticket])
    flash[:notice] = "Ticket has been voided."
    render :action => "edit"
  end
end
