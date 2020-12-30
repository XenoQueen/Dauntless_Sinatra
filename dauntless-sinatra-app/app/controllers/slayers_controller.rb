class SlayersController < ApplicationController
    get '/login' do
        erb :login
    end

    post '/login' do
        @slayer = Slayer.find_by(username: params[:username])
        if @slayer.authenticate(params[:password])
            session[:slayer_id] = @slayer.id
            puts session
            redirect "slayers/#{@slayer.id}"
        else

        end
    end

    get '/signup' do

    end

    get '/slayers/:id' do
        "Welcome Slayer!"
    end
end