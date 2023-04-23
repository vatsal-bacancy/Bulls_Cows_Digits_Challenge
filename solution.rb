def bulls_cows_digits
  sherlock_guess = '5362'
  sherlock_guess_arr = sherlock_guess.chars

  100.times do |_i|
    guess = gets.chomp.chars

    if guess.count != guess.uniq.count
      puts 'Wrong Answer!'
      next
    end

    pairs = sherlock_guess_arr.zip(guess)
    same_position_count = pairs.count { |x, y| x == y }

    same_elements_count = (sherlock_guess_arr - (sherlock_guess_arr - guess)).count

    cows_count = same_elements_count - same_position_count
    bulls_count = same_position_count

    puts "#{bulls_count} #{cows_count}"
    break if cows_count.zero? && bulls_count == 4
  end
end

bulls_cows_digits
