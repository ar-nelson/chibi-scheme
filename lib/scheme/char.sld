
(define-library (scheme char)
  (import (scheme base))
  (cond-expand
   (full-unicode
    (import (chibi char-set full) (chibi iset base) (only (scheme) digit-value))
    (include "char/full.scm")
    (include "char/case-offsets.scm"))
   (else
    (include "char/ascii.scm")
    (import
     (only (scheme)
           string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>?
           char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>?
           char-alphabetic?  char-lower-case? char-numeric?
           char-upper-case? char-whitespace? digit-value
           char-upcase char-downcase))))
  (export
   char-alphabetic? char-ci<=? char-ci<? char-ci=? char-ci>=? char-ci>?
   char-downcase char-foldcase char-lower-case? char-numeric?
   char-upcase char-upper-case? char-whitespace? digit-value
   string-ci<=? string-ci<? string-ci=? string-ci>=? string-ci>?
   string-downcase string-foldcase string-upcase))
