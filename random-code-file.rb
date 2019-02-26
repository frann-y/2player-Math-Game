#Random Number code!!

#1st num
num1 = (rand() * 10).to_i
#2nd num
num2 = (rand() * 10).to_i
#answer
answer = num1 + num2

#==============================================

#Player Input
print "{PLAYER _}: What does #{num1} plus #{num2} equal? "
response = $stdin.gets.chomp.to_i

#==============================================

#Compare the response agains the answer?
if answer == response
    puts "That's right!"
else
    puts "TRAGIC! You lose a life!"
end

