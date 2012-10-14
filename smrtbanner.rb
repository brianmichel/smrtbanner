require 'sinatra'
require 'haml'

set :public_folder, 'public'

get '/' do
  puts "CATS"
  erb :index, :locals => {:appId => 552293383, :appURL => "none"}
end

post '/' do
  puts params[:appId]
  erb :index, :locals => {:appId => params[:appId], :appURL => params[:appURL]}
end