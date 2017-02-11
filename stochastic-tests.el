(load-file "./stochastic.el")
(require 'stochastic)

(ert-deftest stochastic-tests ()
  (should (eql t (numberp (stochastic-exp 20)))))
