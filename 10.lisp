;;; (*) Run-length encoding of a list.
;;; Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.
;;;
;;; Example:
;;; * (encode '(a a a a b c c a a d e e e e))
;;; ((4 A) (1 B) (2 C) (2 A) (1 D) (4 E))

(load "./9.lisp")

;; Functian dictaration
(defun encode-packed-list (packed-list)
  (if (not (null packed-list)) 
    (cons 
      (let ((first-package (car packed-list))) 
        (list (length first-package) (car first-package))) 
      (encode-packed-list (cdr packed-list)))))
  
(defun encode-list (given-list)
  (if (not (null given-list)) 
    (encode-packed-list (pack given-list))))
