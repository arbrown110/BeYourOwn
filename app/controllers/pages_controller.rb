class PagesController < ApplicationController
 before_action :redirect_if_not_signed_in

 def new
    @page = Page.new
 end

 def create
   @page = current_user.pages.new(page_params)
     if @page.save
      redirect_to pages_path
     else
        render :new
     end
 end

 private

 def page_params
   params.require(:page).permit(:name,:information,:photo )
 end

end
