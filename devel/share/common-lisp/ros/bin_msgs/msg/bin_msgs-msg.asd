
(cl:in-package :asdf)

(defsystem "bin_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Target" :depends-on ("_package_Target"))
    (:file "_package_Target" :depends-on ("_package"))
  ))