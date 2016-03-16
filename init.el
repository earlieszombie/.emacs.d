;; emacs env settings
(menu-bar-mode -1)
(desktop-save-mode 1)
;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'alt)
  (setq mac-command-modifier 'meta)
  ;; French mac keyboard annoyances
  (global-set-key (kbd "A-/") "\\")
  (global-set-key (kbd "A-5") "\[")
  (global-set-key (kbd "A-°") "\]")
  (global-set-key (kbd "A-(") "\{")
  (global-set-key (kbd "A-)") "\}")
  (global-set-key (kbd "A-n") "\~")
  (global-set-key (kbd "A-$") "\€")
  (global-set-key (kbd "A-ç") "\Ç")
  ;; regexp search
  (global-set-key (kbd "M-?") 'query-replace-regexp)
  ;; sets fn-delete to be right-delete
  (global-set-key [kp-delete] 'delete-char)) 

;; 1. install cask via homebrew
;; 2. link ~/.cask to /usr/local/opt/cask
;; 3. M-x package-install RET pallet RET
;; 4. M-X pallet-install
;; (from http://goo.gl/MXCyf4)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; Enabling vim-like powerline
(require 'powerline)
(powerline-default-theme)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "00_common.el")
(load "01_autocomplete.el")
(load "02_rcodetools.el")
(load "03_theme.el")
(load "04_ruby.el")
(load "05_smartparens.el")
(load "06_drag-stuff.el")
(load "07_compile.el")
(load "08_ledger.el")

(cd "~/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" default)))
 '(display-battery-mode t)
 '(tool-bar-mode nil))

(set-default-font "Roboto Mono Light for Powerline")
(set-face-attribute 'default (selected-frame) :height 140)
(setq initial-frame-alist
      '(
	(width . 177)
	(height . 54) ))
