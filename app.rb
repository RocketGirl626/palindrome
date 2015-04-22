require('sinatra')
require('sinatra/reloader')
require('./lib/palindrome')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/palindrome_answer') do
  @string = params.fetch('string').palindrome()
  erb(:palindrome_answer)
end
