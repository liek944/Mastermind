COLORS = ["RED", "GREEN", "BLUE", "YELLOW", "ORANGE", "PURPLE"]
CODE_LENGTH = 4

def generate_secret_code
  Array.new(CODE_LENGTH) { COLORS.sample }
end

def get_player_guess
  puts "Enter your guess (4 colors from: #{COLORS.join(', ')}):"
  gets.chomp.upcase.split
end

def evaluate_guess(secret_code, player_guess)
  correct_positions = 0
  correct_colors = 0

  secret_code_copy = secret_code.dup
  player_guess_copy = player_guess.dup

  # Count correct positions
  CODE_LENGTH.times do |i|
    if secret_code[i] == player_guess[i]
      correct_positions += 1
      secret_code_copy[i] = nil
      player_guess_copy[i] = nil
    end
  end

  # Count correct colors in wrong positions
  player_guess_copy.each do |color|
    if color && secret_code_copy.include?(color)
      correct_colors += 1
      secret_code_copy[secret_code_copy.index(color)] = nil
    end
  end

  [correct_positions, correct_colors]
  
end

def game_loop
  secret_code = generate_secret_code
  attempts = 0
  max_attempts = 10

  puts "Welcome to Mastermind! Try to guess the secret code."

  while attempts < max_attempts
    player_guess = get_player_guess

    if player_guess.length != CODE_LENGTH || (player_guess - COLORS).any?
      puts "Invalid guess. Please enter exactly 4 colors from: #{COLORS.join(', ')}."
      next
    end

    attempts += 1
    correct_positions, correct_colors = evaluate_guess(secret_code, player_guess)

    if correct_positions == CODE_LENGTH
      puts "Congratulations! You've guessed the secret code: #{secret_code.join(', ')}"
      break
    else
      puts "#{correct_positions} colors are in the correct position."
      puts "#{correct_colors} colors are correct but in the wrong position."
      puts "Attempts left: #{max_attempts - attempts}"
    end
  end

  if correct_positions != CODE_LENGTH && attempts == max_attempts
    puts "\nSorry! You've used all your attempts."
    puts "The secret code was: #{secret_code.join(' ')}"
  end
end

game_loop


