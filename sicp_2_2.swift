#!/usr/bin/env swift
// sicp exercise 2.2

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

func midpointSegment(segment: ((Int,Int),(Int,Int))) -> (Int,Int) {
  let newX = ((xPoint(car(segment)) + xPoint(cdr(segment))) / 2)
  let newY = ((yPoint(car(segment)) + yPoint(cdr(segment))) / 2)
  return makePoint(newX,newY)
}

let (start, end) = (makePoint(1,1), makePoint(6,6))
println(midpointSegment(makeSegment(start,end)))
