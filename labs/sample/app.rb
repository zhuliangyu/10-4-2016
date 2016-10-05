require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

get ("/") do


  erb(:index, {:layout => :template})

end