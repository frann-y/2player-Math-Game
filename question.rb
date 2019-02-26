class Question 
    def initialize
        #1st numthe @ gives access to the vars from this class
        @num1 = (rand() * 10).to_i
        #2nd num
        @num2 = (rand() * 10).to_i
        #answer
        @answer = @num1 + @num2
    end

    def is_correct?(user_input)
        @answer == user_input
    end

    def question (player_name)
        "#{player_name}: What does #{@num1} plus #{@num2} equal? "
    end

end

# the above function is better for others, just compares if it is correct or not


# #==============================================

# #Compare the response agains the answer?
