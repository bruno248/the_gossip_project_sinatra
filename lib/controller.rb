require 'bundler'
Bundler.require

require_relative 'gossip'
require 'gossip'
class ApplicationController < Sinatra::Base #classe qui hérite de la classe Sinatra
  get '/' do
    erb :index

  end
  get '/gossips/all/' do
    erb :index_all, locals: {gossips: Gossip.all} #passer une variable vers une view
  end

  get '/gossips/new/' do
    erb :new_gossip
  end
  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/' #redige vers l'accueil
  end  

  get '/gossips/:id' do 
    erb :show, locals: {gossips: Gossip.find(id)}
  end
end
