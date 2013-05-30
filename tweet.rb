# encoding: utf-8

class Tweet < ActiveRecord::Base
  attr_accessible :fetched_at, :text

  def self.latest
    latest = Tweet.last
    latest = Tweet.create( text: Twitter.user_timeline( :count => 1 ).first.text, fetched_at: Time.now ) if latest.nil? || self.cached?( latest.fetched_at )
    latest
  end

  def self.cached?(time)
    return true if time.nil?
    Time.now - time > 1.hour
  end
end