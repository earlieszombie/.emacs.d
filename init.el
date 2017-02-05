;; emacs env settings

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
  (global-set-key (kbd "M-o") 'overwrite-mode)
  
  ;; sets fn-delete to be right-delete
  (global-set-key [kp-delete] 'delete-char)) 

;; 1. install cask via homebrew
;; 2. link ~/.cask to /usr/local/opt/cask
;; 3. M-x package-install RET pallet RET
;; 4. M-x pallet-install
;; (from http://goo.gl/MXCyf4)

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; Enabling vim-like powerline
(require 'powerline)
(powerline-default-theme)
(require 'all-the-icons)

(add-to-list 'load-path "~/.emacs.d/custom")

(load "00_common.el")
(load "01_autocomplete.el")
;;(load "02_rcodetools.el")
(load "03_theme.el")
;;(load "04_ruby.el")
(load "05_smartparens.el")
(load "06_drag-stuff.el")
(load "07_compile.el")
;;(load "08_ledger.el")
(load "09_haskell.el")
(load "10_linum-highlight.el")
(load "11_js2mode.el")

(cd "~/")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("e87a2bd5abc8448f8676365692e908b709b93f2d3869c42a4371223aab7d9cf8" \
     "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" default)))
 '(display-battery-mode t)
 '(haskell-process-auto-import-loaded-modules t)
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-process-type (quote cabal-repl))
 '(package-selected-packages
   (quote
    (all-the-icons-dired all-the-icons neotree solarized-theme soft-morning-theme smartparens ruby-end\
			 pallet names haskell-mode enh-ruby-mode drag-stuff\
			 color-theme-solarized color-theme-sanityinc-solarized\
			 autopair auto-complete\
			 airline-themes aggressive-indent ag)))
 '(tool-bar-mode nil))

(set-default-font "Fira Code")
(set-face-attribute 'default (selected-frame) :height 140)
(setq initial-frame-alist
      '(
	(width . 177)
	(height . 54) ))
(setq battery-mode-line-format "[%b%p]")
(setq linum-format "%4d \u2502 ")
(setq linum-format 'linum-highlight-current-line)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
