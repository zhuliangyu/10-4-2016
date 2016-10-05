require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

$hash={}

get ("/") do


  erb(:index, {:layout => :template})

end

post("/") do
  name=params[:name]
  q1=params[:q1]
  q2=params[:q2]
  q3=params[:q3]
  result=""
  result<<q1
  result<<q2
  result<<q3


  # With deadline | Rational  | Ideas > Rational 000
  #
  # With deadline | Rational  | Facts > Guardian 001
  #
  # Without deadline | Rational  | Ideas > Rational 100
  #
  # Without deadline | Rational  | Facts > Artisan 101
  #
  # With deadline | Compassionate  | Ideas > Idealist 011
  #
  # With deadline | Compassionate  | Facts > Guardian 010
  #
  # Without deadline | Compassionate  | Ideas > Idealist 110
  #
  # Without deadline | Compassionate  | Facts > Artisan 111

  case result
    when "000"
      type="Rational"
      @url="01.png"
    when "001"
      type="Guardian"
    when "100"
      type="Rational"
    when "101"
      type="Artisan"
    when "011"
      type="Idealist"
    when "010"
      type="Guardian"
    when "110"
      type="Idealist"
    when "111"
      type="Artisan"




  end

  $hash[name]=type
  erb(:index, {:layout => :template})







end

