(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(setq org-agenda-files '("~/Dropbox/Notes/org"))
(load-theme 'hickey t)
(setq org-log-todo 'time)
(setq org-todo-keywords '(
  (sequence "TODO(t)" "IN-PROGRESS(i)" "DONE(o)")
  (sequence "DEFERRED(d)" "CALENDAR(c)" "NEXT ACTION(n)" "|" "DELEGATED(l)")
  (sequence "SOMEDAY(s)" "REFERENCE(r)")
  (sequence "PROJECT(p)")
))
(setq org-tag-alist '(
   ("@work")
   ("@desktop")
   ("@laptop")
   ("@home")
   ("@k74")
   ("@metroville")
   ("@car")
   ("@project")
   ("@daily")
   ("@mya")
   ("@ey")
   ("@stoic")
   ("@programming")
   ("@commiment")
   ("@archive")
   ("@quick")
   ("@bedroom")
   ("@kitchen")
   ("@dirty")
   ("@CR")
   ("@upstairs")
   ("@downstairs")
   ("@bodega")
   ("@terrace")
   ("@desk")
   ("@chair")
   ("@table")
   ("@dining")
   ("@cabinets")
   ("@chores")
   ("@download")
   ("@mindset")
   ("@errands")
   ("@firetablet")
   ("@bike")
   ("@phone")
   ("@email")
   ("@kitchen")
   ("@workweek")
   ("@pre-meditation")
   ("@idea")
   ("@someday")
   ("@article")
   ("@summarize")
   ("@ritual")
   ("@morning")
   ("@evening")
   ("@afternoon")
   ("@code")
   ("@later")
   ("@watch")
   ("@read")
   ("@urgent")
   ("@python")
   ("@alcohol")
   ("@random")
   ("@thoughts")
   ("@vice")
   ("@weekend")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
