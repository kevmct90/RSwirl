####################################################################################
## Author: Kevin 
## 07-Jan-2014
## Swirl 
####################################################################################

# 1: R Programming: The basics of programming in R

# 1: Basic Building Blocks


# | If at any point you'd like more information on a particular topic related to R, you can type help.start() at the
# | prompt, which will open a menu of resources (either within RStudio or your default web browser, depending on your
# | setup). Alternatively, a simple web search often yields the answer you're looking for.

x <- 5 + 7

x

y <- x - 3

y

# | Now, let's create a small collection of numbers called a vector. Any object that contains data is called a 
# | data structure and numeric vectors are the simplest type of data structure in R. In fact, even a single 
# | number is considered a vector of length one.

# | The easiest way to create a vector is with the c() function, which stands for 'concatenate' or 'combine'. To
# | create a vector containing the numbers 1.1, 9, and 3.14, type c(1.1, 9, 3.14). Try it now and store the result
# | in a variable called z.
z <- c(1.1, 9, 3.14)
z

# | You can combine vectors to make a new vector. Create a new vector that contains z, 555, then z again in that
# | order. Don't assign this vector to a new variable, so that we can just see the result immediately.
c(z, 555,z)

# | Numeric vectors can be used in arithmetic expressions. Type the following to see what happens: z * 2 + 100.
z*2+100

# | First, R multiplied each of the three elements in z by 2. Then it added 100 to each element to get the result
# | you see above.

# | Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 means 'x squared'). To take the square
# | root, use the sqrt() function and to take the absolute value, use the abs() function.

my_sqrt <- sqrt(z-1)
my_sqrt

my_div <- z/my_sqrt
my_div

# | When given two vectors of the same length, R simply performs the specified arithmetic operation (`+`, `-`, `*`,
# | etc.) element-by-element. If the vectors are of different lengths, R 'recycles' the shorter vector until it is
# | the same length as the longer vector.

# | Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a vector of 100s. In other
# | words, when you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2) + c(100, 100,
# | 100).

c(1,2,3,4)+c(0,10)

# | If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still
# | apply the 'recycling' method, but will throw a warning to let you know something fishy might be going on.
c(1,2,3,4) + c(0,10,100)

