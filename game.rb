require_relative './player'
require_relative './question'

class Game

    def initialize 
        #when intialize the game, want to create player
        @player1 = Player.new('Do') 
        @player2 = Player.new('Nut')

        #creating instance of players for turn class
        @turn = Turn.new([@player1, @player2])
    end 
    
    def play
        
        #create a loop
        while !(@player1.lives <= 0 || @player2.lives <= 0) do

            #need to track current user
            current_user = @turn.current_player

            @question = Question.new()#creating a new question instance
            puts @question.question(current_user.name) #outputs the question to the screen
            
            response = $stdin.gets.chomp.to_i

            if @question.is_correct?(response)
                puts "That's right!"
            else
                puts "TRAGIC! You lose a life!"
                current_user.loss_o_life #or call method that does it
            end
            #display status of the game
            puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
       
            #change the turn
            @turn.next_turn
       
        end

        puts "GAME OVER!"

    end

    
end        
        
        #puts current_user.lives
        


        #Display the question (loop until game over)

    #turns
        #in play method, do a while loop, check lives > 0 then play game
 #at 0 lives GAME OVER



