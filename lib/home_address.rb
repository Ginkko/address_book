class HomeAddress
  attr_reader(:street_address, :state, :city, :zip)

  def initialize(address)
    @street_address  = address.fetch(:street_address)
    @state = address.fetch(:state)
    @city = address.fetch(:city)
    @zip = address.fetch(:zip)

  end
end
