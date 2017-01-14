; Allow unqualified imports from dotfiles folder
(source-directories '("." "~/.dotfiles/scheme/EOPL-Scheme"))

; Load EOPL-scheme on top of Chez Scheme
(load "chez-init.scm")
