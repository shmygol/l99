;;; (*) Find out whether a list is a palindrome.
;;; A palindrome can be read forward or backward; e.g. (x a m a x).
 
(defun my-flatten (given-list)
  (if (not (null given-list))
    (let ((h (car given-list))
          (r (cdr given-list))) 
      (if (atom h)
        (cons h (my-flatten r))
        (append (my-flatten h) (my-flatten r))))))
