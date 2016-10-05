require "sinatra"
require "sinatra/reloader" if development?
# require "faker"

get ("/") do

  erb(:index, {:layout => :template})

end

post ("/") do
  year=params[:year].to_i

  # if year>2010
  #  @status="future"
  # elsif year>2000
  #   @status="new"
  # elsif year>1990
  #   @status="old"
  # else
  #   @status="very old"
  #
  #
  # end

  case year
    when 2010
      @status="future"
    when 2000
      @status="new"
    when 1990
      @status="old"
    when 1980
      @status="very old"

  end
  erb(:index, {:layout => :template})
end