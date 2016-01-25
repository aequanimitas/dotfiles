(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'graham t)

(setq org-agenda-files '("~/Dropbox/Notes/org"))
(setq org-log-todo 'time)
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
(setq org-tag-alist '(
  ;; tags go here
))
;;   ("@ATHOME")
;;   ("@work")
;;   ("@project")
;;   ("@daily")
;;   ("@mya")
;;   ("@ey")
;;   ("@stoic")
;;   ("@commiment")
;;   ("@archive")
;;   ("@quick")
;;   ("@bedroom")
;;   ("@kitchen")
;;   ("@dirty")
;;   ("@CR")
;;   ("@bodega")
;;   ("@terrace")
;;   ("@desk")
;;   ("@chair")
;;   ("@table")
;;   ("@dining")
;;   ("@cabinets")
;;   ("@chores")
;;   ("@download")
;;   ("@mindset")
;;   ("@errands")
;;   ("@firetablet")
;;   ("@bike")
;;   ("@phone")
;;   ("@email")
;;   ("@workweek")
;;   ("@pre-meditation")
;;   ("@idea")
;;   ("@someday")
;;   ("@article")
;;   ("@summarize")
;;   ("@ritual")
;;   ("@later")
;;   ("@watch")
;;   ("@unread")
;;   ("@urgent")
;;   ("@alcohol")
;;   ("@random")
;;   ("@thoughts")
;;   ("@vice")
;;
;;   ; time periods
;;   ("@morning")
;;   ("@evening")
;;   ("@afternoon")
;;
;;   ; locations
;;   ("@desktop")
;;   ("@laptop")
;;   ("@metroville")
;;   ("@car")
;;   ("@kitchen")
;;   ("@downstairs")
;;   ("@upstairs")
;;   ("@home")
;;   ("@k74")
;;
;;   ; code, programming languages
;;   ("@programming")
;;   ("@code")
;;   ("@react")
;;   ("@redux")
;;   ("@javascript")
;;   ("@functional")
;;   ("@python")
;;
;;
;;   ("@weekend")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
