;; compatibility file for chez scheme

;; save the nicer chez behavior
(define chez-printf printf)
(define chez-pretty-print pretty-print)

;; a definition of atom? that works as specified by Friedman and Felleisen
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(load "~/.dotfiles/scheme/EOPL-Scheme/R5rs.scm")
 
;; use the nicer chez behavior for these
(set! sllgen:pretty-print chez-pretty-print)
(set! eopl:pretty-print chez-pretty-print)
(set! define-datatype:pretty-print chez-pretty-print)

;; make error stop invoke the debugger
(define eopl:error-stop break)

(load "~/.dotfiles/scheme/EOPL-Scheme/sllgen.scm")
(load "~/.dotfiles/scheme/EOPL-Scheme/define-datatype.scm")
(load "~/.dotfiles/scheme/EOPL-Scheme/test-harness.scm")
(load "~/.dotfiles/scheme/EOPL-Scheme/test-suite.scm")
