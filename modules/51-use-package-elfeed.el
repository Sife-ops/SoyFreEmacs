;;; package --- Summary

;;; Commentary:
;; Configuration for elfeed.

;;; Code:

(use-package elfeed
  :ensure t
  :config
  (setq elfeed-db-directory (concat user-emacs-directory "elfeed"))
  (setf url-queue-timeout 30)
  (load (concat user-emacs-directory "elfeed-feeds")))

  ;; (defcustom elfeed-db-directory "~/.elfeed"
  ;; (add-hook 'emacs-startup-hook (lambda ()
				  ;; (run-at-time 300 300 'elfeed-update))))

(provide 'init-elfeed)

;;; init-elfeed.el ends here
