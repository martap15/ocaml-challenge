type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

(*ALF: Tuesday, Thursday, Friday
LIP: Wednesday, Thursday*)

let isLecture (d : weekday) (c : course) : bool =
  match (c, d) with
  | (ALF, Tu) | (ALF, Th) | (ALF, Fr) -> true
  | (LIP, We) | (LIP, Th) -> true
  | _ -> false
