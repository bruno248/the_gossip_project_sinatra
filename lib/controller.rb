require 'bundler'
Bundler.require

require 'rack'

#require_relative 'gossip'

class ApplicationController < Sinatra::Base #classe qui hérite de la classe Sinatra
  get '/' do
   "<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>"
     #"<html><a href="/gossips/new/">tu peux aller créer ton potin ici</a><html>"

   #erb :index
   #erb :index, locals: {gossips: Gossip.all} #passer une variable vers une view

    
#     post '/gossips/new/' do
#       Gossip.new(params["gossip_author"] , params["gossip_content"]).save
#   puts "Salut, je suis dans le serveur"
#   puts "Ceci est le contenu du hash params : #{params}"
#   puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
#   puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
#   puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
#   redirect '/'
#end
  end
  #run! if app_file == $0 #exécute la classe #doublon avec config.ru

end
