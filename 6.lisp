;;; (*) Find out whether a list is a palindrome.
;;; A palindrome can be read forward or backward; e.g. (x a m a x).
 
(defun my-is-polindrome (given-list)
  (equal given-list (reverse given-list)))
