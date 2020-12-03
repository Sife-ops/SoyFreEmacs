;;; package --- Summary

;;; Commentary:
;; define abbrev for specific major mode
;; the first part of the name should be the value of the variable major-mode of that mode
;; e.g. for go-mode, name should be go-mode-abbrev-table

;;; Code:

(when (boundp 'sh-mode-abbrev-table)
  (clear-abbrev-table sh-mode-abbrev-table))

(define-skeleton awk_sh "awk" nil
  "awk -F'" _ "' '{ print $<++> }'")

(define-skeleton case_sh "case" nil
  "case " _ " in
    <++>)
	<++>
    ;;
    <++>)
	<++>
    ;;
    *)
	<++>
    ;;
esac

<++>")

(define-skeleton cut_sh "cut" nil
  "cut -d'" _ "' -f<++>")

(define-skeleton elif_sh "elif" nil
  "elif " _ "; then")

(define-skeleton for_sh "for" nil
  "for " _ " in <++>; do
done")

(define-skeleton function_sh "function" nil
    "function " _ "() {
    exit 0
}

<++>")

(define-skeleton getopts_sh "getopts" nil
  "while getopts \"" _ "\" o; do
    case \"${o}\" in
        <++>) <++>=\"$OPTARG\" ;;
        <++>) <++>=\"$OPTARG\" ;;
        <++>) <++>=\"true\" ;;
        <++>) <++>=\"true\" ;;
        h) msg_help ;;
        *) printf \"Invalid option: -%s\\n\" \"$o\" ;;
    esac
done
shift $((OPTIND - 1))

<++>")

(define-skeleton grep_sh "grep" nil
  "grep '" _ "'")

(define-skeleton msg_help_sh "help message" nil
  "msg_help() { echo \"Usage:
    " _ " [<++>] <++>
Options:
    -<++>\t<++>
    -<++>\t<++>
    -<++>\t<++>
    -<++>\t<++>
    -h		print this message\"
    exit 1
}

<++>")

(define-skeleton if_sh "if" nil
  "if " _ "; then
fi")

(define-skeleton sed_sh "sed" nil
  "sed s/" _ "/<++>/")

(define-skeleton tr_sh "tr" nil
  "tr -d '[:space" _ ":]'")

(define-skeleton while_sh "while" nil
  "while " _ "; do
    <++>
done

<++>")

(define-abbrev-table 'sh-mode-abbrev-table
  '(
    ("awk" "" awk_sh)
    ("case" "" case_sh)
    ("cut" "" cut_sh)
    ("elif" "" elif_sh)
    ("for" "" for_sh)
    ("function" "" function_sh)
    ("getopts" "" getopts_sh)
    ("grep" "" grep_sh)
    ("help" "" msg_help_sh)
    ("if" "" if_sh)
    ("sed" "" sed_sh)
    ("tr" "" tr_sh)
    ("while" "" while_sh)
    ))

(setq save-abbrevs nil)

(provide 'abbrev-shell)

;;; abbrev-shell.el ends here.
