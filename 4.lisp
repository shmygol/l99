;;; (*) Find the number of elements of a list.

(defun my-length (given-list &optional (cur-index 0)) 
  (if (null given-list)
    0
    (+ 1 (my-length (cdr given-list)))))
