#lang plai

(require "practica2.rkt")

(print-only-errors)

#| Módulo para pruebas unitarias de la práctica 2 |#

;; Pruebas para funcion->string

(test (funcion->string (mul (cte 2) (x))) "(2 * x)")
(test (funcion->string (cte 2)) "2")
(test (funcion->string (x)) "x")
(test (funcion->string (sum (x) (cte 2))) "(x + 2)")
(test (funcion->string (pot (x) 2)) "(x ^ 2)")

;; Pruebas para evalua

(test (evalua (mul (cte 2) (x)) 1729) (mul (cte 2) (cte 1729)))
(test (evalua (sum (cte 2) (mul (x) (cte 2))) 2) (sum (cte 2) (mul (cte 2) (cte 2))))
(test (evalua (pot (x) 3) 4) (pot (cte 4) 3))
(test (evalua (div (x) (cte 5)) 4) (div (cte 4) (cte 5)))
(test (evalua (cte 3) 0) (cte 3))

;; Pruebas para deriva

(test (deriva (mul (cte 2) (x))) (sum (mul (cte 2) (cte 1)) (mul (x) (cte 0))))
(test (deriva (cte 10)) (cte 0))
(test (deriva (x)) (cte 1))
(test (deriva (pot (x) 2)) (mul (mul (cte 2) (pot (x) 1)) (cte 1)))
(test (deriva (pot (cte 2) 2)) (mul (mul (cte 2) (pot (cte 2) 1)) (cte 0)))

#| ... Aquí van las pruebas (Borrar este comentario) ... |#

;; Pruebas para verifica

#| ... Aquí van las pruebas (Borrar este comentario) ... |#

;; Pruebas para acepta?

#| ... Aquí van las pruebas (Borrar este comentario) ... |#

;; Pruebas para calc-a

#| ... Aquí van las pruebas (Borrar este comentario) ... |#

;; Pruebas para calc-c
(test (calc-c (cjto '(1 2 3))) (cjto '(1 2 3)))
(test (calc-c (esvacio? (cjto '()))) #t)
(test (calc-c (contiene? (cjto '(1 2 3)) 1)) #t)
(test (calc-c (agrega-c (cjto '(2 3)) 1)) (cjto '(1 2 3)))
(test (calc-c (union (cjto '(1 2 3)) (cjto '(4 5 6)))) (cjto '(1 2 3 4 5 6)))
