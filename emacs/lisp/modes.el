;; Mode-specific behavior.
;; Basic or generic behavior should go in preferences.

;; Use three spaces instead of two as offset in C mode.
(setq-default c-basic-offset 3)

;; Treat .h and .cu files as cpp files.
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
