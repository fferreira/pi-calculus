From stdpp Require Import base.
Require Export Autosubst.Autosubst.

Inductive proc :=
  | Recv (x : var) (P : {bind proc})
  | Send (x : var) (y : var) (P : proc)
  | Par (P : proc) (Q : proc)
  | Res (P : {bind proc})
  | Rep  (P : proc)
.
