class BehemothsController < ApplicationController
    get '/behemoths/new' do
        erb :'/behemoth_entries/new'
    end

    post '/behemoths' do
        if !logged_in?
            redirect '/'
        end
        if params[:element] != ""
            @behemoth = Behemoth.create(element: params[:element], slayer_id: current_slayer.id)
            redirect "/behemoths/#{@behemoth.id}"
        else
            redirect '/behemoths/new'
        end
    end

    get '/behemoths/:id' do
        @behemoth = Behemoth.find(params[:id])
        erb :'/behemoths/show'
    end
end