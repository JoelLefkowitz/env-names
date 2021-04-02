{ name = "env-names"
, dependencies =
  [ "assert"
  , "console"
  , "effect"
  , "psci-support"
  , "strings"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}

