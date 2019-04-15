(defparameter *path1* "hello-world.c")
(defparameter *path2* "hello-world.cpp")
(defparameter *str1* "")
(defparameter *str2* "")

(defun readfile ()
    (with-open-file (infile1 "hello-world.c"
                              :direction :input)
    (with-open-file (infile2 "hello-world.cpp"
                              :direction :input)                          
        (do ((line1 (read-line infile1 nil 'eof) (read-line infile1 nil 'eof)))
            ((eql line1 'eof) 'done)
            (format t "~a~%" line1)
        )
        (do ((line2 (read-line infile2 nil 'eof) (read-line infile2 nil 'eof)))
            ((eql line2 'eof) 'done)
            (format t "~a~%" line2)
        )
   )
)
(readfile)