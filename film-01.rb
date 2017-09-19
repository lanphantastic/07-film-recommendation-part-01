# Think of a documentary, a drama, a comedy, and a dramedy. Store the titles of these films in variables. Ask the user if they enjoy the following genres:

# 1. documentaries
# 2. dramas
# 3. comedies.

# If they answer yes to documentaries, display a message recommending the documentary to them.
# If they answer no to documentaries but yes to dramas and comedies, recommend the dramedy.
# If they answer yes to only dramas, recommend the drama.
# If they say yes to only comedies, recommend the comedy.
# If they answer no to all three, recommend a good book instead.

# Documentary Film
film01 = "The Cove"
film02 = "Man on Wire"
film03 = "An Inconvenient Truth"
film04 = "Grizzly Man"
film05 = "March of the Penguins"

# Drama Film
film06 = "The Godfather"
film07 = "The Shawshank Redemption"
film08 = "Schlindler's List"
film09 = "Pulp Fiction"
film10 = "12 Angry Men"

# Comedy Film
film11 = "Rush Hour 2"
film12 = "The Hangover"
film13 = "Bridesmaids"
film14 = "Mean Girls"
film15 = "Austin Powers: International Man of Mystery"

puts "Which of the three genres do you like to watch: documentaries, dramas, or comedies?"
answer = gets.chomp
