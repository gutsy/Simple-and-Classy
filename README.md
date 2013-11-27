Simple-and-Classy
=================

A simple, classy stub authentication service written in Ruby using Sinatra. Good for developing a login module (at least the start of one) when the client hasn't gotten their web service for authentication written yet.

You will need Ruby v2 or above and rubygems. 

You will need Sinatra (gem install sinatra).

You will need the JSON gem (gem install json).

You will need to start the service (ruby service.rb)

You will need to hit the url localhost:4567/user/username, where username is the user you wish to authenticate. 

You will recieve a JSON object back, containing name and permissions properties, like this: {"name":"testing1","permissions":"all"}. 

If permission property is null, then the user shouldn't have access. 

This is not very secure, it is not meant to be. It's simply a stub service to get you going on custom login modules until the actual web service will be built. 

Soon, this will be updated to take a JSON string instead of just a username, so you can fake out sending a username and password. 
