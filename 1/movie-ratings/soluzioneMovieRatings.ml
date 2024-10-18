let movie_rating (vote1 : int) (vote2 : int) (vote3 : int) : string = 
  if vote1 < 1 || vote1 > 5 || vote2 < 1|| vote2 > 5 || vote3 < 1|| vote3 > 5 then failwith "Error"
  else match (vote1, vote2, vote3) with
  | (5, 5, 5) -> "Masterpice"
  | (5, 5, x) | (5, x, 5) | (x, 5, 5) when x >= 4 -> "Highly Recommended"
  | (x, y, z) when (x >= 4 && y >= 4 && z >= 3) || (x >= 4 && z >= 4 && y >= 3) || (y >= 4 && z >= 4 && x >= 3) -> "Recommended"
  | _ -> "Mixed Reviews";;