#!/usr/bin/env ruby

require 'csv'
require_relative '../app'

country = ARGV[0]
base_path = File.expand_path(File.dirname(File.expand_path(__FILE__)) + '/..')

CSV.foreach("#{base_path}/data/#{country}.txt") do |row|
  AnnualRate.create(country: country, year: row.first, rate: row.last)
end
