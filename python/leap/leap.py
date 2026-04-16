"""Function to determine if year is a leap year."""

def leap_year(year):
    """ Determine whether a given year is a leap year.

        :param year: int - input year.
        :return: bool - result.

        A leap year (in the Gregorian calendar) occurs:
            - In every year that is evenly divisible by 4.
            - Unless the year is evenly divisible by 100, in which case 
            it's only a leap year if the year is also evenly divisible by 400.
    """
   
    if divisible_by(year, 100):
        return divisible_by(year, 400)
    
    return divisible_by(year, 4)


def divisible_by(year: int, divisor: int) -> bool:
    """Determine if a year is divisible by a divisor.
        :param year: int - input year.
        :param divisor: int - used to check if year is evenly divisible by it.
        :return: bool - result.
    """
    return (year % divisor) == 0