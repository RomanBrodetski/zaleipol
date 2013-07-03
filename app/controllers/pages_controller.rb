class PagesController < ApplicationController
  def show
    if params[:plug]
      @page = Page.find_by_plug(params[:plug])
    else
      @page = Page.where(:main => true).first
    end
    @side_menu = @page.top_parent.child_pages
    unless @page.text.to_s == ''
      return render @page.plug
    else
      return render
    end
  end
end
