require 'bundler'
require_relative 'models/phrase.rb'
Bundler.require

class PhraseApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/english' do
    erb :english
  end
  
  get '/spanish' do
    erb :spanish
  end
  
  get '/french' do
    erb :french
  end
 
  post '/eng-result' do
    primary_lang("English")
    second_lang(params[:language])
    @answer = phrase_choice(params[:phrases])
    erb :eng_result
  end
  
   post '/fra-result' do
    primary_lang("Français")
    second_lang(params[:language])
    @answer = phrase_choice(params[:phrases])
    erb :fra_result
  end
  
  post '/esp-result' do
    primary_lang("Español")
    second_lang(params[:language])
    @answer = phrase_choice(params[:phrases])
    erb :esp_result
  end
  
  #post '/result' do
    #@result_cat = meow_maker(params[:cat_string])
    #@result_dog = bark_maker(params[:dog_string])
    #erb :result
  #end
  

end