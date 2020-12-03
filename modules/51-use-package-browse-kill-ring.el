(use-package browse-kill-ring
  :ensure t
  :config
  (define-key global-map (kbd "M-y") 'browse-kill-ring))

(provide 'init-browse-kill-ring)
