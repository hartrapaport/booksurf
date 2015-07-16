require 'bundler'

require_relative 'models/books.rb'
Bundler.require

class MyApp < Sinatra::Base
  
  
  get '/' do 
    erb :index
  end
  
    post'/results' do
    @book=params[:book]
    books(@book)
    erb :results
  end
end