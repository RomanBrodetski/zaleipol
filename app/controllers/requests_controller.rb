class RequestsController < ApplicationController
  def create
  	Request.create params[:request]
  	{:status => :ok}.to_json
  end
end
