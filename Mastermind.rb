$guesses = []
$win_condition = false

def create_code()
    $computer_code = []
    4.times do
        $computer_code.push(rand(6).to_s)
    end
    puts "Computer's code is #{$computer_code}" #delete later
end

def guess_getter()
    puts "please enter your guess using numbers 0-5, no spaces"
    $user_guess = gets.chomp
    $guesses.push($user_guess.split(""))

    print "user_guess = #{$user_guess}\n" #delete later
    print "guesses = #{$guesses}\n" #delete later
end

def comparison()
    if $guesses[-1] == $computer_code
        puts "Winner"
        $win_condition = true
    else
        puts "Not yet!"
    end
end

###########################################################

# Actual game takes place
create_code()
while $win_condition == false
    guess_getter()
    comparison()
end
