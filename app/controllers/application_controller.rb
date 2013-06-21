class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :navigation

  def navigation
    @menu = Page.top
  end
end
