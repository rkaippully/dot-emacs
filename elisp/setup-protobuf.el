;;
;; Personal emacs configuration
;;
;; Copyright (C) Raghu Kaippully. All rights reserved.
;;
;; Protobuf environment
;;

(use-package protobuf-mode
  :hook
  ((protobuf-mode . (lambda ()
                      (c-add-style "protobuf-style"
                                   '((c-basic-offset . 2)
                                     (indent-tabs-mode . nil)))))))

(provide 'setup-protobuf)
