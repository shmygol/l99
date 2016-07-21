;;; Find the last but one box of a list.
;;; Example:
;;; * (my-but-last '(a b c d))
;;; (C D)

(defun my-but-last (given-list &optional (prev-el Nil)) 
  "last but one box of a list"
  (if (null given-list)
    nil
    (or
      (my-but-last (cdr given-list) (car given-list))
      (if (null prev-el)
        given-list
        (cons prev-el given-list)))))
