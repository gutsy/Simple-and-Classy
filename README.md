Simple-and-Classy
=================

A simple, classy stub authentication service written in Ruby using Sinatra. Good for developing a login module (at least the start of one) when the client hasn't gotten their web service for authentication written yet.

You will need Ruby v2 or above and rubygems. 

You will need Sinatra (gem install sinatra).

You will need Sinatra::Contrib (gem install sinatra-contrib).

You will need the JSON gem (gem install json).

You will need to start the service (ruby service.rb)

You can use the url localhost:4567/user/username, where username is the user you wish to authenticate in a browser to see what the JSON string should be coming back (this is a GET).

You can use a POST to hit the URL localhost:4567/login with a JSON object like  {"name":"testing1", "password":"whatever"}

You can test this with a CURL command: curl -i -X POST -d '{"name":"testing1", "password":"whatever"}' localhost:4567/login 

You will recieve a JSON object back, containing name and permissions properties, like this: {"name":"testing1","permissions":"all"}. 

If permission property is null, then the user shouldn't have access.

This web service is obviously not actually checking the password, as this is a stub.  

This is not very secure, it is not meant to be. It's simply a stub service to get you going on custom login modules until the actual web service will be built. 

Soon, this will be updated to take a JSON string instead of just a username, so you can fake out sending a username and password. 
