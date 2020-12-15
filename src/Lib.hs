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
  [ "Hey you, you're finally awake"                              -- Skyrim
  , "Ah shit, here we go again"                                  -- GTA San Andreas
  , "It’s a-me, Mario!"                                          -- Assassin's Creed II
  , "Nothing is more BADASS than treating a woman with RESPECT"  -- Borderlands 2
  , "Counter terrorists win"                                     -- Counter Strike
  , "FINISH HIM"                                                 -- Mortal Kombat
  , "Nothing is true, everything is permitted"                   -- Assassin's creed
  , "Waka Waka Waka"                                             -- Pacman
  , "Waste no more time arguing what a good man should be. Be one" -- Marcus Aurelius
  , "When life hands you a lemon, say, 'Oh yeah, I like lemons! What else ya got?'" -- Henry Rollins
  , "The hardest thing to do is to be true to yourself, especially when everybody is watching" -- Dave Chappelle
  , "You are not a drop in the ocean. You are the entire ocean in a drop" -- Rumi
  , "How many legs does a dog have if you call his tail a leg? Four. Saying that a tail is a leg doesn't make it a leg" -- Abraham Lincoln
  , "I have decided to stick with love. Hate is too great a burden to bear" -- Martin Luther King Jr.
  , "There are better places to take a nap than on the ground, you know?" -- Fire Emblem Awakening
  ]

atRandIndex :: [a] -> IO a
atRandIndex l = (l !!) <$> randomRIO (0, length l - 1)
