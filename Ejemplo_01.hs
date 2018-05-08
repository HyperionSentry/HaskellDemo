import Text.Show.Functions

--Las variables son incognitas no espacios de memoria
--f(x)=x*2
doble numero = numero * 2 

aprobo nota = nota >= 6

--notacion infija para operadores aritmeticos y de comparacion
-- 2+3 , 6/3 , 5 == 5
-- 2 + 3 --> (+) 2 3 conversion a notacion prefija

--Constanes
edSeniorBurns = 120 
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
--Tupla-> tipo de datos compuesto, con elementos relacionados
type Pers = (String,Integer,String) --tupla de 3 elementos - Sinonimo de tipo

laura :: Pers
laura = ("Laura",32,"Av. Libertador 747")

ed :: Pers -> Integer
ed (_,e,_) = e --Pattern Matching--

mayor18 :: Integer -> Bool
mayor18 ed = ed > 18

esMayor :: Pers -> Bool
esMayor = mayor18.ed

--Main> (not.esMayor) laura /// Main> (not.mayor18.ed) laura /// Puedo componer mientras que la imagen de mi funcion sea del mismo tipo que el domino de la proxima funcion

------------------------------------------------------------------------------------

data Person = Person String Integer

carlos :: Person
carlos = Person "Carlos" 23

elNombre :: Person -> String
elNombre (Person n _) = n  --La sintaxis previamente definida no requiere los parentesis pero la funcion los necesita para delimitar el parametro recibido

laEdad :: Person -> Integer
laEdad (Person _ e) = e

-------------------------------------------------------------------------------------
--Record Sintax

data Persona = Persona {
        nombre :: String,
        apellido :: String,
        edad :: Int,
        domicilio :: String,
        fechaDeNacimiento :: (Int,Int,Int)        
} deriving (Show)

juan = Persona {
        nombre = "Juan",
        edad = 29,
        apellido = "Acosta",
        domicilio ="Caseros 152",
        fechaDeNacimiento =(12,05,1989)
} 



