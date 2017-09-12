require ('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/riddler')

get('/') do
  erb( :input)
end
