;;; package --- Summary

;;; Commentary:
;;     ____              _____         _____                          
;;    / ___|  ___  _   _|  ___| __ ___| ____|_ __ ___   __ _  ___ ___ 
;;    \___ \ / _ \| | | | |_ | '__/ _ \  _| | '_ ` _ \ / _` |/ __/ __|
;;     ___) | (_) | |_| |  _|| | |  __/ |___| | | | | | (_| | (__\__ \
;;    |____/ \___/ \__, |_|  |_|  \___|_____|_| |_| |_|\__,_|\___|___/
;;                 |___/                                              
;;
;; Sife's fully modular soy-free Emacs configuration.
;;
;; To enable modules, create links from modules/ to init.d/ like this:
;;
;; $ cd ~/.config/emacs/init.d
;; $ ln -sf ../modules/use-package-company.el ./81-use-package-company.el
;;
;;; Code:

(setq user-emacs-directory "~/.config/emacs/")

(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

(setq modules-enabled (concat user-emacs-directory "init.d/"))
(require 'cl-lib)
(cl-loop for file in (append (directory-files-recursively modules-enabled "\\.el$"))
           do (condition-case ex
                (load (file-name-sans-extension file))
                ('error (with-current-buffer "*scratch*"
                        (insert (format "[INIT ERROR]\n%s\n%s\n\n" file ex))))))

;;; init.el ends here.
