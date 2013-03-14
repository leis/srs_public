
(cl:in-package :asdf)

(defsystem "srs_decision_making-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "errors" :depends-on ("_package_errors"))
    (:file "_package_errors" :depends-on ("_package"))
  ))