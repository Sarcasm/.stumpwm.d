;; Load swank.
;; *prefix-key* ; swank will kick this off
(load "/usr/share/common-lisp/source/slime/swank-loader.lisp")
(swank-loader:init)

(defun swank ()
  "Launch swank serveur for SLIME."
  (setf stumpwm:*top-level-error-action* :break)
  (swank:create-server :port 4005
                       :style swank:*communication-style*
                       :dont-close t)
  )

(defcommand swank-start () ()
  "Interactive starting of swank, display the usage on screen."
  (swank)
  (message "Starting swank. M-x slime-connect RET RET,
  then (in-package stumpwm).") )

(swank)
