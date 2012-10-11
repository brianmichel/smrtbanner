require 'sinatra'
require 'haml'

get '/' do
  puts "CATS"
  haml :index
end

post '/' do
  puts params[:appId]
  haml :index, :locals => {:appId => params[:appId], :appURL => params[:appURL]}
end

get '/url/:appId/:appURL' do
  puts params[:appId]
  puts params[:appURL]
end