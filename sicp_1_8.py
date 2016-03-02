#!/usr/bin/env python

def abs_(x):
  if x < 0:
      return -x
  else:
      return x


def cube(x):
    return x * x * x


def iter_improve(update, test, guess=1):
    while not test(guess):
        guess = update(guess)
    return guess


def cube_root(a):
    return find_root(lambda x: cube(x) - a)


def logarithm(a, base=2):
    return find_root(lambda x: pow(base, x) - a)


def approx_derivative(f, x, delta=1e-5):
    df = f(x + delta) - f(x)
    return df/delta


def approx_eq(x, y, tolerance=1e-5):
    return abs_(x - y) < tolerance


def newton_update(f):
    def update(x):
      return x - f(x) / approx_derivative(f, x)
    return update


def find_root(f, initial_guess=10):
    def test(x):
        return approx_eq(f(x), 0)
    return iter_improve(newton_update(f), test, initial_guess)


print(cube_root(27))
print(cube_root(8))