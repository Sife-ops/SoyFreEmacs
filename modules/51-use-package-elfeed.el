;;; package --- Summary

;;; Commentary:
;; Configuration for elfeed.

;;; Code:

(use-package elfeed
  :ensure t
  :config
  (load (concat user-emacs-directory "elfeed-feeds"))
  (setf url-queue-timeout 30))
  ;; (add-hook 'emacs-startup-hook (lambda ()
				  ;; (run-at-time 300 300 'elfeed-update))))

(provide 'init-elfeed)

;;; init-elfeed.el ends here
