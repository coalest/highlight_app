class StaticPagesController < ApplicationController
  # Just testing devise login system
  before_action :authenticate_user!
  
  def secret
    render html: "Only logged in users should be able to see me"
  end
end
