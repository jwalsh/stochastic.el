(require 'f)

(defvar stochastic-test-path
  (f-dirname (f-this-file)))

(defvar stochastic-code-path
  (f-parent stochastic-test-path))

(defvar stochastic-sandbox-path
  (f-expand "sandbox" stochastic-test-path))

(require 'stochastic (f-expand "stochastic.el" stochastic-code-path))

(defmacro with-sandbox (&rest body)
  "Evaluate BODY in an empty temporary directory."
  `(let ((default-directory stochastic-sandbox-path))
     (when (f-dir? stochastic-sandbox-path)
       (f-delete stochastic-sandbox-path :force))
     (f-mkdir stochastic-sandbox-path)
     ,@body))

(ert-deftest stochastic-tests ()
  (should (fboundp 'stochastic-poiss-p))
  (should (fboundp 'stochastic-norm))
  (should (fboundp 'stochastic-brown))
  (should (fboundp 'stochastic-gbm))
  (should (fboundp 'stochastic-dtmc))
  (should (fboundp 'stochastic-ctmc))
  (should (fboundp 'stochastic-sample))
  (should (fboundp 'stochastic-pareto))
  (should (fboundp 'stochastic-hist))
  (should (eql t t)))

(ert-deftest stochastic-internal ()
  (should (eql t (numberp (stochastic--exp 20))))
  (should (stochastic--matrixp [[1 2] [3 4]]))
  (should (eql t (numberp (rnd))))
  (should (eql 2 (length (stochastic-sample [1 2 3 4 5 6] 2))))
  (should (eql t t)))
