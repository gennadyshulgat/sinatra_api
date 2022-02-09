# myapp.rb
require 'sinatra'
require 'json'

get '/' do
  'Hello world!'
end

get '/test' do
  'i am text from another action'
end

post '/body' do
  body = { a: 1, b: 2 }

  body.to_json
end

post '/sum' do
  array = JSON.parse(request.body.read)

  return array.inject(0){|sum,x| sum + x }.to_json
end

post '/string_twice' do
  string_twice = JSON.parse(request.body.read)
  a = string_twice[0]
  b = string_twice[1]

  return (a+" "+b).to_json
end