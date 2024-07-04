import Bf

def runLeanFib (ubound : Nat) : IO Unit :=
  for n in [0 : ubound + 1] do
    -- fibonacci definition from `Bf.Part0`, super fast
    let res := Zen.Train.Bf.Trash.fib n
    println! "fib {n} := {res}"

open Zen.Train.Bf in
def main (_args : List String) : IO Unit := do
  for n in [0:30] do
    let config : Rt.Config :=
        .allOff
        -- { Rt.Config.allOff with dbg := true }

    -- stack overflow :/
    let res ←
      Zen.Train.Bf.Std.fib.evalIOTo! [n] .head! config

    -- -- no stack overflow :)
    -- let res ←
    --   Zen.Train.Bf.Std.fib.fastEvalIOTo! [n] .head! config

    println! "fib {n} := {res}"
