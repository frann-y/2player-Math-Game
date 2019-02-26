class Turn

    #who starts game first!!!
    def initialize (players)
        @players = players.shuffle
        
        #an array of players
        #must get players from game
        #shuffle array of players 
    end

    def current_player 
        #send back 1st element
        @players[0]
    end

    def next_turn
        #change order of the array
        #will always switch who's first
        @players.rotate!

    end
end