# round_robin_programs
Austin and I worked together to come up with an algorithm for determining a round robin tournament schedule.

  ************************************************
The input is:
$:> ruby round_robin_rotate.rb "Alabama Cats, Florida Phillies, New Jersey Devils, South Dakota Dogs"

And the output should be:
  World's Best Tournament

  Round 1:
  Alabama Cats VS South Dakota Dogs
  Florida Phillies VS New Jersey Devils

  Round 2:
  Alabama Cats VS New Jersey Devils
  South Dakota Dogs VS Florida Phillies

  Round 3:
  Alabama Cats VS Florida Phillies
  New Jersey Devils VS South Dakota Dogs
  
  ************************************************
  
  Our Approach:
  * read the wikipedia page to learn what a round robin tournament is
  * Draw the problem on paper to see if there are any patterns that jump out at us
  * brainstorm possible ways we could solve the problem
  * research ruby methods that might help us solve the problem
  * have fun in irb exploring the various ruby methods
  * get frustrated and confused
  * laugh and give one another high fives when we figure it out :)
  
  Our Algorithm:
  * get the arguments from the command line and store them in an array
  * keep track of how many rounds are necessary based on the number of teams in the tournament
  * send the array to a recursive pairing method to pair the teams up for the current round
  * rotate the array of teams while keeping the first team fixed in place, and repeat the pairing
    process n times where n is the number of rounds needed
