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
  (should (eql t (numberp (stochastic-exp 20)))))
