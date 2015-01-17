;; emacs env settings
(menu-bar-mode -1)
(setq mac-control-modifier 'control)
(setq mac-option-modifier 'meta)
(set-keyboard-coding-system nil)

;; 1. install cask via homebrew
;; 2. link ~/.cask to /usr/local/opt/cask
;; 3. M-x package-install RET pallet RET
;; 4. M-X pallet-install
;; (from http://goo.gl/MXCyf4)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "00_common.el")
(load "01_autocomplete.el")
(load "02_rcodetools.el")
(load "03_theme.el")
(load "04_ruby.el")
(load "05_smartparens.el")

(cd "~/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" default)))
 '(display-battery-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Ubuntu Mono derivative Powerline")))))

(setq smartparens-mode t)
