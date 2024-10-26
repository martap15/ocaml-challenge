let seven_eleven_doubles () : bool * int * int = 
  let d1 = Random.int 6 + 1 in 
  let d2 = Random.int 6 + 1 in 
  match (d1 + d2, d1, d2) with
  | (s, d1, d2) when s = 7 || s = 11 -> (true, d1, d2)
  | (_, x, y) when x = y -> (true, d1, d2)
  | _ -> (false, d1, d2);;