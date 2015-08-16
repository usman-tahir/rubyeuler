#!/usr/bin/env swift
// sicp exercise 2.3

func cons<T>(x: T, y: T) -> (T, T) {
  return (x,y)
}

func car<T>(x: (T, T)) -> T {
  return x.0
}

func cdr<T>(x: (T,T)) -> T {
  return x.1
}

func makePoint<T>(x: T, y: T) -> (T, T) {
  return cons(x,y)
}

func xPoint<T>(point: (T,T)) -> T {
  return car(point)
}

func yPoint<T>(point: (T,T)) -> T {
  return cdr(point)
}

func makeSegment<T>(startSegment: (T,T), endSegment: (T,T)) -> ((T,T),(T,T)) {
  return cons(startSegment,endSegment)
}

func makeRect<T>(botL: (T,T), topR: (T,T)) -> ((T,T),(T,T)) {
  return cons(botL,topR)
}

func rectWidth(rect: ((Double,Double),(Double,Double))) -> Double {
  return xPoint(cdr(rect)) - xPoint(car(rect))
}

func rectHeight(rect: ((Double,Double),(Double,Double))) -> Double {
  return yPoint(cdr(rect)) - yPoint(car(rect))
}

func area(rect: ((Double,Double),(Double,Double))) -> Double {
  return rectHeight(rect) * rectWidth(rect)
}

func perimeter(rect: ((Double,Double),(Double,Double))) -> Double {
  return (2 * rectWidth(rect)) + (2 * rectHeight(rect))
}

let x = makePoint(10.00,10.0)
let y = makePoint(45.0,26.0)
let r = makeRect(x,y)
println(area(r))
println(perimeter(r))