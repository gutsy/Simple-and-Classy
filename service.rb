require 'rubygems'
require 'sinatra'
require 'sinatra/json'
require 'net/http'
require 'json'

fakeDB = {
	'testing1' => 'all',
	'testing2' => 'mining',
	'testing3' => 'truck'
}

get '/user/:name' do

	name = params[:name]
	permission = fakeDB[name]

	content_type :json
    { :name => name, :permissions => permission }.to_json
end 

post '/login' do
	data = JSON.parse(request.body.read)
	name = data["name"]
	permission = fakeDB[name]
	{ :name => name, :permissions => permission }.to_json
end

