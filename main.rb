require 'sinatra'
require 'pry'
require 'sinatra/reloader'

get '/' do
    redirect "/99"
end

get '/:count' do
    # params[:count] = 99
    @current_count = params[:count].to_i
    @next_count = params[:count].to_i - 1

    erb :count
end

# binding.pry
