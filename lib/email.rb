class Email
  attr_reader(:personal, :work)

def initialize(emails)
  @personal = emails.fetch(:personal)
  @work = emails.fetch(:work)

end

end
