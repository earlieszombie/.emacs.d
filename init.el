;; Mac OS X Keyboard Settings
(setq mac-control-modifier 'control)
(setq mac-option-modifier 'meta)
(set-keyboard-coding-system nil)

;; Cask and Pallet init
;; homebrew cask
;; pallet from http://goo.gl/MXCyf4

(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
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

(require 'rcodetools)
