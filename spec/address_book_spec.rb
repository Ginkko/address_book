require 'rspec'
require 'address_book'
require 'pry'

describe(Contact) do
  describe("first_name") do
    it('provides the name of the contact') do
      test_contact = Contact.new(first_name: 'james', last_name: 'williams')
      expect(test_contact.first_name()).to(eq('james'))
    end
  end
end
