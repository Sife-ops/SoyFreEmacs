;; -*- coding: utf-8; lexical-binding: t; -*-
;; sample use of abbrev

(clear-abbrev-table global-abbrev-table)
(define-abbrev-table 'global-abbrev-table
  '(
    ("extra thicc" "乇乂丅尺卂 丅卄工匚匚" )
    ;; net abbrev
    ("afaik" "as far as i know" )
    ("atm" "at the moment" )
    ("dfb" "difference between" )
    ("ty" "thank you" )
    ("ui" "user interface" )
    ("uns" "understand" )
    ("ur" "you are" )
    ("btw" "by the way" )
    ("cnt" "can't" )
    ("ddnt" "didn't" )
    ("dnt" "don't" )

    ;; english word abbrev
    ("ann" "announcement" )
    ("arg" "argument" )
    ("autom" "automatic" )
    ("bc" "because" )
    ("bg" "background" )
    ("bt" "between" )
    ("math" "mathematics" )

    ;; computing
    ("ahk" "AutoHotkey" )
    ("cfg" "context-free grammar" )
    ("cj" "Clojure" )
    ("cs" "computer science" )

    ;; tech company
    ("gc" "Google Chrome" )
    ("gm" "Google Map" )
    ("macos" "Mac OS" )
    ("msw" "Microsoft Windows" )
    
    ;; programing
    ("ev" "environment variable" )
    ("ipa" "IP address" )
    ("jvm" "Java Virtual Machine" )
    ("rsi" "Repetitive Strain Injury" )
    ("subdir" "sub-directory" )
    ("wd" "web development" )
    ("db" "database" )
    ("gui3" "graphical user interface" )
    ("oop3" "object oriented programing" )
    ("os3" "operating system" )

    ;; programing
    ("eq" "==" )
    ("r" "return" )
    ("utf8" "-*- coding: utf-8 -*-" )

    ;; regex
    ("xaz" "\\([A-Za-z0-9]+\\)" )

    ;; unicode
    ("md" "—" )
    ("hr" "--------------------------------------------------" )
    ("bu" "•" )
    ("catface" "😸" )
    ("hearts" "♥💕💓💔💖💗💘💝💞💟💙💚💛💜" )
    ("→" "→" )

    ;; url
    ("urlemacs" "http://ergoemacs.org/" )
    ))

(setq save-abbrevs nil)
