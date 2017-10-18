require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    @user.save
    if session[:user_id] = @user.id
      @user.username == params[:username] && @user["password"] == params["password"]
      redirect to '/account'
    else
      redirect to '/error'
    end
  end

  get '/account' do

  end

  get '/logout' do
    sessions.clear
  end


end
