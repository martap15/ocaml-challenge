let incr_opt (a : int option) : int option =
match (a) with 
| (Some a) -> Some (a + 1)
| (None) -> None;;