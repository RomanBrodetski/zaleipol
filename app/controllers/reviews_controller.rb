class ReviewsController < ApplicationController
  PageLength = 8
  def index
  	@page = Page.find_by_plug("reviews")
  	@side_menu = @page.top_parent.child_pages

  	@reviews = Review.limit(PageLength)
  	@reviews = @reviews.skip(PageLength * params[:page].to_i - 1) if params[:page]
  end
end
