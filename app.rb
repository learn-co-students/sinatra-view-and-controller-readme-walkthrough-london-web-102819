require_relative "config/environment"

class App < Sinatra::Base
  get "/reverse" do
    erb :reverse
  end

  post "/reverse" do
    #puts params will print your hash in the console
    original_string = params["string"]
    @reversed_string = original_string.reverse #now it is instance variable and can be used in reversed.erb
    erb :reversed
  end

  get "/friends" do
    @friends = ["Emily Wilding Davison", "Harriet Tubman", "Joan of Arc", "Malala Yousafzai", "Sojourner Truth"]

    erb :friends
    # Write your code here!

  end
end
