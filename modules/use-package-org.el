;;; package --- Summary

;;; Commentary:
;; Configuration for org-mode.

;;; Code:

(use-package org
  :ensure t
  :config
  (setq org-link-frame-setup '((vm . vm-visit-folder-other-frame)
			       (vm-imap . vm-visit-imap-folder-other-frame)
			       (gnus . org-gnus-no-new-news)
			       (file . find-file)
			       (wl . wl-other-frame))
	org-startup-folded nil)
  )

(provide 'init-org)

;;; init-org.el ends here
