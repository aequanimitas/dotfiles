(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(setq org-agenda-files '("~/Dropbox/Notes/org"))
(setq org-log-todo 'time)
(setq org-todo-keywords '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))
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
   ("@for archive")
   ("@archived")
   ("@quick-chores")
   ("@chores")
   ("@download")
   ("@mindset")
   ("@errands")
   ("@firetablet")
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
   ("@weekend")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
