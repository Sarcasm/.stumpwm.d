;; Sarcasm personnal settings for MPD and StumpWM
;; usage (with user-module):
;; (load-user-module "sarcasm-mpd")

(in-package :stumpwm)

(load-module "mpd")
(mpd-connect)

(sarcasm-global-keys
 '(("p" . "mpd-toggle-pause")
   (">" . "mpd-next")
   ("<" . "mpd-prev")
   ("w" . "mpd-current-song")))

(setf *screen-mode-line-format* (concat *screen-mode-line-format* "     -=| %m |=-"))
