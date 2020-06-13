class ContactsMailer < ApplicationMailer
  default from: "no-reply@example.com"
  
  def send_message(contact)
    @contact = contact
    mail( to: "admin@example.com", subject: "Details of newly added contact")
  end
end