require 'sinatra'
require 'sinatra/namespace'
require 'sinatra/base'

namespace '/api/v1' do
  get '/jobs' do
    'Jobs'
  end
end
