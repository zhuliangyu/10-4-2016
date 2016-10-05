require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

get ("/") do


  erb(:index, {:layout => :template})

end


post ("/") do
  name=params[:name]
  arr=name.split(",")
  max=arr.length
  lucky=Random.rand(max)
  @name=arr[lucky]



  erb(:index, {:layout => :template})

end
