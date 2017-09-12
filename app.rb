require ('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/riddler')

get('/') do
  erb( :input)
end

post('/output') do
  @answer1 = params.fetch("answer1")
  @answer2 = params.fetch("answer2")
  @answer3 = params.fetch("answer3")
  riddler = Riddler.new(@answer1, @answer2, @answer3)
  if riddler.is_answer?
    erb(:success_output)
  else
    erb(:failure_output)
  end
end
