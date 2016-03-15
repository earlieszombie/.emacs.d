(autoload 'ledger-mode "ledger-mode" "A major mode for Ledger" t)
(add-to-list 'load-path
	     (expand-file-name "/usr/local/opt/ledger/share/emacs/site-lisp/ledger"))
(add-to-list 'auto-mode-alist '("\\.ledger$" . ledger-mode))
(add-to-list 'auto-mode-alist '("\\.dat$" . ledger-mode))
(set 'ledger-binary-path "/usr/local/opt/ledger/bin/ledger")

