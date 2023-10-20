require_relative 'controller'
require_relative 'gossip'

class Router
    attr_accessor :controller

    def initialize
        @controller = Controller.new
    end

    def perform

        while true
            puts "Qu'est ce que tu veux faire ?"
            puts "1 - créer un gossip"
            puts "2 - afficher les potins de malade"
            puts "4 - quitter l'app"
            answer = gets.chomp

            case answer
            when "1"
                puts "Tu as choisi de créer un gossip"
                @controller.create_gossip
            when "2"
                puts "Tu as choisi d'afficher tous les potins"
                @controller.index_gossip
            when "4"
                puts "Ciaooo !"
                break 
            else puts "Tu n'as pas renseigné de nombre proposé"
            end
        end
    end

end