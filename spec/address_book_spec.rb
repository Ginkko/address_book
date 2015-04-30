require 'rspec'
require 'address_book'
require 'pry'

describe(Contact) do

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

end
