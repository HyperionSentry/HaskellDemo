import Text.Show.Functions

--Las variables son incognitas no espacios de memoria
--f(x)=x*2
doble numero = numero * 2 

aprobo nota = nota >= 6

--notacion infija para operadores aritmeticos y de comparacion
-- 2+3 , 6/3 , 5 == 5
-- 2 + 3 --> (+) 2 3 conversion a notacion prefija

--Constanes
edadSeniorBurns = 120 
segundoNombre = "jay"

--Guardas, no ifs
--Pipelines alineados
max x y | x > y = x
        | otherwise = y
min a b | a < b = a
        | otherwise = b

--Composicion
--cuadruple numero = (doble.doble) numero
cuadruple = doble.doble -- simplifico los parametros y saco los parentesis

longitudPar :: [Char] -> Bool --Definicion de tipo de dato de funcion longitudPar
longitudPar = even.length
------------------------------------------------------------------------------------
--Defino un tipo de datos
--Tupla-> tipo de datos compusto, con elementos relacionados
type Persona = (String,Integer,String) --tupla de 3 elementos

laura :: Persona
laura = ("Laura",32,"Av. Libertador 747")

edad :: Persona -> Integer
edad (_,e,_) = e --Pattern Matching--

mayor18 :: Integer -> Bool
mayor18 ed = ed > 18

esMayor :: Persona -> Bool
esMayor = mayor18.edad

--Main> (not.esMayor) laura /// Main> (not.mayor18.edad) laura /// Puedo componer mientras que la imagen de mi funcion sea del mismo tipo que el domino de la proxima funcion

------------------------------------------------------------------------------------





