class Contact
attr_reader(:first_name, :last_name, :phone)

  def initialize(attributes)
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @phone = nil
  end

  def add_phone(phone)
     @phone = phone
  end

end
