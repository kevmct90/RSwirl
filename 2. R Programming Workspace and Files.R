####################################################################################
## Author: Kevin 
## 18-Jan-2014
## Swirl 
####################################################################################

library(swirl)
ls()
rm(list=ls())
swirl()

# 2: R Programming Workspace and Files

# | In this lesson, you'll learn how to examine your local workspace in R and begin to explore the relationship
# | between your workspace and the file system of your machine.

# | Determine which directory your R session is using as its current working directory using getwd().
getwd()

# | List all the objects in your local workspace using ls().
ls()

# | Instead, we will word the questions in such a way that a web search should lead you to the appropriate R
# | command. In this case, searching for "R list objects workspace" should work well.)
# | Assign 9 to x using x <- 9.
x <- 9

# | List all the files in your working directory.
list.files()

# | Pull up the help for list.files().
?list.files

# | List all the files in your working directory recursively --- that is, including the files in any 
# subdirectories.
list.files(recursive = TRUE)

# | Using the args() function on a function name is also a handy way to see what arguments a function can take.
# | Use the args() function to determine the arguments to list.files().
args(list.files)

# | Assign the value of the current working directory to a variable called "old.dir".
old.dir <- getwd()

# | Create a directory in the current working directory called "testdir".
dir.create("testdir")


# | We will do all our work in this new directory and then delete it after we are done. This is the R analog to
# | "Take only pictures, leave only footprints."
# | Set your working directory to "testdir".
setwd("testdir")

# | Create a file in your working directory called "mytest.R".
file.create("mytest.R")

# | Check to see if "mytest.R" exists in the working directory
file.exists("mytest.R")

# | These sorts of functions are excessive for interactive use. But, if you are running a program that 
# loops through a series of files and does some processing on each one, you will want to check to see 
# that each exists before | you try to process it.

# | Access information about the file "mytest.R". That is, what command, along with the appropriate argument, 
# will | return information about the file "mytest.R"?
file.info("mytest.R")

# | You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific items.

# | Change the name of the file "mytest.R" to "mytest2.R".
# | file.rename("mytest.R", "mytest2.R") is the answer. Again, Googling using key words from the question, along
# | with the letter R, will often give you a good hint.
file.rename("mytest.R", "mytest2.R")

# | Your operating system will provide simpler tools for these sorts of tasks. But having the ability to manipulate
# | files programatically is useful. You might now try to delete mytest.R using file.remove("mytest.R"), but that
# | won't work since mytest.R no longer exists. You have already renamed it.

# | Make a copy of "mytest2.R" called "mytest3.R".
file.copy("mytest2.R", "mytest3.R")

# | You now have two files in the current directory. That may not seem very interesting. But what if you were
# | working with dozens, or millions, of individual files? In that case, being able to programatically act on many
# | files would be absolutely necessary. Don't forget that you can, temporarily, leave the lesson by typing play()
# | and then return by typing nxt().

# | Provide the full path to the file "mytest3.R".
file.path("mytest3.R")

# | dir.create("testdir2/testdir3", recursive = TRUE) works. If you forgot the recursive argument, the 
# command may | have appeared to work. Why?
dir.create("testdir2/testdir3", recursive = TRUE)

# | Delete the "testdir2" directory that you created.
unlink("testdir2", recursive = FALSE)

# | Again, you need the recursive = TRUE argument. Otherwise, R is concerned that you are unaware that, when
# | deleting testdir2, you are also deleting testdir3, which is nested within it. R reasons that, if you don't 
# | tell it that recursive equals TRUE, you don't know that something is in testdir2. So, it tries to prevent you 
# | from making a mistake.

# | Why is this command named "unlink" rather than something more sensible like "dir.delete" or "dir.remove"?
# | Mainly, history. unlink is the traditional Unix command for removing directories.

# | Go back to your original working directory. (Recall that we created the variable old.dir with the full 
# | path for the orginal working directory at the start of these questions.)
setwd(old.dir)

# | It is often help to save the settings that you had before you began an analysis and the go back to them at 
# | the end. This trick is often used within functions; you save, say, the par() settings that you started with, 
# | mess around a bunch, and then set them back to the original values at the end. This isn't the same as what we 
# | have done here, but it seems similar enough to mention.

# | Delete the "testdir" directory that you just left (and everything in it)
unlink("testdir", recursive = TRUE)

