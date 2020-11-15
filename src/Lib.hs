module Lib
  ( randomQuote
  , quotes
  )
where
import           System.Random


randomQuote :: IO String
randomQuote = atRandIndex quotes

quotes :: [String]
quotes =
  [ "Hey you, you're finally awake"                             -- Skyrim
  , "Ah shit, here we go again"                                 -- GTA San Andreas
  , "It’s a-me, Mario!"                                         -- Assassin's Creed II
  , "Nothing is more BADASS than treating a woman with RESPECT" -- Borderlands 2
  , "Counter terrorists win"                                    -- Counter Strike
  , "FINISH HIM"                                                -- Mortal Kombat
  , "Nothing is true, everything is permitted"                  -- Assassin's creed
  , "Waka Waka Waka"                                            -- Pacman
  , "There are better places to take a nap than on the ground, you know?" -- Fire Emblem Awakening
  ]

atRandIndex :: [a] -> IO a
atRandIndex l = (l !!) <$> randomRIO (0, length l - 1)
