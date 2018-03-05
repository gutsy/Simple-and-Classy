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

  email = data["email"]
  passwordSent = data["password"]
  password = fakeDB[email]
  success = passwordSent.eql? password

  {:success => success }.to_json
end

post '/register' do
  data = JSON.parse(request.body.read)
  email = data["email"]
  password = data["password"]
  #this is a mock, if there's data we "succeed"
  success = !((email.nil? || email.empty?) || (password.nil? || password.empty?))
  if success
    fakeDB[email] = password
  end
  {:success => success}.to_json
end
#just a test
