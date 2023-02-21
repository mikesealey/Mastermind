$guesses = []
$win_condition = false
$a = false
$b = false
$c = false
$d = false

def create_code()
    $computer_code = []
    4.times do
        $computer_code.push(rand(6).to_s)
    end
    puts "Computer's code is #{$computer_code}" #delete later
end

def guess_getter()
    puts "\nplease enter your guess using numbers 0-5, no spaces"
    $user_guess = gets.chomp
    $guesses.push($user_guess.split(""))

    print "user_guess = #{$user_guess}\n" #delete later
    print "guesses = #{$guesses}\n" #delete later
end

def comparison()
    # correct/incorrect
    scoreboard = [$a, $b, $c, $d]

    i = 0
    while i < $computer_code.length
        if $guesses[-1][i] == $computer_code[i]
            scoreboard[i] = true
            puts "i = #{i}"
        end
        i += 1
    end

    print scoreboard

    if $a == true && $b == true && $c == true && $d == true
        $win_condition = true
        puts "win condition true"
        print scoreboard
    else
        puts "win condition false"
        puts scoreboard
    end
end

###########################################################

# Actual game takes place
create_code()
while $win_condition == false
    guess_getter()
    comparison()
end
puts "Game Over, Win condition has been met"