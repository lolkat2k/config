;; standard settings

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq-default inhibit-startup-screen t    ; disable emacs
					  ; startup screen
	      initial-scratch-message nil ; disable scratch msg
	      column-number-mode t        ; enable column numbers
	      fill-column 80              ; wrap lines at column 60
	      show-trailing-whitespace t  ; duh
	      )

; only use spaces
(setq-default indent-tabs-mode nil)

; by default emacs treats .h files as c files, change this them to be treated as cpp files.
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

; change indentation for c++-mode to three spaces
;; (defun my-c++-mode-hook ()
;;   (c++-set-offset . 3))
;; (add-hook 'c++-mode-hook 'my-c++-mode-hook)
(setq-default c-basic-offset 3)

;; ; themes folder
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

(load-theme 'charcoal-black t)

; change backup file directory
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

; line numbers in left side
; (global-linum-mode t)

; highlight current line
(if window-system
    (global-hl-line-mode t))

; add Futhark mode
;(add-to-list 'load-path "/home/sune/data/futhark/tools")
;(require 'futhark-mode)

; add common modes folder
(add-to-list 'load-path "/home/sune/.emacs.d/modes/")

;(require 'fasto-mode)   ; add fasto mode
;(require 'opencl-mode)  ; add opencl mode
;(add-to-list 'auto-mode-alist '("\\.cl\\'" . opencl-mode))
;(require 'cuda-mode)    ; add cuda mode
;(add-to-list 'auto-mode-alist '("\\.cu\\'" . cuda-mode))

(tool-bar-mode -1) ; disable tool bar
(menu-bar-mode -1) ; disable menu bar
(scroll-bar-mode -1) ; disable scroll-bar

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(package-selected-packages
   (quote
    (solarized-theme csharp-mode fsharp-mode go-mode haskell-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(add-to-list 'kill-emacs-query-functions
             (lambda () (y-or-n-p "Should Emacs really close?")))
