class Contact
attr_reader(:first_name, :last_name, :phone, :email, :home_address)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone = nil
    @email = nil
    @home_address = nil
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
end
