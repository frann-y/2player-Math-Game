class Player
    #my get call
    attr_reader :lives, :name

    def initialize (name)
        @name = name
        @lives = 3
    end

    def loss_o_life 
        @lives -= 1
    end
end

#will create an instance 
 #of this class for each player later


 #*****
  
 #*****
 #need a current play var, when get val, in quesiton, question. is correct?
 #AAAAAAHHH
 
 #game shouldnt create the players ?! maybe 
 #main.rb create players who will play game and pass over
 #to the game