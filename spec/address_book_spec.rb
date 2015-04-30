require 'rspec'
require 'contact'
require 'phone'
require 'pry'
require 'email'

describe(Contact) do
  # before() do
  #   Contact.clear()
  # end

  describe("first_name") do
    it('provides the first name of the contact') do
      test_contact = Contact.new(first_name: 'james', last_name: 'williams')
      expect(test_contact.first_name()).to(eq('james'))
    end
  end

  describe("last_name") do
    it('provides the last name of the contact') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      expect(test_contact.last_name()).to(eq('Cheese'))
    end
  end

  describe("add_phone") do
    it('adds a phone number to the contact form') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_phone = Phone.new(mobile_number: "503.206.9361", home_number: "941.349.4422")
      expect(test_contact.add_phone(test_phone)).to(eq(test_contact.phone()))
    end
  end

  describe("add_email") do
    it('adds an email to the contact form') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_email = Email.new(personal: "incubusalec@gmail.com", work: "Alec.Arme@gmail.com")
      expect(test_contact.add_email(test_email)).to(eq(test_contact.email()))
    end
  end


end

describe(Phone) do

  describe("mobile_number") do
    it('provides the mobile number of the contact') do
      test_phone = Phone.new(mobile_number: "503.206.9361", home_number: "941.349.4422")
      expect(test_phone.mobile_number()).to(eq("503.206.9361"))
    end
  end

end

describe(Email) do
  describe("personal") do
    it('provides the personal email address of the contact') do
      test_email = Email.new(personal: "incubusalec@gmail.com", work: "Alec.Arme@gmail.com")
      expect(test_email.personal()).to(eq("incubusalec@gmail.com"))
    end
  end

end
