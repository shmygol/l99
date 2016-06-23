;;; (**) Decode a run-length encoded list.
;;; Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.)

(defun decode (given-package)
  (if (not (null given-package))
    (append 
      (let ((cur-package (car given-package)))
        (if (atom cur-package)
          (list cur-package)
          (make-list (first cur-package) :initial-element (second cur-package))))
      (decode (cdr given-package)))))
