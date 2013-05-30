simple-fetch-tweet
==================

## Setup

1. set environment variables

```
ENV["TWITTER_CONSUMER_KEY"]
ENV["TWITTER_CONSUMER_SECRET"]
ENV["TWITTER_ACCESS_TOKEN"]
ENV["TWITTER_ACCESS_SECRET_TOKEN"]
```

2. create database

```
$ ruby migration.rb
```

## Usage

```
$ rackup
```