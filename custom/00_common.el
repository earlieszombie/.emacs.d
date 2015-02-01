;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)
(global-set-key (kbd "M-(") "{")
(global-set-key (kbd "M-5") "[")

;; Don't show the startup screen
(setq inhibit-startup-message t)

;; Display line and column numbers
(setq line-number-mode t)
(setq column-number-mode t)

;; Make sure all backup files only live in one place
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; drag-stuff
(require 'drag-stuff)
(drag-stuff-mode t)
