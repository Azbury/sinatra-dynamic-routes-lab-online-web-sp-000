require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse!}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num**2}"
  end

  get '/say/:number/:phrase' do
    counter = 0
    @num = params[:number].to_i
    @words = params[:phrase]
    @complete_phrase = ""
    while counter < @num
      @complete_phrase = @complete_phrase + @words
      counter += 1
    end
    "#{@complete_phrase}"
  end
end
