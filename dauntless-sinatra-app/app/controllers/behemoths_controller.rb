class BehemothsController < ApplicationController

    get '/behemoths' do
        @behemoths = Behemoth.all
        erb :'behemoths/index'
    end

    get '/behemoths/new' do
        erb :'/behemoths/new'
    end

    post '/behemoths' do
        if !logged_in?
            redirect '/'
        end
        if params[:name] != ""
            @behemoth = Behemoth.create(name: params[:name], element: params[:element], slayer_id: current_slayer.id)
            redirect "/behemoths/#{@behemoth.id}"
        else
            redirect '/behemoths/new'
        end
    end

    get '/behemoths/:id' do
        set_behemoth
        erb :'/behemoths/show'
    end

    get '/behemoths/:id/edit' do
        set_behemoth
        if logged_in?
            if authorized_to_edit?(@behemoth)
                erb :'/behemoths/edit'
            else
                redirect "slayers/#{current_slayer.id}"
            end
        else
            redirect '/'
        end
    end

    patch '/behemoths/:id' do
        set_behemoth
        if logged_in?
            if authorized_to_edit?(@behemoth) && params[:name] != ""
                @behemoth.update(name: params[:name])
                redirect "/behemoths/#{@behemoth.id}"
            else
                redirect "slayers/#{current_slayer.id}"
            end
        else
            redirect '/'
        end
    end

    delete '/behemoths/:id' do
        set_behemoth
        if authorized_to_edit?(@behemoth)
            @behemoth.destroy
            redirect '/behemoths'
        else
            redirect '/behemoths'
        end
    end

    private

    def set_behemoth
        @behemoth = Behemoth.find(params[:id])
    end
end