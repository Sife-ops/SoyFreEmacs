;;; package --- Summary

;;; Commentary:
;; Highlight contents of balanced pairs.
;; To-Do:
;; closing double quotes e.g. `"foo")'
;; empty pairs e.g. `()' 

;;; Code:
(defun sife-select-in-next-pair () 
  "Select inside of pairs"
  (interactive)
  (let ((pairOpen)
	(pairClose)
	(pairOpenClose)
	(iPairs)
	(ptSel1)
	(ptSel2))

    ;; only continue if mark not set
    (when (and (boundp 'sife-ptSel1)
	       (not (eq sife-ptSel1 nil))
	       (eq mark-active t))
      (goto-char sife-ptSel1))
    
    (re-search-forward "[[({<]\\| \"\\| '" nil t)
    (setq pairOpen (match-string 0)
	  ptSel1 (match-end 0)
	  sife-ptSel1 (match-end 0))
    ;; (message "%s" sife-ptSel1) ;;debug

    (cond
     ((string= pairOpen "[")
      (setq pairOpen "\\[")
      (setq pairClose "]"))
     ((string= pairOpen "(")
      (setq pairClose ")"))
     ((string= pairOpen "{")
      (setq pairClose "}"))
     ((string= pairOpen "<")
      (setq pairClose ">"))
     ((string= pairOpen " \"")
      (setq pairClose "\" "))
     ((string= pairOpen " '")
      (setq pairClose "' ")))
;;    (message "%s" pairClose) ;;debug

    (setq pairOpenClose (concat pairOpen "\\|" pairClose))
;;    (message "%s" pairOpenClose) ;;debug

    (setq iPairs 1)
    (while (> iPairs 0)
      (re-search-forward pairOpenClose nil t)
      (cond
       ((string= (match-string 0) pairOpen)
	(setq iPairs (1+ iPairs)))
       ((string= (match-string 0) pairClose)
	(setq iPairs (1- iPairs)))))

    (setq ptSel2 (match-beginning 0))

    (setf (mark) ptSel1
	  (point) ptSel2)))

(provide 'sife-selebration)
;;; sife-selebration.el ends here
