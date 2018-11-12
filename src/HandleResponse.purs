module HandleResponse where

type Post =
  { user :: Int
  , id :: Int
  , title :: String
  , body :: String
  }

newtype PostT = PostT
  { user :: Int
  , id :: Int
  , title :: String
  , body :: String
  }

handleResponse :: Post -> PostT
handleResponse p = p'
  where p' = PostT { user: 1, id: 2, title: "Foo", body: "Bar" }
