require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

get ("/fizzbuzz") do


  erb(:index, {:layout => :template})

end


post("/fizzbuzz") do
  num1=params[:number1]
  num2=params[:number2]

  @arr=[1,2,3]


  erb(:index, {:layout => :template})
end