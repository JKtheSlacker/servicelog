class TicketsController < ApplicationController
  before_filter :find_ticket, :only => [:show,
    :edit,
    :update,
    :destroy]

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
  end

  def edit
  end

  def update
    if @ticket.update_attributes(params[:ticket])
      flash[:notice] = "Ticket has been updated."
      redirect_to @ticket
    else
      flash[:alert] = "Ticket has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @ticket.customer = "VOID"
    @ticket.in_by = "VOID"
    @ticket.make = "VOID"
    @ticket.model = "VOID"
    @ticket.serial = "VOID"
    @ticket.out_by = "VOID"
    @ticket.date_out = Time.now
    @ticket.update_attributes(params[:ticket])
    flash[:notice] = "Ticket has been voided."
    redirect_to tickets_path
  end

  private
  def find_ticket
    @ticket = Ticket.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert]= "The ticket you were looking for could not be found."
    redirect_to tickets_path
  end
end
