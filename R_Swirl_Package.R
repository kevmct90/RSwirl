## Package: swirl
## Title: Learn R, in R.
## Description: swirl turns the R console into an interactive learning
## environment. Users receive immediate feedback as they are guided through
## self-paced lessons in data science and R programming.

####################################################################################
## Author: Kevin 
## 07-Jan-2014
## Swirl 
####################################################################################

# To see a list of the variables in your workspace
ls()

# To clear workspace 
rm(list=ls())

# Load Swirl
library(swirl)

# Type when you are ready to begin
swirl()

# | Thanks, Kevin. Let's cover a few quick housekeeping items before we begin our first lesson.
# | First of all, you should know that when you see '...', that means you should press Enter when
# | you are done reading and ready to continue.

# | Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to select from a list,
# that means it's your turn to enter a response, then press Enter to continue.

# | You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key. If you are already at the
# | prompt, type bye() to exit and save your progress. When you exit properly, you'll see a short message letting you
# | know you've done so.
# 
# | When you are at the R prompt (>):
#   | -- Typing skip() allows you to skip the current question.
# | -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
# | -- UNTIL you type nxt() which will regain swirl's attention.
# | -- Typing bye() causes swirl to exit. Your progress will be saved.
# | -- Typing main() returns you to swirl's main menu.
# | -- Typing info() displays these options again.
# 
# | Let's get started!