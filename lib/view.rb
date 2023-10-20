require_relative 'controller'
require_relative 'router'

class View
    def initialize
        
    end

    def create_gossip
        puts "Quel est l'auteur de ton gossip ?"
        author = gets.chomp
        puts author
        puts "Balance ton gossip ici !"
        content = gets.chomp
        puts content

        return params = {author: author, content: content}

    end

    def index_gossips(gossips)
        gossips.each do |potin|
            puts "Auteur : #{potin.author}"
            puts "Potin : #{potin.content}"
            puts
        end
    end

end