;; Simple user module loading
;; This is inspired by module.lisp, but it can handle more than one
;; directory.
;; usage:
;; (load "~/path/to/user-module.lisp")
;; (add-user-module-directory "my-dir")
;; (load-user-module "toto")
;; (load-user-module "tutu" "titi" "tata")

(in-package :stumpwm)

(defvar *user-modules-paths* nil
  "List of directory to search for user modules.")

(defun add-user-module-directory (path)
  "Add DIR to the user module loading path."
  (pushnew (pathname-as-directory path) *user-modules-paths* :test 'equal)
  )

(defun load-user-module (&rest modules)
  "Load the module NAME if found in `*user-modules-paths*'."
  (dolist (module modules)
    (let ((path-to-load (find-if #'(lambda (dir)
                                     (probe-file (make-pathname :defaults dir
                                                                :name module
                                                                :type "lisp")))
                                 *user-modules-paths*)))
      (if path-to-load
          (load (make-pathname :defaults path-to-load :name module :type "lisp"))
          (message "unknow user module `~a'" module))))
  )
