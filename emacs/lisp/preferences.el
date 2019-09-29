;; Set up basic behavior.
;; Mode-specific behavior should go in modes.

(setq-default inhibit-startup-screen t    ; disable emacs startup screen
	      initial-scratch-message nil ; disable scratch msg
	      column-number-mode t        ; enable column numbers
	      fill-column 80
	      show-trailing-whitespace t
              indent-tabs-mode nil)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(global-hl-line-mode t) ; Highlight current row.

;; Current theme.
(load-theme 'charcoal-black t)

