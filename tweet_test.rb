require 'rubygems'
require 'active_record'
require './tweet'

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "./data.sqlite",
)

p Tweet.create({text: "hello, world"})