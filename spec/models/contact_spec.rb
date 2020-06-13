require 'rails_helper'

RSpec.describe Contact, type: :model do
	subject {
    	described_class.new(firstname: "Sohail",
                        lastname: "Shaikh",
                        email: "sohailshaikh272@gmail.com",
                        phone: "8450000000",
                        message: "Unit testing")
  	}

	it "is valid with valid attributes" do
  		expect(subject).to be_valid
	end
	it "is not valid without a firstname" do
    	subject.firstname = nil
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a lastname" do
    	subject.lastname = nil
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a email" do
    	subject.email = nil
    	expect(subject).to_not be_valid
  	end
  	it "is not valid without a message" do
    	subject.message = nil
    	expect(subject).to_not be_valid
  	end
  	it "is not valid with invalid email" do
    	subject.email = "sohailshaikh272@gmail"
    	expect(subject).to_not be_valid
  	end
end
