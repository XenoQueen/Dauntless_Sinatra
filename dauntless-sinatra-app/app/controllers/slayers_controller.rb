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
            redirect '/login'
        end
    end

    get '/signup' do
        erb :signup
    end

    post '/slayers' do
        if params[:name] != "" && params[:username] != "" && params[:password] != ""
            @slayer = Slayer.create(params)
            session[:slayer_id] = @slayer.id
            redirect "/slayers/#{@slayer.id}"
        else
            redirect '/signup'
        end
    end

    get '/slayers/:id' do
        @slayer = Slayer.find_by(id: params[:id])
        erb :'/slayers/show'
    end

    get '/logout' do
        session.clear
        redirect '/'
    end
end