# encoding: utf-8

require 'rubygems'

gem 'minitest'
require 'minitest/autorun'
require 'minitest/hell'

unless 'true' == ENV['TRAVIS']
  require 'simplecov'
  SimpleCov.start do
    add_filter '/spec/'
  end
end

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'greeb'

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each { |f| require f }
