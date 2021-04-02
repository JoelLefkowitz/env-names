module Test.Main where

import Prelude
import Env (singleton, replaceLong, replaceShort, Alias(..), longEnv, shortEnv)
import Test.Assert (assertEqual)
import Effect (Effect)
import Data.Array (head)
import Effect.Console (log)
import Data.Maybe (fromMaybe)

devAlias = (Alias "dev" "development")

main :: Effect Unit
main = do
  assertEqual
    { actual: replaceLong "dev" devAlias
    , expected: "development"
    }
  assertEqual
    { actual: replaceLong "staging" devAlias
    , expected: "staging"
    }
  assertEqual
    { actual: replaceShort "development" devAlias
    , expected: "dev"
    }
  assertEqual
    { actual: replaceShort "staging" devAlias
    , expected: "staging"
    }
  assertEqual
    { actual: longEnv "dev"
    , expected: "development"
    }
  assertEqual
    { actual: longEnv "staging"
    , expected: "staging"
    }
  assertEqual
    { actual: shortEnv "development"
    , expected: "dev"
    }
  assertEqual
    { actual: shortEnv "staging"
    , expected: "staging"
    }
