require 'sinatra'
require_relative './day'

get '/' do
    greeting(Time.now)
end