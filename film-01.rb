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
].join("\n").upcase

# Drama Film
drama_film = [
  "The Godfather",
  "The Shawshank Redemption",
  "Schlindler's List",
  "Pulp Fiction",
  "12 Angry Men"
].join("\n").upcase

# Comedy Film
comedy_film = [
  "Rush Hour 2",
  "The Hangover",
  "Bridesmaids",
  "Mean Girls",
  "Austin Powers: International Man of Mystery"
].join("\n").upcase

# Dramedy Film
dramedy_film = [
  "Eternal Sunshine of the Spotless Mind",
  "500 Days of Summer",
  "Little Miss Sunshine",
  "Silver Linings Playbook",
  "The Breakfast Club"
].join("\n").upcase

############## QUESTIONS ###############
puts "I have three genres of films for you to choose.\nDo you like documentaries?"
answer01 = gets.chomp

puts "Do you like drama?"
answer02 = gets.chomp

puts "Do you like comedy?"
answer03 = gets.chomp

############# METHODS ##############

def movie_selection(reply01,reply02,reply03,genres01, genres02, genres03, genres04)
  # documentaries only
  if reply01 == "yes" && reply02 == "no" && reply03 == "no"
    puts "#{genres01}"

  #Dramedy only
elsif reply01 == "no" && reply02 == "yes" && reply03 == "yes"
    puts "Here are the five films I would recommend you to watch: #{genres02}"

  # Drama only
elsif reply01 == "no" && reply02 == "yes" && reply03 == "no"
    puts "Here are five films I would recommend you to watch: #{genres03}"

  # Comedy Only
elsif reply01 == "no" && reply02 == "no" && reply03 == "yes"
    puts "Here are the five films I would recommend you to watch: #{genres04}"

  # ALL FILMS
elsif reply01 == "yes" && reply02 == "yes" && reply03 == "yes"
    puts "DOCUMENTARIES FILM\n#{genres01}\n
DRAMA FILM\n#{genres02}\n
COMEDY FILM\n#{genres03}\n
DRAMEDY\n#{genres04}"

  else
    puts "If you don't like these genres, then I would recommend reading a novel like Stephen King's IT"
  end

end

movie_selection(answer01,answer02,answer03, doc_film, drama_film, comedy_film, drama_film)
