function guessing_game(max::Integer)
    random_number = rand(1:100)  
    println("Guess a number between 1 and $max")
    while true
        user_input::String = readline()
        guess = parse(Int, user_input)
        if guess < random_number
            println("Too low")
        elseif guess > random_number
            println("Too high")
        else
            println("That's right!")
            break
        end
    end
end

guessing_game(100)


