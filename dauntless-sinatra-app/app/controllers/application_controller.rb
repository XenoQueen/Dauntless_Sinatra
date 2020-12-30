require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "behemoth_hunt_board"
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!current_slayer
    end

    def current_slayer
      @current_slayer ||= Slayer.find_by(id: session[:slayer_id])
    end
  end
end