module TP where
import Text.Show.Functions

--Punto 1--

data Microprocesador = Microprocesador { memoria :: [Integer], acumA :: Integer, acumB :: Integer, pc :: Integer, mensajeError :: String } deriving Show

xt8088 = Microprocesador {memoria=[], acumA= 0, acumB= 0, pc=0, mensajeError = ""}

--Punto 2--
type Instruccion = Microprocesador -> Microprocesador

nop :: Instruccion
nop microprocesador = microprocesador {pc = pc microprocesador + 1}
--NOP No operation, el programa sigue en la próxima instrucción, el program counter suma 1.

-- punto 2.2 en consola supongo que habria que poner >nop(nop(nop xt8088)) pero con composicion de funcion que no me esta saliendo 

--Punto 3--

lodv :: Integer -> Instruccion
lodv val microprocesador = microprocesador {acumA = val, pc = pc microprocesador + 1} 
--LODV val: Carga en el acumulador A el valor val

swap :: Instruccion
swap microprocesador = microprocesador {acumA = acumB microprocesador, acumB = acumA microprocesador, pc = pc microprocesador + 1}
--SWAP: Intercambia los valores de los acumuladores (el del A va al B y viceversa)

add :: Instruccion
add microprocesador = microprocesador {acumA = acumA microprocesador + acumB microprocesador, acumB = 0, pc = pc microprocesador + 1}
--ADD: Suma los valores de los dos acumuladores, el resultado queda en el acumulador A, el acumulador B debe quedar en 0


-- punto 3.2 >add(lodv 22(swap(lodv 10 xt8088)))

