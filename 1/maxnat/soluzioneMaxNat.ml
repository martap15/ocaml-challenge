let maxNat (a : int) (b : int) : int = 
  if (a < 0) || (b < 0) then failwith("This function always fails")
  else 
    if a > b then a 
    else b;; 

    