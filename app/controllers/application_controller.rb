class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :prepare_navigation

  def prepare_navigation
    @top_menu = Page.top
  end
end
