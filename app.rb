require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    p ENV

    @bookmark = Bookmark.all
    erb :list_of_bookmarks
  end

  get '/add-bookmark' do
    erb :add_bookmark
  end

  post '/new-bookmark' do
    Bookmark.create(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
