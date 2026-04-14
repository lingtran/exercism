"""Collatz Conjecture Exercism"""

def steps(number) -> int:
    """Given a positive integer, return the number of steps it takes to reach 1 according to the rules of the Collatz Conjecture.

        :param number: int - input number.
        :return: int - number of steps it takes to reach 1.
    """
    
    if number <= 0:
        raise ValueError("Only positive integers are allowed")

    return collatz_conjecture(number)


def collatz_conjecture(number: int, current_step: int = 0) -> int:
    """Determine steps recursively.

        :param number: int - input number.
        :param current_step: int - current step before determining the number needs to change.
        :return: int - number of steps it takes to reach 1 according to rules.
    """

    if number == 1:
        return current_step
    
    result: int = run_rules(number)
    return collatz_conjecture(result, current_step+1)


def run_rules(number: int) -> int:
    """Change number according to Collatz Conjecture rules.

        :param number: int - input number.
        :return: int - changed number according to rules.
    """

    if (number % 2) == 0:
        return number / 2
    
    return (number * 3) + 1
