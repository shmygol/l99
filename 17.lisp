;;; (*) Split a list into two parts; the length of the first part is given.
;;; Do not use any predefined predicates.
;;;
;;; Example:
;;; * (split '(a b c d e f g h i k) 3)
;;; ((A B C) (D E F G H I K))
     
(defun split (given-list cnt &optional (result-left nil))
  (if (= cnt 0)
    (if (null result-left)
      given-list
      (cons result-left (list given-list)))
    (if (null given-list)
      result-left
      (split (cdr given-list) (- cnt 1) (append result-left (list (car given-list)))))))
