require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

# before do
# @history=[]
#
# end

$history=[]

get ("/add") do


  erb(:add, {:layout => :template})

end


post ("/add") do


  @num1=params[:num1].to_i
  @num2=params[:num2].to_i
  @oper=params[:oper]

  case @oper
    when "add"
      @result=@num1+@num2
      @oper_add="selected"
    when "minus"
      @result=@num1-@num2
      @oper_min="selected"

    when "times"
      @result=@num1*@num2
      @oper_time="selected"

    when "divide"
      @result=@num1.to_f/@num2
      @oper_divide="selected"

  end

  result=(@num1.to_s)<<(@oper.to_s)<<(@num2.to_s)
  # p result
  $history.push(result)


  erb(:add, {:layout => :template})




end
