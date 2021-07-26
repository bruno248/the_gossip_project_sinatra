class Gossip
require 'bundler'
Bundler.require

	attr_accessor:author, :content

	def initialize(author, content)
  		@author = author
  		@content = content
	end
	
	def save
    CSV.open("./db/gossip.csv", "ab") do |csv|
        csv << [@author, @content]
       	end
	end

	def self.all #méthode de classe entière (par exemple récupérer toutes les instances)
	all_gossips = []
			CSV.read("./db/gossip.csv").each do |csv_line|
    		all_gossips << Gossip.new(csv_line[0], csv_line[1])
			end
	return all_gossips
	end
	
end


  

# 	
# 	def self.erase(auteur) # revoir
# 	  all_gossips = []
#   file = File.foreach("./lib/db/gossip.csv") do |line|
#     if line.split(',')[0] == auteur
#     else
#     gossip_provisoire = Gossip.new(line.split(',')[0], line.split(',')[1])
#     all_gossips << gossip_provisoire
#     end
#   end
# #   file = File.open("./lib/db/gossip.csv", "w")
# #   all_gossips.each do |gossip|
# #     file.puts("#{gossip.author},#{gossip.content}")
# #   end
# #   file.close
#   end
# 	
# 	
#  end