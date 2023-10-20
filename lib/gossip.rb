require 'pry'
require 'csv'

class Gossip
    attr_reader :author, :content
    
    def initialize(author, content)
        @author = author
        @content = content
    end

    def save

        file_path = 'db/gossip.csv'

        CSV.open(file_path, 'a') do |csv|
            csv << [@author, @content]
        end
    end

    def self.all
        all_gossips = []
        file_path = 'db/gossip.csv'

        CSV.foreach(file_path) do |row|
            author = row[0]
            content = row[1]
            gossip_provisoire = Gossip.new(author, content)
            all_gossips << gossip_provisoire
        end

        return all_gossips
    end

end