require 'sinatra/base'
require './lib/diary'

class Diaryapp < Sinatra::Base 
  get '/' do
    'Hey Rhianna!'
  end

  get '/diary' do
    @Diary = Diary.all
    erb:'/diary'
  end

  run! if app_file == $0

end
