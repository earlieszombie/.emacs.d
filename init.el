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

(cd "~/")

