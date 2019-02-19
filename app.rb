require "sinatra"
require "sinatra/reloader" if development?
require 'mongoid'


# DB Setup
Mongoid.load! "./config/mongoid.config"

#Models
require "./app/models/post.rb"
require './app/models/comment.rb'

#Controlleurs
require "./app/routes/indexRoute.rb"
require "./app/routes/postRoute.rb"
require "./app/routes/commentRoute.rb"







