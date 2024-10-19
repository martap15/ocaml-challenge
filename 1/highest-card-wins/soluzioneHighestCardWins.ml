type card = Joker | Val of int;;

(*true = plyr
false = dlr*)

let win (cardPlayer: card) (cardDealer :card) : bool = 
  match (cardPlayer, cardDealer) with
  | Joker, Joker -> false 
  | Joker, _ -> true
  | _, Joker -> false
  | (Val v1, Val v2) ->
    if v1 < 1 || v1 > 10 || v2 < 1 || v2 > 10 then
      failwith "Error"
    else
      v1 > v2
