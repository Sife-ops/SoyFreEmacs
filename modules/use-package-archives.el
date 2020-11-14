;;; package --- Summary

;;; Commentary:
;; Configuration for package archives.
;; Must be loaded before 50- modules.

;;; Code:

(package-initialize)
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(unless (package-installed-p 'use-package)
    (package-refresh-contents)
    (package-install 'use-package))

(eval-when-compile
    (require 'use-package))

(provide 'init-archives)

;;; archives.el ends here
