require 'rspec'
require 'contact'
require 'phone'
require 'pry'
require 'email'
require 'home_address'
require 'office_address'
describe(Contact) do

  before() do
    Contact.clear()
  end

  describe("#first_name") do
    it('provides the first name of the contact') do
      test_contact = Contact.new(first_name: 'james', last_name: 'williams')
      expect(test_contact.first_name()).to(eq('james'))
    end
  end

  describe("#last_name") do
    it('provides the last name of the contact') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      expect(test_contact.last_name()).to(eq('Cheese'))
    end
  end

  describe("#add_phone") do
    it('adds a phone number to the contact form') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_phone = Phone.new(mobile_number: "503.206.9361", home_number: "941.349.4422")
      expect(test_contact.add_phone(test_phone)).to(eq(test_contact.phone()))
    end
  end

  describe("#add_email") do
    it('adds an email to the contact form') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_email = Email.new(personal: "incubusalec@gmail.com", work: "Alec.Arme@gmail.com")
      expect(test_contact.add_email(test_email)).to(eq(test_contact.email()))
    end
  end

  describe("#add_home_address") do
    it('adds an home address to the contact form') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_home_address = HomeAddress.new(street_address:'1234 Easy Street', city:'Portland',state: 'OR', zip: '97214')
      expect(test_contact.add_home_address(test_home_address)).to(eq(test_contact.home_address()))
    end
  end

  describe("#store") do
    it('adds a contact to the list of contacts') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_contact.store()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".find") do
    it('finds a contact in the list of contacts') do
      test_contact = Contact.new(first_name: "Chuck-e", last_name: 'Cheese')
      test_contact.store()
      expect(Contact.find(0)).to(eq(test_contact))
    end
  end
end

describe(Phone) do

  describe("#mobile_number") do
    it('provides the mobile number of the contact') do
      test_phone = Phone.new(mobile_number: "503.206.9361", home_number: "941.349.4422")
      expect(test_phone.mobile_number()).to(eq("503.206.9361"))
    end
  end

end

describe(Email) do
  describe("#personal") do
    it('provides the personal email address of the contact') do
      test_email = Email.new(personal: "incubusalec@gmail.com", work: "Alec.Arme@gmail.com")
      expect(test_email.personal()).to(eq("incubusalec@gmail.com"))
    end
  end

end

describe(HomeAddress) do

  describe('#street_address') do
    it('provides the street number of the home address') do
      test_home_address = HomeAddress.new(street_address:'1234 Easy Street', city:'Portland',state: 'OR', zip: '97214')
      expect(test_home_address.street_address()).to(eq("1234 Easy Street"))
    end
  end


end
