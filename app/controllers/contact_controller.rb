class ContactController < ApplicationController
  def create
  	@contact = Contact.new(params.require(:contact).permit(:name, :email, :message))
  	@contact.save
  	redirect_to root_path
  end
end
