"""Module providing functions to calculate grains for a square and total for chessboard"""

from functools import reduce

def square(number):
    """Calculate the number of grains on a given square.

    :param number: int - square number on on chessboard.
    :return: int - number of grains on given square `number`.
    """
    if number < 1 or number > 64:
        raise ValueError("square must be between 1 and 64")
    
    # each square doubles its predecessor's number ==> base 2
    # square 1 = index 0 -> 2^index = 2^0 = 1
    # square 2 = index 1 -> 2^index = 2^1 = 2
    # square 3 = index 2 -> 2^index = 2^2 = 4
    # square 4 = index 3 -> 2^index = 2^3 = 8
    # square 5 = index 4 -> 2^index = 2^4 = 16
    # pattern = 2^(index = square number - 1), where square 1 = index 0
    base: int = 2
    power: int = number - 1
    return base ** power


def total():
    """Calculate the total number of grains on the chessboard of 64 squares.

    :return: int - total number of grains on the chessboard.
    """
    squares: list = range(1,65)
    return reduce(lambda total, current_square: total + square(current_square), squares)
