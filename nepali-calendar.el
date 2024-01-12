;;; nepali-calendar.el --- Holdiays for Nepali Calendar -*- lexical-binding: t; -*-
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
;;
;;
;;; Code:

(eval-when-compile
  (require 'calendar)
  (require 'holidays))

;; ###autoload
;; Holidays only till the end of Chaitra - Will be updated once the new calendar gets released!
(defvar nepali-calendar-hindu-holidays ( mapcar 'purecopy '((holiday-fixed 1 15 "Makar Shankranti")
                                                            (holiday-fixed 1 30 "Martyr's Day - Sahid Diwas")
                                                            (holiday-fixed 2 14 "Saraswati Puja - Shree Panchami")
                                                            (holiday-fixed 2 19 "Democracy Day - Prajantantra Diwas")
                                                            (holiday-fixed 3 08 "Maha Shivaratri")
                                                            (holiday-fixed 3 11 "Gyalp Loshar")
                                                            (holiday-fixed 3 24 "Holi - Hill Areas")
                                                            (holiday-fixed 3 25 "Holid - Terai")
                                                            )))


;; TODO: append other holidays like christian holidays
;; set holidays, just append holidays to the variable holiday-other-holidays
(setq holiday-other-holidays (append nepali-calendar-hindu-holidays))

(provide 'nepali-calendar)
;;; nepali-calendar.el ends here
