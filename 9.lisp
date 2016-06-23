;;; (**) Pack consecutive duplicates of list elements into sublists.
;;; If a list contains repeated elements they should be placed in separate sublists.
;;; 
;;; Example:
;;; * (pack '(a a a a b c c a a d e e e e))
;;; ((A A A A) (B) (C C) (A A) (D) (E E E E))
 
;; Functian dictaration
(defun pack (given-list &optional cur-package)
  (if (not (null given-list))
    (let ((cur-package-el (car cur-package))
          (given-list-head (car given-list))
          (given-list-rest (cdr given-list)))
      (cond ((null cur-package) (pack given-list-rest (list given-list-head))) 
            ((equal given-list-head cur-package-el) (pack given-list-rest (cons given-list-head cur-package)))
            (T (cons cur-package (pack given-list-rest (list given-list-head))))))
    (list cur-package)))
