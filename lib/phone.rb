class Phone
@@phones = []
  attr_reader(:mobile_number, :home_number)

  def initialize(numbers)
    @mobile_number = numbers.fetch(:mobile_number)
    @home_number = numbers.fetch(:home_number)

  end

  def store
    @@phones.push(self)
  end

  def self.all
    @@phones
  end

end
