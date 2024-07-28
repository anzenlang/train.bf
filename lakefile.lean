import Lake
open Lake DSL

package «bf» where
  -- add package configuration options here

lean_lib «Bf» where
  -- add library configuration options here

require zen from git
  "https://github.com/anzenlang/zen" @ "v4.9"

require «doc-gen4» from git
  "https://github.com/leanprover/doc-gen4" @ "v4.9.0"

@[default_target]
lean_exe bf where
  root := `Main
