{- |
   Module     : Data.IxSet.Typed.Hashable
   License    : MIT
   Stability  : experimental

Hashable instance for ixset-typed.
-}
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Data.IxSet.Typed.Hashable where

import Data.IxSet.Typed
import Data.Hashable

instance (Indexable ixs x, Hashable x) => Hashable (IxSet ixs x) where
  hashWithSalt n x = n `hashWithSalt` toList x
