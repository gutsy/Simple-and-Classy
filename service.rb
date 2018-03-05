require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'net/http'
require 'json'

fakeDB = {
  'testing1@email.com' => 'password',
  'testing2@email.com' => 'whatever',
  'testing3@email.com' => 'admin'
}

post '/login' do
  data = JSON.parse(request.body.read)

  name = data["name"]
  passwordSent = data["password"]
  password = fakeDB[name]
  success = passwordSent.eql? password

  {:success => success }.to_json
end

post '/register' do
  data = JSON.parse(request.body.read)
  username = data["email"]
  password = data["password"]
  #this is a mock, if the data we "succeed"
  success = !((username.nil? || username.empty?) || (password.nil? || password.empty?))
  {:success => success}.to_json
end
#just a test
