import Data.Char
dv :: String -> Char
dv = (!!) (cycle "0k987654321") . sum . zipWith (*) (cycle [2..7]) . map digitToInt . reverse

