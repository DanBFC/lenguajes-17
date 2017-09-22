#lang plai

(require "grammars.rkt")

;; Analizador sintáctico para WAE.
;; Dada una s-expresión, regresa el árbol de sintaxis abstracta correspondiente, es decir, construye 
;; expresiones del tipo de dato abstracto definido en el archivo grammars.rkt
;; parse: s-expresion -> WAE.
(define (parse sexp)
  (cond
    [(id? sexp) sexp]
    [(num? sexp) sexp]
    [(op? sexp) build-WAE(op-args(sexp))]
    [(with? sexp) (build-bind (with-bindings(sexp))) (build-WAE (with-body(sexp)))]
    [(with*? sexp) (build-bind (with-bindings(sexp))) (build-WAE (with-body(sexp)))]
    ))

(define (build-WAE l)
  (if (empty? l) ('()) (cons (parse (car l)) (build-WAE (cdr l)) )))
(define (build-bind l)
  (if (empty? l) ('()) (cons (binding (with-bindings(car l)) (with-body(car l))) (build-bind (cdr l)) )))
