require('sinatra')
require('sinatra/reloader')

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

post('/contact_list') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')

  contact = Contact.new(first_name: first_name, last_name: last_name)
  contact.store()

  @contact_list = Contact.all()
  erb(:contact_list)
end
