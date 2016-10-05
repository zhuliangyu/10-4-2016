require "sinatra"
require "sinatra/reloader" if development?
require "faker"

get ("/") do
  @company=Faker::Name.name

  erb(:index, {:layout => :template})
  # return @hi="asd"

end

get("/about") do
  # p @hi
  erb(:about, {:layout => :template})
end

post ("/about") do

  @name=params[:name]
  @age=params[:age]

  erb(:about, {:layout => :template})


end

get "/add" do

  erb(:add, {:layout => :template})

end

post "/add" do
  @num1=params[:num1].to_i
  @num2=params[:num2].to_i
  @oper=params[:oper]

  if @oper=="add"
    @result=@num1+@num2
    @oper_add="selected"
  else
    @result=@num1-@num2
    @oper_min="selected"

  end


  erb(:add, {:layout => :template})

end
