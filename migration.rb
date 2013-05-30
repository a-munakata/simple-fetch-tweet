require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "sqlite3",
  :database => "./data.sqlite",
)

class TweetCreation < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :text
      t.datetime :fetched_at
    end
  end
end

TweetCreation.new.up