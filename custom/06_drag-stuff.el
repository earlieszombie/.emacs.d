(require 'drag-stuff)

(drag-stuff-mode t)
;; (drag-stuff-define-keys t)

(add-hook 'ruby-mode-hook 'drag-stuff-mode)
(add-hook 'js2-mode-hook 'drag-stuff-mode)


