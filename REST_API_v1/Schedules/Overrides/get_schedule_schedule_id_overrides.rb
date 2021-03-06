#!/usr/bin/env ruby
# -*- coding: UTF-8 -*-

require 'httparty'

SUBDOMAIN = 'CHANGE_THIS'
API_TOKEN = 'CHANGE_THIS'
SCHEDULE_ID = 'PK6D3G2'
SINCE_DATE = '2014-07-02T01:00Z'
UNTIL_DATE = '2014-07-05T01:00Z'

ENDPOINT = "https://#{SUBDOMAIN}.pagerduty.com/api/v1/schedules/" \
           "#{SCHEDULE_ID}/overrides?since=#{SINCE_DATE}&until=#{UNTIL_DATE}"
TOKEN_STRING = "Token token=#{API_TOKEN}"

response = HTTParty.get(
  ENDPOINT,
  headers: {
    'Content-Type' => 'application/json', 'Authorization' => TOKEN_STRING
  }
)

puts response.body
