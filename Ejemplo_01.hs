doble numero = numero * 2 
aprobo nota = nota >= 6
edadSeniorBurns = 120
segundoNombre = "jay"
max x y | x > y = x
        | otherwise = y
min a b | a < b = a
        | otherwise = b

cuadruple = doble.doble

longitudPar :: [Char] -> Bool
longitudPar = even.length
-----------------------------------
type Persona = (String,Integer,String)

laura :: Persona
laura = ("Laura",32,"Av. Libertador 747")

edad :: Persona -> Integer
edad (_,e,_) = e --Pattern Matching--

mayor18 :: Integer -> Bool
mayor18 ed = ed > 18

esMayor :: Persona -> Bool
esMayor = mayor18.edad



