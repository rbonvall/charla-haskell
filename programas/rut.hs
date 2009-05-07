import Data.Char

dv1 :: String -> Char
dv1 rut = 
  let revRut = reverse rut
      revDigits = map digitToInt revRut
      factors = cycle [2..7]
      products =
          zipWith (*) factors revDigits
      sumOfProducts = sum products
      digit = (11 - sumOfProducts) `mod` 11
  in digitToChar digit
  where digitToChar 10 = 'k'
        digitToChar  x = chr $ x + ord '0'

dv2 :: String -> Char
dv2 rut =
  let revDigits =
        map digitToInt $ reverse rut
      products =
        zipWith (*) (cycle [2..7]) revDigits
      digit = (11 - sum products) `mod` 11
  in "0123456789k" !! digit

dv3 :: String -> Char
dv3 rut = "0k987654321" !! ((sum $
             zipWith (*) (cycle [2..7]) $
             map digitToInt $
             reverse rut) `mod` 11)

dv4 :: String -> Char
dv4 rut = "0k987654321" !! ((
    (sum . zipWith (*) (cycle [2..7])
     . map digitToInt . reverse) rut)
    `mod` 11) 

dv5 :: String -> Char
dv5 rut = (cycle "0k987654321") !! (
    (sum . zipWith (*) (cycle [2..7])
     . map digitToInt . reverse) rut)

dv6 :: String -> Char
dv6 = (!!) (cycle "0k987654321")
      . sum . zipWith (*) (cycle [2..7])
      . map digitToInt . reverse

tests = [("11222333", '9')
        ,( "2173014", '9')
        ,( "2573503", 'k')
        ,("14230124", '5')
        ,( "2304117", '0')
        ]

main = putStrLn ""

