require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    @user = "Ian"

    erb :index
  end

  get '/profile' do
    erb :profile
  end

  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    orig_string = params["string"]
    @reversed_string = orig_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  end
end