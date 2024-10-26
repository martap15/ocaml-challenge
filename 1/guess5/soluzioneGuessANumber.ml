let guess5 (n : int) : bool * int = 
  if n < 1 || n > 5 then 
    failwith "Error"
  else 
    match Random.int 5 + 1 with
    | r -> (n = r, r);;