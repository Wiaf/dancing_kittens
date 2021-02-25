#!/usr/bin/python
# Read out all installed packages on an apt based system #

#Import the needed libraries
import apt, sys, re


#generic Progress message
print ("Writing package List to file, please wait...")

#Open apt Cache
cache = apt.Cache()

#print to out.txt , write while list is generated via the for loop
with open ('tmp', 'w') as file:
    for pkg in cache:
        if pkg.is_installed:
            file.write("{}\n".format(pkg.versions))
            #print ("Package is: ",pkg.name, "Version:",pkg.versions,)

#generic Progress message
print ("Done writing package List to file.")

# converting file to string and then regexp magic - regexp non working
with open ('tmp', 'r') as file:
           readFile =file.readlines()

           for line in readFile:
               m = re.match("([^=]+)", line )
               #print(m)
               with open ('out.txt', 'w') as file:
                   file.write("{}\n".format(m))
