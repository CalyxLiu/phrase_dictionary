#require 'bundler'
require_relative 'models/phrase.rb'
#Bundler.require

class PhraseApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  #get '/about' do
    #erb :about
  #end
  
  #post '/result' do
    #@result_cat = meow_maker(params[:cat_string])
    #@result_dog = bark_maker(params[:dog_string])
    #erb :result
  #end

end