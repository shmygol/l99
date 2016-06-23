;;; (*) Modified run-length encoding.
;;; Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.))

(load "./9.lisp")

;; Functian dictaration
(defun encode-packed-list-ext (packed-list)
  (if (not (null packed-list)) 
    (cons 
      (let ((first-package (car packed-list))) 
        (if (> (length first-package) 1) 
          (list (length first-package) (car first-package))
          (car first-package))) 
      (encode-packed-list-ext (cdr packed-list)))))
  
(defun encode-list-ext (given-list)
  (if (not (null given-list)) 
    (encode-packed-list-ext (pack given-list))))
