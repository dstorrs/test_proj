#lang racket

(define non-empty-bytes/c (and/c bytes? (negate (curry equal? #""))))

(define/contract (wrap content)
  (-> any/c non-empty-bytes/c)
  (error "not written")
  )
