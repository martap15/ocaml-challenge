let mux1 (s0 : bool) (a : bool) (b : bool) : bool = 
  (s0 && a) || ((not s0) && b);;

let mux2 (s0 : bool) (a : bool) (b : bool) : bool = 
  if s0 then a
  else b;;

let mux3 (s0 : bool) (a : bool) (b : bool) : bool = 
  match (s0, a, b) with 
  | (true, true, _) -> true 
  | (true, false, _) -> false
  | (false, _, true) -> true
  | (false, _, false) -> false;;

let mux4 (s1 : bool) (s0 : bool) (a0 : bool) (a1 : bool) (a2 : bool) (a3 : bool) : bool = 
  match (s1, s0) with 
  | (true, true) -> a3
  | (true, false) -> a2
  | (false, true) -> a1
  | (false, false) ->a0;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;

let mux (s1 : bool) (s0 : bool) (a0 : bool) (a1 : bool) (a2 : bool) (a3 : bool) : bool =
  mux1 s1 (mux1 s0 a3 a2) (mux1 s0 a1 a0);;

assert(mux false false false true false true = false);;
assert(mux false true false true false true = true);;
assert(mux true false false true false true = false);;
assert(mux true true false true false true = true);;
