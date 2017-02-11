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

;;; Code:

(defgroup stochastic ()
  "Stochastic modeling."
  :prefix "stochastic-"
  :group 'math)

;;; Utilities

(defun stochastic-matrixp (matrix)
  "Valid transition (NxN) MATRIX."
  nil)

(defun stochastic-box-muller (mu sigma)
  "Point of mean MU and standard deviation SIGMA.")

(defun stochastic-exp (rate)
  "Exponential random number with rate RATE."
  (/ (log (random 100)) rate))
;; (stochastic-exp 20)

(defun stochastic-collate (states)
  "Transtion matrix of mapped STATES.")

;;; Export

(defun stochastic-poiss-p (rate times path)
  "Arrival times in a Poisson Process with rate RATE, positive number TIMES, and boolean PATH."
  (make-vector times 0))
;; (stochastic-poiss-p 1 5 t)

(defun stochastic-norm (mu sigma num)
  "Normal vector of MU mean and SIGMA standard deviation and NUM normal random variables provides a vector of NUM values.")

(defun stochastic-brown (mu sigma time steps path)
  "Brownian motion vector of drift parameter MU, SIGMA volatility, time TIME, for a number of STEPS.  Optional PATH to obtain a single value.")

(defun stochastic-gbm (s0 mu sigma time steps path)
    "Geometric Brownian motion vector of initial value S0, drift parameter MU, SIGMA volatility, time TIME, for a number of STEPS.  Optional PATH to obtain a single value.")

(defun stochastic-dtmc (trans-matrix steps start path)
  "Discrete-time Markov Chain of transition matrix TRANS-MATRIX of a number STEPS, given a string number START.  Optional PATH to give only a single value.")

(defun stochastic-ctmc (trans-matrix steps start path)
  "Continuous-time Markov Chain of transition matrix TRANS-MATRIX of a number STEPS, given a string number START.  Optional PATH to give only a single value.")

(defun stochastic-sample (arr n)
  "Random sample from initial vector ARR of size N.")

(defun stochastic-pareto (x-m alpha)
  "Pareto random variables with positive number X-M and ALPHA."
  (/ x-m (expt (random 100) (/ 1 alpha))))
;; (stochastic-pareto 10 -1)

(defun stochastic-hist (arr)
  "Historgram object given a sample of ARR.")

(provide 'stochastic)

;;; stochastic.el ends here
