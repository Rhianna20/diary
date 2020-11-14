require 'sinatra'
require './lib/diary'


class Diaryapp < Sinatra::Base
enable :sessions, :method_override

 delete '/diary/:id' do
  Diary.delete(id: params[:id])
  redirect '/bookmarks'
 end
  get '/' do
    'Hey Rhianna!'
  end

  get '/diary' do
    @Diary = Diary.all
    erb:'/diary'
  end
  get '/diary/new' do
    erb :"diary/new"
  end

  post '/diary' do
   Diary.create(word_otd: params[:word_otd], username: params[:username])
   p params
    redirect '/diary'
  end

  run! if app_file == $0

end
