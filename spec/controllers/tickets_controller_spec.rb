require 'spec_helper'

describe TicketsController do
  it "displays an error for a missing ticket" do
    get :show, :id => "not-here"
    response.should redirect_to(tickets_path)
    message = "The ticket you were looking for could not be found."
    flash[:alert].should eql(message)
  end
end
