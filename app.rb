require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get "/say/:number/:phrase" do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []

    @n.times do |i|
      @phrase_array << @phrase
    end
    @phrase_array
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @x = params[:number1].to_i
    @y = params[:number2].to_i

    case @operation
    when "add"
      "#{@x + @y}"
    when "subtract"
      "#{@x - @y}"
    when "multiply"
      "#{@x * @y}"
    when "divide"
      "#{@x / @y}"
    end
  end
end