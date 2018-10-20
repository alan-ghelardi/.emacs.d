;;; init-accessibility-improvements.el --- summary -*- lexical-binding: t -*-

;; Author: Alan Ghelardi

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; Personal accessibility improvements.

;;; Code:

(require 'emacspeak-preamble)

(when (fboundp 'emidje-mode)
  (cl-loop
   for f in
   '(
     emidje-next-error emidje-previous-error
     emidje-next-failure emidje-previous-failure
     emidje-next-result emidje-previous-result
     emidje-jump-to-test-definition
     cider-pop-back)
   do
   (eval
    `(defadvice ,f (after emacspeak pre act comp)
       "Provide auditory feedback"
       (when (ems-interactive-p)
         (emacspeak-auditory-icon 'large-movement)
         (emacspeak-speak-line))))))

(provide 'init-accessibility-improvements)

;;; init-accessibility-improvements.el ends here
