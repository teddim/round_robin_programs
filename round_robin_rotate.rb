## http://en.wikipedia.org/wiki/Round-robin_tournament
## Pairing day: Teddi Maull and Austin Adams

def pair_teams (team_array)
  pair = [team_array.first,team_array.last]
  if pair[0] != "buy" && pair[1] != "buy"
    puts "#{pair[0].strip} VS #{pair[1].strip}"
  end
  new_array = team_array[1..-2]
  if new_array.length > 1
    pair_teams(new_array)
  end
end

def shift_array
  @input_as_array = [@input_as_array.shift] + @input_as_array[0..-1].rotate(-1)
end

###MAIN PROGRAM
@input_as_array = ARGV.first.split(",")

if @input_as_array.length.even?
  number_of_rounds = @input_as_array.length - 1
else
  number_of_rounds = @input_as_array.length
  @input_as_array << "buy"
end

puts "World's Best Tournament"

number_of_rounds.times do |i|
# Print the round number and each match pairing
  puts ""
  puts "Round #{i+1}:"
  pair_teams(@input_as_array)
  shift_array

# If you want to see what the array looks like after each round, uncomment
# the line below.
# puts "#{@input_as_array}"
end
