;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Preferences and modes goes in here.
(add-to-list 'load-path "~/.emacs.d/lisp")

;; Add modes folder.
(add-to-list 'load-path "~/.emacs.d/modes/")

;; Add themes folder.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Change backup file directory.
(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

;; I'v accidentally closed Emacs too many times now.
(add-to-list 'kill-emacs-query-functions
             (lambda () (y-or-n-p "Should Emacs really close?")))

;; Load my stuff.
(load-library "preferences")
(load-library "modes")
