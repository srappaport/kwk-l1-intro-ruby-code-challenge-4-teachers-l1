def least(coin_values, change, known_results)
  mincoins = change
  puts mincoins
  if coin_values.include?(change) == true
    known_results[change]=1
    binding.pry
  elsif known_results[change] > 0
    puts 'yo'
    puts known_results
    binding.pry
  else
    i = 0
    while i < change
      numcoins = 1 + least(coin_values,change-i, known_results)
      binding.pry
      if numcoins < mincoins
        mincoins = numcoins
        known_results[change] = mincoins
        i +=1
      end
    end
  end
end

least([1,2,5,25],29,[0]*30)
