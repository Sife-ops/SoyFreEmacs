;;; package --- Summary

;;; Commentary:
;; Configuration for mu4e.

;;; Code:

(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e/")
(require 'mu4e)

;;--- DEFAULT BEHAVIOR ---;;

;; downloads
(setq mu4e-attachment-dir  "~/Downloads")

;; retrieval mail
(setq mu4e-get-mail-command "offlineimap -c ~/.config/offlineimap/offlineimaprc")
(setq mu4e-update-interval 900)
(setq mu4e-index-update-in-background t)

;; sending mail
(setq message-send-mail-function 'smtpmail-send-it)

;; (setq message-kill-buffer-on-exit t)
;; (setq mu4e-compose-signature-auto-include nil)

;; notifications
(add-hook 'mu4e-index-updated-hook
  (defun sife-mu4e-new-mail-sound ()
    (shell-command "setsid -f mpv --volume=100 --loop=no --audio-wait-open=1 ~/.local/share/sarbs/sounds/win95/DA_EMPTY.WAV")))

;;--- DEFAULT ACCOUNT ---;;

(setq
 mu4e-maildir       "~/.local/share/mail"
 user-full-name     "Wyatt A. Goettsch"
 user-mail-address  "wyattgoettsch@gmx.us"
 
 mu4e-drafts-folder "/wyattgoettsch@gmx.us/Drafts"
 mu4e-sent-folder   "/wyattgoettsch@gmx.us/Sent"
 mu4e-trash-folder  "/wyattgoettsch@gmx.us/Trash"
      
 smtpmail-stream-type 'ssl
 smtpmail-default-smtp-server "smtp.gmx.us"
 smtpmail-smtp-server "smtp.gmx.us"
 smtpmail-smtp-service 465)

;;--- ACCOUNTS ---;;

(setq mu4e-user-mail-address-list '(
				    "sife@airmail.cc"
				    "wyatchungus@cock.li"				    				    
				    "wyattgoettsch@420blaze.it"
				    "wyattgoettsch@gmx.us"
				    ;; "wyattgoettsch@yandex.com"
				    ))

(defun sife-mu4e-cock ()
  (interactive)
  (setq
   user-mail-address  "wyatchungus@cock.li"
   
   mu4e-drafts-folder "/wyatchungus@cock.li/Drafts"
   mu4e-sent-folder   "/wyatchungus@cock.li/Sent"
   mu4e-trash-folder  "/wyatchungus@cock.li/Trash"
	
   smtpmail-stream-type 'ssl
   smtpmail-default-smtp-server "mail.cock.li"
   smtpmail-smtp-server "mail.cock.li"
   smtpmail-smtp-service 465)

  (mu4e~headers-jump-to-maildir "/wyatchungus@cock.li/INBOX"))

(defun sife-mu4e-airmail ()
  (interactive)
  (setq
   user-mail-address  "sife@airmail.cc"

   mu4e-drafts-folder "/sife@airmail.cc/Drafts"
   mu4e-sent-folder   "/sife@airmail.cc/Sent"
   mu4e-trash-folder  "/sife@airmail.cc/Trash"

   smtpmail-stream-type 'ssl
   smtpmail-default-smtp-server "mail.cock.li"
   smtpmail-smtp-server "mail.cock.li"
   smtpmail-smtp-service 465)
  
  (mu4e~headers-jump-to-maildir "/sife@airmail.cc/INBOX"))

(defun sife-mu4e-gmx ()
  (interactive)
  (setq
   user-mail-address  "wyattgoettsch@gmx.us"
   
   mu4e-drafts-folder "/wyattgoettsch@gmx.us/Drafts"
   mu4e-sent-folder   "/wyattgoettsch@gmx.us/Sent"
   mu4e-trash-folder  "/wyattgoettsch@gmx.us/Trash"
  
   smtpmail-stream-type 'ssl
   smtpmail-default-smtp-server "smtp.gmx.us"
   smtpmail-smtp-server "smtp.gmx.us"
   smtpmail-smtp-service 465)

  (mu4e~headers-jump-to-maildir "/wyattgoettsch@gmx.us/INBOX"))

(defun sife-mu4e-420blaze ()
  (interactive)
  (setq
   user-mail-address  "wyattgoettsch@420blaze.it"

   mu4e-drafts-folder "/wyattgoettsch@420blaze.it/Drafts"
   mu4e-sent-folder   "/wyattgoettsch@420blaze.it/Sent"
   mu4e-trash-folder  "/wyattgoettsch@420blaze.it/Trash"

   smtpmail-stream-type 'ssl
   smtpmail-default-smtp-server "mail.cock.li"
   smtpmail-smtp-server "mail.cock.li"
   smtpmail-smtp-service 465)

  (mu4e~headers-jump-to-maildir "/wyattgoettsch@420blaze.it/INBOX"))

(provide 'init-mu4e)
