;;; package --- Summary

;;; Commentary:
;; ERC Configuration.
;; Search for books with `@Search TITLE'.

;;; Code:

(load (concat user-emacs-directory "erc-auth"))

(defun sife-freenode ()
  "Connect to IRC"
  (interactive)
  (erc :server "irc.freenode.net" :port "6667"
       :nick sife-freenode-nick :password sife-freenode-passwd))

(defun sife-irchighway ()
  "Connect to IRC. Search for books in #ebooks with @Search. Accept files with
/dcc get Search"
  (interactive)
  (erc :server "irc.irchighway.net" :port "6667"
       :nick "sife"))

(defun sife-undernet ()
  "Connect to IRC"
  (interactive)
  (erc :server "irc.freenode.net" :port "6667"
       :nick "sife"))

(defun sife-zeronode ()
  "Connect to IRC"
  (interactive)
  (erc :server "irc.zeronode.net" :port "6667"
       :nick "sife" :password sife-freenode-passwd))

(defun sife-bitlbee ()
  "Connect to bitlbee
Bitlbee Discord: https://github.com/sm00th/bitlbee-discord"
  (interactive)
  (erc :server "localhost" :port "6667"
       :nick "wyatt" :password sife-freenode-passwd))

(setq erc-autojoin-channels-alist '(("freenode.net" "#emacs" "#archlinux")
				    ("irchighway.net" "#ebooks")
				    ("zeronode.net" "#NoAgenda")))

(provide 'init-erc)

;;; init-erc.el ends here
