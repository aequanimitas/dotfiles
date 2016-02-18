(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
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
  `(("j" "Journal" entry (file "~/Dropbox/Notes/org/journal.org")
      "* %(org-insert-time-stamp (org-read-date nil t \"+0d\") (current-time)) Journal Entry (change me): \n")
    ("s" "Someday" entry (file "~/Dropbox/Notes/org/someday.org")
      "* SOMEDAY \n\n%(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("i" "IDEA" entry (file "~/Dropbox/Notes/org/organizer.org")
      "* IDEA \n\n%(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("t" "TODO with priority levels")
    ("ta" "TODO [#A]" entry (file "~/Dropbox/Notes/org/organizer.org")
      "* TODO [#A] \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tb" "TODO [#B]" entry (file "~/Dropbox/Notes/org/organizer.org")
      "* TODO [#A] \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
    ("tc" "TODO [#C]" entry (file "~/Dropbox/Notes/org/organizer.org")
      "* TODO [#A] \n\nSCHEDULED %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
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
