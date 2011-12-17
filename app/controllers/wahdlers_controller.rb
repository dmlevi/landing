class WahdlersController < ApplicationController
  
  def index
    @wahdler = Wahdler.new
  end
  
  def create
    @wahdler = Wahdler.new(params[:wahdler])
    if @wahdler.save  
      redirect_to root_url, notice: "Thanks for Signing Up!"
    else
      redirect_to root_url, notice: "Hmmmm Invalid Email"
    end
  end
end
