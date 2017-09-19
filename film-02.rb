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
puts "I have three genres of films for you to rate between 1 and 5 where 1 is the lowest and 5 is the highest.\n What rating would you give for documentaries?"
answer01 = gets.chomp.to_i

puts "What about drama?"
answer02 = gets.chomp.to_i

puts "And what about comedy?"
answer03 = gets.chomp.to_i

############# METHODS ##############

def movie_selection(answer01, answer02, answer03,genres01, genres02, genres03, genres04)
  # documentaries only
  if answer01 >= 4 && answer02 < 4 && answer03 < 4
    puts "Here are five films I would recommend you to watch:\n#{genres01}"

  # Dramedy only
  elsif answer01 <4 && answer02 >= 4 && answer03 >= 4
    puts "Here are the five films I would recommend you to watch:\n#{genres02}"

  # Drama only
  elsif answer01 < 4 && answer02 >= 4 && answer03 < 4
    puts "Here are five films I would recommend you to watch:\n#{genres03}"

  # Comedy Only
  elsif answer01 < 4 && answer02 < 4 && answer03 >= 4
    puts "Here are the five films I would recommend you to watch:\n#{genres04}"

  # ALL FILMS
  elsif answer01 >= 4 && answer02 >= 4 && answer03 >= 4
    puts "DOCUMENTARIES FILM\n #{genres01}\n
      DRAMA FILM\n #{genres02}\n
      COMEDY FILM\n #{genres03}\n
      DRAMEDY\n #{genres04}"

  # Otherwise, recommend a book
  else
    puts "If you don't like these genres, then I would recommend reading a novel like Stephen King's IT"
  end

end

movie_selection(answer01,answer02,answer03, doc_film, drama_film, comedy_film, drama_film)
