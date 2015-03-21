## http://en.wikipedia.org/wiki/Round-robin_tournament
## Pairing day: Teddi Maull and Austin Adams

def pair_teams (team_array)
  pair = [team_array.first,team_array.last]
  puts "#{pair[0].strip} VS #{pair[1].strip}"
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
number_of_rounds = @input_as_array.length
puts "World's Best Tournament"

number_of_rounds.times do |i|
  # Print the round number and each match pairing
  puts ""
  puts "Round #{i+1}:"
  pair_teams(@input_as_array)
  shift_array
# puts "#{@input_as_array}"
end
