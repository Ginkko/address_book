class Contact
attr_reader(:first_name, :last_name, :phone, :email)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone = nil
    @email = nil
  end

  def add_phone(phone)
     @phone = phone
  end

  def add_email(email)
    @email = email
  end

end
