;;; (*) Reverse a list.
 
(defun my-reverse (given-list)
  (if (not (null given-list)) 
    (cons (car (last given-list)) (my-reverse (butlast given-list)))))
