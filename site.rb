require 'rubygems'
require 'sinatra'

get '/' do
	#@title = 'Hello'
	erb :index
end

post '/getlinks' do 

	@username = params[:name]
	erb :links, :layout => false
end
