# Project: CombineWords BDD Automation
# Author: Ion Gireada

# BDD Automation for a function that 
# takes two strings 
# and returns a string containing the common characters of the two characters
# and character count in descending order.
#
# e.g. with "teste" and "teae" the result should be "e2t1"
#
# characters appear in ascending order.
# letter count appear in descending order.
# the resulting string does not have count
# in the resulting string, the first characters has the the largest count.
# in the resulting string, starting with second character, the count is always lower than the previous number.
# and the number indicates a number of occurrences in the two strings.
#

Feature: Build a string from two strings

    The resulting string contains letters common in both input strings.
    In the resulting string, letters are ordered alphabetically.
    Each letter is followed by a number which represents how many times
    the letter in the strings and is always lower than the number
    of the previous letter. Numbers appear in descending
    order and are greater than zero.

    Scenario: Throw exception when needed
        Given either first or second strings are null
        When the function uses the two strings
        Then the function throws an error.

    Scenario: Empty strings return an empty string.

        Given The first string is empty
        Given The second string is empty
        When the function uses the two strings
        Then the result is an empty string ""

    Scenario: One of the strings is empty
        Given The first string is empty
        Given The second string contains letters
        When the function uses the two strings
        Then The result is an empty string ""

    Scenario: Different strings result in an empty string
        Given the first string is "a"
        Given the second string is "b"
        When the function gets the two strings
        Then the result is an empty string ""

    Scenario: Strings with common letters result is correct string
        Given the first string is "bab"
        Given the second string is "aab"
        When the function gets the two strings
        Then the result is "a2b1"

    Scenario: Two empty strings
        Given first string is empty
        Given second string is empty
        When execute the function with the strings
        Then the result is an empty string

    Scenario: Empty string and non-empty string
        Given first string is empty
        Given second string is not empty
        And second string contains only non-visible characters
        When execute the function with the two strings
        Then the result is an empty string

    Scenario: Both strings are non-empty
        Given first string is non-empty
        Given second string is non-empty
        And first string contains only non-visible characters
        And second string contains only non-visible characters
        When execute the function with the two strings
        Then the result is an empty string

    Scenario: Meet example requirement
        Given first string has visible characters "teste"
        Given second string has visible characters "teae"
        And there are characters common in both strings
        When execute the function with the two strings
        Then the result contains both common letters "e" and "t"
        Then the result contains letter in alphabetical order "e", "t"
        Then the result contains numbers in descending order "2", "1"
        Then the result contains groups of letter number "e2", "t1"
        Then the number of the first letter is the greatest number of occurrences of the letter in strings
        And each number of following letters is an occurence of the letter
        And the result is "e2t1"

    Scenario: No letters appear in the result after a letter with count 1
        Given the first string is "electron@code"
        Given the second string is "ponicode@"
        When execut the function with the two strings
        Then the result is "@1"

    Scenario: Common letters no not appear after count 1
        Given the first string is "electroncode"
        Given the second string is "ponicode"
        When execut the function with the two strings
        Then the result is "c2e1"
