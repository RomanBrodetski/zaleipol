class ReviewsController < ApplicationController
  PageLength = 8
  def index
  	@page = Page.find_by_plug("reviews")
  	@side_menu = @page.top_parent.child_pages.where(:hidden => false)

  	@reviews = Review.limit(PageLength)
  	@reviews = Review.offset(PageLength * params[:page].to_i).limit(PageLength) if params[:page]
  	@has_more = Review.all.count > PageLength * (params[:page].to_i  + 1)
  end
end
