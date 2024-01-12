;;; nepali-org-calendar.el --- Holdiays for Nepali Calendar -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2024 Sabin Nepal
;;
;; Author: Sabin Nepal <reddevil.sabin@gmail.com>
;; Maintainer: Sabin Nepal <reddevil.sabin@gmail.com>
;; Created: January 12, 2024
;; Modified: January 12, 2024
;; Version: 0.0.1
;; Keywords: Symbol’s value as variable is void: finder-known-keywords
;; Homepage: https://github.com/neymarsabin/nepali-org-calendar
;; Package-Requires: ((emacs "24.3"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;; usage: to use nepali-holidys in your calendar:
;; (setq calendar-holidays (append nepali-holidays))
;;
;;; Code:
(eval-when-compile
  (require 'calendar)
  (require 'holidays))

;; ###autoload
;; Holidays only till the end of Chaitra - Will be updated once the new calendar gets released!
;; TODO: append other christian holidays

;;### autoload
(defvar nepali-holidays '(
                          (holiday-float 1 15 "Makar Shankranti")
                          (holiday-fixed 1 30 "Sahid Diwas")
                          (holiday-fixed 2 14 "Saraswati Puja")
                          (holiday-fixed 2 19 "Prajantantra Diwas")
                          (holiday-fixed 3 8 "Maha Shivaratri")
                          (holiday-fixed 3 11 "Gyalp Loshar")
                          (holiday-fixed 3 24 "Holi"))
  "Other holidays will be updated once the calendar is available"
  )

(provide 'nepali-org-calendar)
;;; nepali-org-calendar.el ends here
