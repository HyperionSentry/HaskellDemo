import Text.Show.Functions

--Quiero sabers si una palabra tiene una cantidad par de letras
--Composicion

esPar :: String -> Bool
esPar palabra = (even.length) palabra

esImpar :: String -> Bool
esImpar palabra = (odd.length) palabra

--aplicacion parcial + simplificacion

siguiente :: Int -> Int
siguiente = (1+)

esIgualADos :: Int -> Bool
esIgualADos = (2==)

--Quiero sabes si un palabra empieza con p
--Coposicion y aplicacion parcial

empiezaConP :: String -> Bool
empiezaConP = ('p'==).head 

--Tuplas

type Persona_01 = (String, Int)

juan :: Persona_01
juan = ("Juan",32)

maria :: Persona_01
maria = ("Maria",17)

nombre_01 = fst
edad_01 = snd

--Tuplas de 3 elementos
--En las tuplas de 3 elementos no puedo usar fst y snd
--Para acceder a los elementos de las tuplas, utilizo pattern matching

type Persona_02 = (String,Int,String)

pedro :: Persona_02
pedro = ("Pedro",33,"Libertad 545")

laura :: Persona_02
laura = ("Laura",24,"Gallo 89")

nombre_02 :: Persona_02 -> String
nombre_02 (n,_ ,_) = n

edad_02 :: Persona_02 -> Int
edad_02 (_,e,_) = e

direccion_02 :: Persona_02 -> String
direccion_02 (_,_,d) = d

--Listas y funciones con listas

l1 = [1,2,3,4]
l2 = [1..10]
l3 = [10,9..0]
l4 = [1,3..16]
l5 = [(14,02,2017),(13,04,1986),(18,07,1985)]
l6 = [1,2..]

--length l1 -- take 3 l2 -- drop 4 l3 -- l1 ++ l2 -- sum l1 -- reverse l4 -- head l1 -- tail l2 --

dosPrimeros :: [a] -> [a]
dosPrimeros (x:y:_) = [x,y] 

--Datos definidos por el usuario
--Son mas representativos que las tuplas
--Record sintax, hace mas legible a la estructura y genera funciones propias para consultar propiedades

data Persona_03 = Persona_03 String Int String deriving (Show) -- instancia de Show (para ver por consola)

carlos :: Persona_03
carlos = Persona_03 "Carlos" 33 "Brazil 747" 

data Persona_04 = Persona_04 {
    nombre :: String,
    apellido :: String,
    edad :: Int,
    fechaDeNacimiento :: (Int,Int,Int),
    gatos :: [String],
    librosFavoritos :: [(String,Int)]
} deriving (Show)

miguel :: Persona_04
miguel = Persona_04 {
    nombre = "Miguel",
    apellido = "Garcia",
    edad = 25,
    fechaDeNacimiento = (15,01,1993),
    gatos = ["Pepe", "Michi", "Pocho"],
    librosFavoritos = [("Dracula",1897),("The last man",1826)]
}

------------------------------------------------------------------------
data Persona_05 = Gimnasta {nombre_05 :: String, fuerza_05 :: Int} deriving (Show)

agus :: Persona_05
agus = Gimnasta {nombre_05 = "Agus", fuerza_05 = 30}

vertical :: Persona_05 -> Persona_05
vertical per = per {fuerza_05 = fuerza_05 per + 20}

sumar10A :: (Int,Int,Int) -> (Int,Int,Int)
sumar10A (a,b,c) = (a+10,b,c)

--funcion que aplica una funcion a una tupla
aplica :: (Int->Int) -> (Int,Int,Int) -> (Int,Int,Int)
aplica f (num1, num2, num3) = (f num1, f num2, f num3) 

--Quiero saber cuanto me van a cobrar el estacionamiento, si la hora es de 50p y el minimo son 2 horas

costoEstacionamiento :: Integer -> Integer
costoEstacionamiento = (50 *). max 2

