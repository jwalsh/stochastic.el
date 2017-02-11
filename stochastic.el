;;; stochastic.el --- Stochastic modeling  -*- coding: utf-8 -*-

;; Copyright (C) 2017  Free Software Foundation, Inc.

;; Author: Jason Walsh <j@wal.sh>
;; Version: 0.1
;; Package-Requires: ((emacs "24"))

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This provides utilties associated with stochastic modeling.

;;; Code

(require 'cl-lib)

;;; Utilities

(defun stochastic-matrix-valid-p (matrix)
  nil)

(defun stochastic-box-muller (mu sigma))

(defun stochastic-exp (rate)
  (/ (log (random 100)) rate))
;; (stochastic-exp 20)

(defun stochastic-collate (states))

;;; Export

(defun stochastic-poiss-p (rate times path)
  (make-vector times 0))
;; (stochastic-poiss-p 1 5 t)

(defun stochastic-norm (mu sigma num))

(defun stochastic-brown (mu sigma time steps path))

(defun stochastic-gbm (s0 mu sigma time steps path))

(defun stochastic-dtmc (trans-matrix steps start path))

(defun stochastic-ctmc (trans-matrix steps start path))

(defun stochastic-sample (arr n))

(defun stochastic-pareto (x-m alpha)
  (/ x-m (expt (random 100) (/ 1 alpha))))
;; (stochastic-pareto 10 -1)

(defun stochastic-hist (arr))

(provide 'stochastic)
