Simple-and-Classy
=================

A simple, classy stub authentication service written in Ruby using Sinatra. Good for developing a login module (at least the start of one) when the client hasn't gotten their web service for authentication written yet.

You will need Ruby v2 or above and rubygems.

You will need Sinatra (gem install sinatra).

You will need Sinatra::Contrib (gem install sinatra-contrib).

You will need the JSON gem (gem install json).

You will need to start the service (ruby service.rb)

You can use a POST to hit the URL localhost:4567/login with a JSON object like  {"name":"testing1@email.com", "password":"admin"}

You can test this with a CURL command:    
curl -i -X POST -d '{"email":"testing4@email.com", "password":"admin"}' localhost:4567/login

You will recieve a JSON object back, containing success, like this: {"success":true} if the password sent matches the user's password.

You can register with a similar call to /register with the same kind of JSON object. It will simply return true if both fields are there.

curl -i -X POST -d '{"email":"testing4@email.com", "password":"admin"}' localhost:4567/register

NOTE: "new" accounts will not persist once Sinatra is shut down, as it's not using a real database. Maybe I'll get around to hooking this up to MongoDB or something someday.

This is not very secure, it is not meant to be. It's simply a stub service to get you going on custom login modules until the actual web service will be built.
