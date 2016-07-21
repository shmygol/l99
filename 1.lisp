;;; find the last box of a list.
;;; Example:
;;; *(my-last '(a b c d))
;;; (D)

(defun my-last (given-list)
  "last box of a list"
  (if (null given-list) 
    nil
    (or (my-last (cdr given-list)) (car given-list))))
