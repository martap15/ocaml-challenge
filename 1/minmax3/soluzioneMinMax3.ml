let minmax3 a b c =
  if a <= b && a <= c && b >= c then (a, b)
  else if a <= b && a <= c && c >= b then (a, c)
  else if b <= a && b <= c && a >= c then (b, a)
  else if b <= a && b <= c && c >= a then (b, c)
  else if c <= a && c <= b && a >= b then (c, a)
  else (c, b);;

