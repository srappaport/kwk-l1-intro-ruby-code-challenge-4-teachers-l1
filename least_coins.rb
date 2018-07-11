def least(coin_values, change, known_results)
  mincoins = change
  if change.in?(coin_values) == true
    known_results[change]=1
  elsif known_results[change] >0
    puts known_results
  else
end
