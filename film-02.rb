# Let's take a different approach to film recommendations:

# create the same variables containing your potential film recommendations and then ask the user to rate their appreciation for:

# 1. documentaries
# 2. dramas
# 3. comedies

# on a scale from one to five.

# If they rate documentaries four or higher, recommend the documentary.
# If they rate documentaries 3 or lower but both comedies and dramas 4 or higher, recommend the dramedy.
# If they rate only dramas 4 or higher, recommend the drama.
# If they rate just comedies 4 or higher, recommend the comedy.
# Otherwise, recommend a good book.

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

def movie_selection(answer01, answer02, answer03)
  # documentaries only
  if answer01 >= 4 && answer02 < 4 && answer03 < 4
    puts "Here are five films I would recommend you to watch: #{doc_film}"

  # Dramedy only
  elsif answer01 <4 && answer02 >= 4 && answer03 >= 4
    puts "Here are the five films I would recommend you to watch: #{dramedy_film}"

  # Drama only
  elsif answer01 < 4 && answer02 >= 4 && answer03 < 4
    puts "Here are five films I would recommend you to watch: #{drama_film}"

  # Comedy Only
  elsif answer01 < 4 && answer02 < 4 && answer03 >= 4
    puts "Here are the five films I would recommend you to watch: #{comedy_film}"

  # ALL FILMS
  elsif answer01 >= 4 && answer02 >= 4 && answer03 >= 4
    puts "#{doc_film}, #{drama_film},#{dramedy_film}, #{comedy_film}"

  # Otherwise, recommend a book
  else
    puts "If you don't like these genres, then I would recommend reading a novel like Stephen King's IT"
  end

end
