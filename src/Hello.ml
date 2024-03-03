let delay ms =
  Js.Promise.make (fun ~resolve ~reject:_ ->
    ignore (Js.Global.setTimeout ~f:(fun () -> (resolve true [@u])) ms))