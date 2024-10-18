type vote = StrongReject | WeakReject | WeakAccept | StrongAccept
let decide_exam (vote1 : vote) (vote2 : vote) (vote3 : vote) : bool = 
  match (vote1, vote2, vote3) with 
  | (StrongReject, _, _) | (_, StrongReject, _) | (_, _, StrongReject) -> false
  | (WeakReject, WeakReject, _) | (_, WeakReject, WeakReject) | (WeakReject, _, WeakReject) -> false
  | _ -> true;;
