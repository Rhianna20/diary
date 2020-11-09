require 'sinatra/base'

class Diary
  gets '/' do
    'Hey Rhianna!'
  end

  run! if app_file = $0

end