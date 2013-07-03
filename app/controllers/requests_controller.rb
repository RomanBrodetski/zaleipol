class RequestsController < ApplicationController
  def create
  	Request.create params[:request]
  	render :layout => false
  end
end
