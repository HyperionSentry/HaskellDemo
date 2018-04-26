import Text.Show.Functions
-- stack exec intero

data Persona = Persona {
    nombre_01 :: String,
    apellido_01 :: String,
    edad :: Int,
    fechaDeNacimiento :: (Int, Int),   
    parcialesAprobados :: [(String,Int)]
} deriving (Show)

data Inquilino = Inquilino {
    datosPersonales :: Persona,
    cantGatos :: Int,
    gatos :: [String],
    domicilio :: String 
} deriving (Show)

maria :: Persona
maria = Persona {
    nombre_01 = "Maria",
    apellido_01 = "Gutierrez",
    edad = 30,
    fechaDeNacimiento = (12,1),   
    parcialesAprobados = [("pdp",10),("SySL",9),("AS",9)]
}
inquilino_01 :: Inquilino
inquilino_01 = Inquilino {
    datosPersonales = maria,
    cantGatos = 3,
    gatos = ["pepe","pipo","papu"],
    domicilio ="Libertad 545"
}
-- Main> /(head.fst.head.parcialesAprobados.datosPersonales) inquilino_01
-- 'p'
--------------------------------------------------------------------------

--modelar un parcial
data Parcial = Parcial String Int deriving (Show)

parcialPdp :: Parcial
parcialPdp = Parcial "Pdp" 10

nombreParcial :: Parcial -> String
nombreParcial (Parcial n _) = n 

cantPreg :: Parcial -> Int
cantPreg (Parcial _ cant) = cant 

--modelar el criterio de estudio de los alumnos
type CriterioDeEstudio = Parcial -> Bool

data Alumno = Alumno {
    nombre :: String,
    apellido :: String,
    materias :: [String],
    legajo :: Integer,
    criterioDeEstudio :: CriterioDeEstudio
} deriving (Show)

estudioso :: CriterioDeEstudio
estudioso _ = True

hijoDelRigor :: Int -> CriterioDeEstudio
hijoDelRigor n (Parcial _ p) = p > n

cabulero :: CriterioDeEstudio
cabulero (Parcial materia _) = (even.length) materia

nico :: Alumno
nico = Alumno {
    nombre = "Nico",
    apellido = "Garcia",
    materias = ["Pdp","Proyecto"],
    legajo = 456456,
    criterioDeEstudio = estudioso
}

cambiarCriterioDeEstudio :: CriterioDeEstudio -> Alumno -> Alumno
cambiarCriterioDeEstudio nuevoCriterio alum = alum {criterioDeEstudio = nuevoCriterio}

estudia :: Parcial -> Alumno -> Bool
estudia par alu = (criterioDeEstudio alu) par