;;; -*- lisp -*-

(in-package #:lispbuilder-sdl-gfx) 

#+win32(eval-when (:compile-toplevel :load-toplevel :execute)
  (pushnew (merge-pathnames "../bin/" (directory-namestring (or *load-truename* *default-pathname-defaults*)))
	   cffi:*foreign-library-directories*
	   :test #'equal))

(cffi:define-foreign-library sdl-gfx
  (:darwin (:framework "libSDL_gfx"))
  (:windows "SDL_gfx.dll")
  (:unix (:or "libSDL_gfx" "libSDL_gfx.so" "libSDL_gfx.so.13" "libSDL_gfx.so.13.0.0")))

(cffi:use-foreign-library sdl-gfx)
