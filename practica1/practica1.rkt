#lang plai

#| Práctica 1: Introducción a Racket |#

;; Función que toma dos números enteros positivos y eleva uno al otro, para luego sumar las raíces
;; cuadradas de éstos.
;; rps: number number -> number
(define (rps a b)
   (+ (sqrt (expt a b)) (sqrt (expt b a))))
   ;;(error 'rps "Función no implementada"))

;; Función que encuentra el área de un tirángulo dados sus lados, usando la fórmula de Herón. Se usa
;; la primitiva let para evitar cálculos repetitivos.
;; area-heron: number number number -> number
(define (area-heron a b c)
   (let ([s (/ (+ a b c) 2)])
     (sqrt (* s (- s a) (- s b) (- s c)))))
   ;(error 'area-heron "Función no implementada"))

;; Predicado que determina si la pareja a b entará en el antro usando condicionales. La respuesta de 
;; el predicado está dada de acuerdo a lo siguiente:
;; "Si el estilo de los asistentes es de ocho o más, el predicado responderá 'si con la excepción de
;;  que si el estilo de alguno de los asistentes es de dos o menos, responderá 'no. En otro caso,
;;  responderá 'quiza."
;; entra?: number number -> symbol
(define (entra? a b)
   (cond
     [(or (<= a 2) (<= b 2)) 'no]
     [(or (>= a 8) (>= b 8)) 'si]
     [else 'quiza]))
   ;(error 'entra? "Función no implementada"))

;; Función recursiva que regresa el número de apariciones del dígito m como digito en el número 
;; entero positivo n.
;; apariciones: number number -> number
(define (apariciones n m)
   (cond
     [(zero? n) 0]
     [else (+ (if(= (modulo n 10) m) 1 0)
              (apariciones (truncate (/ n 10)) m))]))
   ;(error 'apariciones "Función no implementada"))

;; Función recursiva que calcula el número de pares de una cadena. Decimos que un par en una cadena
;; son dos caracteres idénticos, separados por un tercero. Por ejemplo "AxA" es el par de "A". Los
;; pares, además, pueden anidarse, por ejemplo.
;; cuenta-pares: string -> number
(define (cuenta-pares c)
   (cond
     [(< (string-length c) 3) 0]
     [else (+ (if (equal? (string-ref c 0) (string-ref c 2)) 1 0)
              (cuenta-pares (substring c 1)))]))
   ;(error 'cuenta-pares "Función no implementada"))



;; Función auxiliar que imprime una pirámide en pantalla recursivamente.
;; print-piramide number number -> void
(define (print-piramide n m)
   (cond
     [(zero? n) (display (build-string m (lambda (i) (integer->char 42))))]
     [else (display (string-append (build-string n (lambda (i) (integer->char 32)))
                                   (build-string m (lambda (i) (integer->char 42))) "\n"))
           (print-piramide (- n 1) (+ m 2))]))

;; Función que imprime una piramide con n pisos haciendo uso de alguna función de impresión.
;; piramide: number -> void
(define (piramide n)
   (print-piramide (- n 1) 1))

;; Función que recibe dos listas y construye una nueva lista con listas de longitud 2 formadas a 
;; partir de los elementos de ambas listas.
;; arma-pares: list list -> (listof list)
(define (arma-pares lst1 lst2)
   (cond
     [(equal? lst1 '()) empty]
     [else (cons (list (car lst1) (car lst2)) (arma-pares (cdr lst1) (cdr lst2)))]))
   ;(error 'arma-pares "Función no implementada"))

;; Función que recibe una lista con elementos de la forma '(id value) y regresa el valor asociado al
;; id que fue pasado como parámetro.
;; lookup: (listof list) -> any
(define (lookup id lst)
   (cond
     [(equal? (car (car lst)) id) (car (cdr (car lst)))]
     [else (lookup id (cdr lst))]))
   ;(error 'lookup "Función no implementada"))

;; Función que compara la longitud de las listas lst1 y lst2. El valor de regreso son alguno de los 
;; siguientes:
;; · 'lista1-mas-grande
;; · 'lista2-mas-grande
;; · 'listas-iguales
;; compara-longitud: list list -> symbol
(define (compara-longitud lst1 lst2)
   (error 'compara-longitud "Función no implementada"))

;; Función que entierra el símbolo nombre, n número de veces. Es decir, se anidan n - 1 listas hasta
;; que se llega a la lista que tiene al símbolo nombre.
;; entierra: symbol number -> list
(define (entierra nombre n)
   (cond
     [(= n 0) nombre]
     [else (list (entierra nombre (- n 1)))]))
   ;(error 'entierra "Función no implementada"))

;; Función que que mezcla dos listas ordenadas obtieniendo una nueva, ordenada de manera ascendente.
;; mezcla: list list -> list
(define (mezcla lst1 lst2)
   (error 'mezcla "Función no implementada"))

;; Función que recibe una lista de números y regresa una nueva lista de cadenas que representan al
;; número binario asociado a estos números.
;; binarios: (listof number) -> (listof string)
(define (binarios lst)
   (error 'binarios "Función no implementada"))

;; Función que recibe una lista y regresa una nueva conteniendo únicamente aquellos que son 
;; triangulares.
;; triangulares: (listof number) -> (listof number)
(define (triangulares lst)
   (error 'triangulares "Función no implementada"))

;; Función que, usando foldr, intercala un símbolo dado entre los elementos de una lista.
;; intercalar: list symbol -> list
(define (intercalar lst s)
   (error 'intercalar "Función no implementada"))

;; Función que, usando foldl, intercala un símbolo dado entre los elementos de una lista.
;; intercalal: list symbol -> list
(define (intercalal lst s)
   (error 'intercalal "Función no implementada"))
