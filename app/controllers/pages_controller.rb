class PagesController < ApplicationController
  def show
    if params[:plug]
      @page = Page.find_by_plug(params[:plug])
    else
      @page = Page.where(:main => true).first
    end
    @side_menu = @page.top_parent.child_pages
    begin
      return render @page.plug
    rescue
      return render
    end
  end
end
