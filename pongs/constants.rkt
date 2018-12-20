#lang racket

(require 2htdp/universe 2htdp/image)

;; Pong prototype - One player versus the machine.

;;----- Constants definitions

;; Numerical constants

(define ZERO 0)
(define ONE 1)
(define TWO 2)
(define THREE 3)
(define FOUR 4)
(define FIVE 5)
(define SIX 6)


;; Physical constants

(define-values (WIDTH HEIGHT) (values 1000 650))
(define-values (CANVAS-WIDTH CANVAS-HEIGHT) (values 1000 650))

(define BALL-IMAGE (bitmap "BALL.png"))
(define BALL (scale 0.1 BALL-IMAGE))
(define-values (BALL-WIDTH BALL-HEIGHT) (values 55 55))

(define-values (WIDTH-BAR HEIGHT-BAR) (values 40 100))
(define BAR (rectangle WIDTH-BAR HEIGHT-BAR "solid" "black"))

(define BACKGROUND (rectangle WIDTH HEIGHT "solid" "darkgreen"))

(define-values (DISP TICK PAUSED?) (values 10 0.003 #f))

(define-values (BOUNDARY LEFT RIGHT) (values 10 5 (- CANVAS-WIDTH 5)))

(define GAME-OVER (bitmap "GAMEOVER.png"))