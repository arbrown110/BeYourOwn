class ContactsController < ApplicationController

 def index
  if params[:page_id] && @page = Page.find_by_id(params[:page_id])
    @contacts = @page.contacts
  else 
    @contact = Contact.all
 end

 def new
  @contact = Contact.new
 end

 def create
  @contact = current_user.contacts.new(contact_params)
  if @contact.save
   redirect_to contacts_path
  else
     render :new
  end
 end

 def show
  @contact = Contact.find_by(id: params[:id])
 end

 def edit
  @contact = Contact.find_by(id: params[:id])
 end 

 def update
  @contact = Contact.find_by(id: params[:id])
 end

 private

 def contact_params
   params.require(:contact).permit(:name,:number,:email)
 end
end
