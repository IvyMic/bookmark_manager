require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Bookmark Manager"
    erb :index
  end


  get '/bookmarks' do
    @bookmarks = Bookmark.all

    erb :bookmarks
  end

  post '/bookmarks' do
    @url = params[:bookmark_url]
    Bookmark.create(@url)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end