# CenCal Ruby Code Kata Refactor Challenge #1

In the July 2017 meetup we tackled a fairly challenging and convoluted code
kata: https://www.codewars.com/kata/statistics-for-an-athletic-association/train/ruby/59681abdaf23b4970a0009cc

We solved it..... but it left a bad taste in a lot of peoples mouths.

This is an initial refactor done by Justin to use a class! Woot! Let's
do some refactoring and discuss PR's!

## Instructions

You are the "computer man" of a local Athletic Association (C.A.A.). Many teams of runners come to compete. Each time you get a string of all race results of every team who has run. For example here is a string showing the individual results of a team of 5:

`"01|15|59, 1|47|6, 01|17|20, 1|32|34, 2|3|17"`

Each part of the string is of the form: h|m|s where h, m, s are positive or null integer (represented as strings) with one or two digits. There are no traps in this format.

To compare the results of the teams you are asked for giving three statistics; range, average and median.

Range : difference between the lowest and highest values. In {4, 6, 9, 3, 7} the lowest value is 3, and the highest is 9, so the range is 9 − 3 = 6.

Mean or Average : To calculate mean, add together all of the numbers in a set and then divide the sum by the total count of numbers.

Median : In statistics, the median is the number separating the higher half of a data sample from the lower half. The median of a finite list of numbers can be found by arranging all the observations from lowest value to highest value and picking the middle one (e.g., the median of {3, 3, 5, 9, 11} is 5) when there is an odd number of observations. If there is an even number of observations, then there is no single middle value; the median is then defined to be the mean of the two middle values (the median of {3, 5, 6, 9} is (5 + 6) / 2 = 5.5).

Your task is to return a string giving these 3 values. For the example given above, the string result will be

`"Range: 00|47|18 Average: 01|35|15 Median: 01|32|34"

of the form:

`"Range: hh|mm|ss Average: hh|mm|ss Median: hh|mm|ss"`

where hh, mm, ss are integers (represented by strings) with each 2 digits.

Remarks:

1. if a result in seconds is ab.xy... it will be given truncated as ab.
2. if the given string is "" you will return ""

## Running the tests

```bash
$ rspec
```

That's all. The basic test cases from the original kata are included, but it
would be nice to get a few more test cases in here.

## Submit a PR

Have an idea for a different solution? Fork it and create a PR! We will discuss
as a group! Just make sure your tests are green before submitting!
