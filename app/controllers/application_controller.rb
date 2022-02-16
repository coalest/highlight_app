class ApplicationController < ActionController::Base
  def index
    render html: "Home page for highlight app"
  end
end
