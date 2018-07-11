def least(coin_values, change, known_results)
  mincoins = change
  puts mincoins
  if coin_values.include?(change) == true
    known_results[change]=1
  elsif known_results[change] > 0
    puts 'yo'
    puts known_results
  else
    while i < change
      numcoins = 1 + least(coin_values,change-i, known_results)
      if numcoins < mincoins
        mincoins = numcoins
        known_results[change] = mincoins
      end
    end
  end
end

least([1,3,4],6,[0]*7)
