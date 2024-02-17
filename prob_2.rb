# Define the rooms and their points
rooms = {
  1 => 5,
  2 => 10,
  3 => 15
}

# Initialize total points collected by the player
total_points = 0

# Welcome message
puts "Welcome to the Adventure Game!"
puts "You have #{total_points} points."

# Main game loop
loop do
  # Prompt the player for their next room choice
  puts "Choose a room (1-3) to enter or 'exit' to end the game:"
  choice = gets.chomp.downcase

  # Exit the game if the player chooses to exit
  break if choice == 'exit'

  # Convert choice to an integer
  room_number = choice.to_i

  # Validate the room number
  unless rooms.key?(room_number)
    puts "Invalid room number. Please choose a room between 1 and 3."
    next
  end

  # Update total points based on the chosen room
  points = rooms[room_number]
  total_points += points

  # Display room entry message and earned points
  puts "You entered Room #{room_number} and earned #{points} points."
end

# Game over message with total points collected
puts "Game over! You collected a total of #{total_points} points."
