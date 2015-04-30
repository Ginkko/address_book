require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/contact')
require('./lib/phone')
require('./lib/email')
require('./lib/home_address')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contact_add') do
  erb(:contact_add)
end

get('/contact_list') do
   erb(:contact_list)
end

get('/contact_find') do
    erb(:contact_find)
end

get('/contact_details') do
  @contact=Contact.find(params.fetch('id').to_i())
  erb(:contact_details)
end

post('/contact_add') do
    mobile_number = params.fetch('mobile_number')
    home_number = params.fetch('home_number')

    phone = Phone.new(mobile_number: mobile_number, home_number: home_number)
    phone.store()
binding.pry
    erb(:contact_add)
end


post('/contact_list') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  contact = Contact.new(first_name: first_name, last_name: last_name)
  mobile_number = params.fetch('mobile_number')
  home_number = params.fetch('home_number')
  phone = Phone.new(mobile_number: mobile_number, home_number: home_number)
  contact.add_phone(phone)
  contact.store()
  @contact_list = Contact.all()
  erb(:contact_list)
end
