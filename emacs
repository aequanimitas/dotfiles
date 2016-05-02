(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)
(global-set-key (kbd "C-c o")
                (lambda () (interactive) (find-file "~/Dropbox/Notes/org/organizer.org")))

(setq org-export-coding-system 'utf-8)
(setq org-log-done t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'hickey t)
(setq org-log-todo 'time)
(setq org-todo-keywords '(
  (sequence "TODO(t)" "IN-PROGRESS(i)" "DONE(o)")
  (sequence "DEFERRED(d)" "CALENDAR(c)" "NEXT ACTION(n)" "|" "DELEGATED(l)")
  (sequence "SOMEDAY(s)" "REFERENCE(r)")
  (sequence "PROJECT(p)")
))

;; capture templates ( M-x org-captue )
(setq org-capture-templates
  `(("j" 
     "Journal" 
     entry 
     (file+headline "~/Dropbox/Notes/org/organizer.org" "JOURNAL")
      "** %(org-insert-time-stamp (org-read-date nil t \"+0d\") 
          (current-time)) Journal Entry (change me): \n")
    ("i" 
     "IDEA" 
     entry 
     (file+headline "~/Dropbox/Notes/org/organizer.org" "IDEA")
      "** IDEA %(org-insert-time-stamp (org-read-date nil t \"+0d\") (current-time)): ")
    ("t" "TODOS")
    ("td" "Create a daily todo, especially if you're swamped")
    ("tda" "Daily" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "DAILY TODO")
      "* TODO \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tp" "Project ToDos")
    ("tps" "TODO for Sentire" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "Sentire")
      "*** TODO Sentire: \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tpj" "TODO for JackMurat Coffee" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "JackMurat")
      "*** TODO JackMurat:       
       \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tpp" "TODO for portoflio in htavenido.com" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "Portfolio")
      "*** TODO Portoflio: \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tpc" "TODO for Completo.io" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "Completo.io")
      "*** TODO Completo.io: \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tpu" "TODO for Curo" entry (file+headline "~/Dropbox/Notes/org/organizer.org" "Curo")
      "*** TODO Curo: \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
))

;; only show tasks without schedule in global TODO
(setq org-agenda-todo-ignore-scheduled (quote all))

;; custom commands
(setq org-agenda-custom-commands `(
  ("c" "Code related tasks" (
    (agenda "")
    (tags "@Code")))
))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" default)))
 '(org-agenda-files
   (quote
    ("~/Dropbox/Notes/org/chores.org" "~/Dropbox/Notes/org/organizer.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
