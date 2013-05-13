require 'spec_helper'

describe ProjectsController do
  it "displays and error for a missing project" do
    get :show, :id => "not-here"
    response.should redirect_to(projects_path)
    message = "The project your were looking for could not be found."
    flash[:alert].should == message
  end
end
