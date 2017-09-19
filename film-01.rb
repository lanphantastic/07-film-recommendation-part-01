# Think of a documentary, a drama, a comedy, and a dramedy. Store the titles of these films in variables. Ask the user if they enjoy the following genres:

# 1. documentaries
# 2. dramas
# 3. comedies.

# If they answer yes to documentaries, display a message recommending the documentary to them.
# If they answer no to documentaries but yes to dramas and comedies, recommend the dramedy.
# If they answer yes to only dramas, recommend the drama.
# If they say yes to only comedies, recommend the comedy.
# If they answer no to all three, recommend a good book instead.

############ A LIST OF FILMS #############
# Documentary Film
doc_film = [
  "The Cove",
  "Man on Wire",
  "An Inconvenient Truth",
  "Grizzly Man", "March of the Penguins"
]

# Drama Film
drama_film = [
  "The Godfather",
  "The Shawshank Redemption",
  "Schlindler's List",
  "Pulp Fiction",
  "12 Angry Men"
]

# Comedy Film
comedy_film = [
  "Rush Hour 2",
  "The Hangover",
  "Bridesmaids",
  "Mean Girls",
  "Austin Powers: International Man of Mystery"
]

# Dramedy Film
dramedy_film = [
  "Eternal Sunshine of the Spotless Mind",
  "500 Days of Summer",
  "Little Miss Sunshine",
  "Silver Linings Playbook",
  "The Breakfast Club"
]

############## QUESTIONS ###############
puts "I have three genres of films for you to choose. Do you like documentaries?"
answer01 = gets.chomp

puts "Do you like drama?"
answer02 = gets.chomp

puts "Do you like comedy?"
answer03 = gets.chomp

############# METHODS ##############

# documentaries only
if answer01 == "yes" && answer02 == "no" && answer03 == "no"
  puts "Here are five films I would recommend you to watch: #{doc_film}"

# Dramedy only
elsif answer01 == "no" && answer02 == "yes" && answer03 == "yes"
  puts "Here are the five films I would recommend you to watch: #{dramedy_film}"

# Drama only
elsif answer01 == "no" && answer02 == "yes" && answer03 = "no"
  puts "Here are five films I would recommend you to watch: #{drama_film}"

# Comedy Only
elsif answer01 == "no" && answer02 == "no" && answer03 = "yes"
  puts "Here are the five films I would recommend you to watch: #{comedy_film}"

# ALL FILMS
elsif answer01 == "yes" && answer02 == "yes" && answer03 = "yes"
  puts "#{doc_film}, #{drama_film},#{dramedy_film}, #{comedy_film}"

else
  puts "If you don't like these genres, then I would recommend reading a novel like Stephen King's IT"
