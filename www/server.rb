require 'sinatra'
require 'haml'

get '/' do
  @file = File.realpath(params[:f] || ENV['PWD'])
  if File.directory? @file
    haml :index
  else
    haml :show
  end
end
