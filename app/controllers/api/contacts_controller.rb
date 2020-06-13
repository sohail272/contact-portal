class Api::ContactsController < ApplicationController

	def save_contact
		@contact = Contact.new(contact_params)

		if @contact.save
	      	ContactsMailer.send_message(@contact).deliver
	      	message = 'Details Successfully Submitted'
	      	flash[:success] = message
	      	status = 200
	    else
	    	message = "Details Submission Failed"
	    	flash[:danger] = message
	    	status = 400
	    end
	    # using redirect_to to show flash msg on the main page itself
	    # render status: status, json: {contact: @contact, message: message}.to_json
	    redirect_to contact_path
	end

	private

	def contact_params
		params.require(:contact).permit(:firstname, :lastname, :email, :phone, :message)
	end

end