require 'sinatra'
require 'sinatra/reloader' if development?

set :bind, '0.0.0.0'
set :port, 4567

get '/' do
  'Hello world!'
end