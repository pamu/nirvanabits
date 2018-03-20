{-# LANGUAGE CPP #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

module View.NotFound where

import Action
import Data.Proxy
import Miso
import Miso.String
import Model
import Routes
import Servant.API

notFoundPage :: View Action
notFoundPage =
  div_
    []
    [ text "Oops! Requested url not found!"
    , div_ [] [button_ [class_ "btn", onClick gotoHomePage] [text "go home"]]
    ]
