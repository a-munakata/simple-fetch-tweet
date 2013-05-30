require 'rubygems'
require 'sinatra'
require 'twitter'
require 'active_record'
require './tweet.rb'

Twitter.configure do |config|
  config.consumer_key = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret = ENV["TWITTER_CONSUMER_SECRET"]
  config.oauth_token = ENV["TWITTER_ACCESS_TOKEN"]
  config.oauth_token_secret = ENV["TWITTER_ACCESS_SECRET_TOKEN"]
end

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "./data.sqlite",
)

get '/' do
  Tweet.latest.text
end


