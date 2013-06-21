class PagesController < ApplicationController
  def show
    if params[:plug]
      @page = Page.find_by_plug(params[:plug])
    else
      @page = Page.top.where(:main => true).first
    end
    render @page.plug
  end
end
