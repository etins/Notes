(define (p) (p))

(define (test x y) 
    (if (= x 0)
        0
        y
    )    
)

(test 0 (p))

; “完全展而后归约” 正则序求值； “先求值而后应用”的方式，应用序求值
; 如果是正则序，在调用 (test 0 (p)) 时，先不对 (p) 求值，而是进入 test 中展开，发现 x = 0 即返回 0， 未对 (p) 求值。
; 如果是应用序，在调用 (test 0 (p)) 时， 先对 (p) 求值，而函数 p 是一个递归调用自己的函数。进入死循环。