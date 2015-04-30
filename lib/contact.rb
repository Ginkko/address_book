class Contact
@@contacts = []
@@id_counter = 0
attr_reader(:id, :first_name, :last_name, :phone, :email, :home_address)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone = nil
    @email = nil
    @home_address = nil
    @id = @@id_counter
    @@id_counter += 1
  end

  def add_phone(phone)
     @phone = phone
  end

  def add_email(email)
    @email = email
  end

  def add_home_address(address)
    @home_address = address
  end

  def store
    @@contacts.push(self)
  end

  def self.all
    @@contacts
  end

  def self.clear
    @@contacts = []
    @@id_counter = 0
  end

  def self.find(id)
    found_contact = nil
    @@contacts.each() do |contact|
      found_contact = contact if contact.id() == id
    end
    found_contact
  end

end
