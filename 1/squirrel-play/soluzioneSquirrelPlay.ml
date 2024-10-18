type season = Spring | Summer | Autumn | Winter

let squirrel_play (temperature : int ) (szn : season) : bool = 
  match (szn, temperature) with 
  | (Summer, x) when (x >= 15 && x <= 35) -> true
  | (_, y) when (y >= 15 && y <= 30) -> true
  | _ -> false;;

assert(squirrel_play 18 Winter = true);;
assert(squirrel_play 32 Spring = false);;
assert(squirrel_play 32 Summer = true);;
