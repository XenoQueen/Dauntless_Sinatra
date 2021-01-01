require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "behemoth_hunt_board"
  end

  get "/" do
    if logged_in?
      redirect "/slayers/#{current_slayer.id}"
    else

    end
    erb :welcome
  end

  helpers do
    def logged_in?
      !!current_slayer
    end

    def current_slayer
      @current_slayer ||= Slayer.find_by(id: session[:slayer_id])
    end

    def authorized_to_edit?(behemoth)
      behemoth.slayer == current_slayer
    end
  end
end