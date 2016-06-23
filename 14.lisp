;;; (*) Duplicate the elements of a list.
;;; Example:
;;; * (dupli '(a b c c d))
;;; (A A B B C C C C D D)))'))

(defun dupli (given-list)
  (if (not (null given-list))
    (append (make-list 2 :initial-element (car given-list)) (dupli (cdr given-list)))))
