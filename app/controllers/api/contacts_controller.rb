class Api::ContactsController < ApplicationController
	
	def save_contact
		@contact = Contact.new(contact_params)

		if @contact.save
	      	ContactsMailer.send_message(@contact).deliver
	      	message = ["Details Successfully Submitted"]
	      	flash[:success] = message
	    else
	    	message = @contact.errors.full_messages << "Details Submission Failed"
	    	flash[:danger] = message
	    end
	    # using redirect_to to redirect to contact_path instead of showing json response on web
	    # render json: {contact: @contact, message: message}.as_json
	    redirect_to @contact
	end

	private

	def contact_params
		params.require(:contact).permit(:firstname, :lastname, :email, :phone, :message)
	end

end