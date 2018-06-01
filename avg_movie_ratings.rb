
=begin 

You have a hash of keys that are users and values that are hashes of their movie ratings (also in the form of a hash). 
The user’s movie ratings are also in a hash of key value pairs of movie names and ratings from 1 to 10. 
Create a hash containing the average ratings for each movies generated from the ratings made by all the users in the input.

=end


def avg_movie_ratings(user_ratings)

  movie_fq = Hash.new(0)
  ratings_sum = Hash.new(0)

  user_ratings.each do |name, movie|
    movie.each do |title, rating|

      if title == 'Avengers'
          movie_fq['Avengers'] +=1
          ratings_sum['Avengers'] += rating

      elsif title == 'Little Mermaid'
          movie_fq['Little Mermaid'] +=1
          ratings_sum['Little Mermaid'] += rating

      elsif title == 'Inception'
          movie_fq['Inception'] +=1
          ratings_sum['Inception'] += rating
      
      elsif title == 'Independence Day'
        movie_fq['Independence Day'] +=1
        ratings_sum['Independence Day'] += rating
      end 
    end 
  end 

  final_hash = Hash.new(0)

  movie_fq.each do |k,v|
    fq = movie_fq[k]
    total_ratings = ratings_sum[k]
    avg_rating = (total_ratings.to_f / fq)
    #print  "movie - #{k} ---- frequency #{fq}, -- total_times -- #{total_ratings} -- #{avg_rating}\n\n"
    final_hash[k] = avg_rating
  end   
 final_hash
end 


user_ratings = {
   "Ryan" => {"Avengers" => 8, "Little Mermaid" => 8, "Inception" => 9},
   "Clay" => {"Avengers" => 9, "Inception" => 10, "Independence Day" => 7},
   "Christine" => {"Avengers" => 9, "Little Mermaid" => 8, "Inception" => 7},
   "Jon" => {"Avengers" => 5, "Little Mermaid" => 2, "Inception" => 8},
   "David" => {"Avengers" => 3, "Inception" => 8, "Independence Day" => 6}
}


avg_movie_ratings(user_ratings) == {"Avengers"=>6.8, "Little Mermaid"=>6.0, "Inception"=>8.4, "Independence Day"=>6.5}
# true