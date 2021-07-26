class Gossip
require 'bundler'
Bundler.require

	attr_accessor :author, :content

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

	def self.find(id)
		i = 0
		CSV.read("./db/gossip.csv").each do |csv_line
		if i == id
			gossip_find = Gossip.new(csv_line[0], csv_line[1])
		end
			return gossip_find
				i +=1
			end
	end
	
end