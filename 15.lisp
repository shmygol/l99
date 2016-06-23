;;; (**) Replicate the elements of a list a given number of times.
;;; Example:
;;; * (repli '(a b c) 3)
;;; (A A A B B B C C C)))'))

(defun repli (given-package cnt)
  (if (not (null given-package))
    (append (make-list cnt :initial-element (car given-package)) (repli (cdr given-package) cnt))))
