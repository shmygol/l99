;;; (**) Eliminate consecutive duplicates of list elements.
;;; If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.
;;; Example:
;;; * (compress '(a a a a b c c a a d e e e e))
;;; (A B C A D E)

;; Functian dictaration
(defun eliminate-duplicates (given-list &optional prev)
  (if (not (null given-list))
    (let ((hd (car given-list)))
      (if (eql hd prev)
        (eliminate-duplicates (cdr given-list) prev)
        (cons hd (eliminate-duplicates (cdr given-list) hd))))))
