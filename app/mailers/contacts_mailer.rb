class ContactsMailer < ApplicationMailer
  default from: "no-reply@example.com"
  
  def send_message(contact)
    @contact = contact
    mail( to: "info@ajackus.com", subject: "Details of newly added contact")
  end
end