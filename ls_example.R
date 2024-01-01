# to restrict the list of objects whose names 
# contain the word mean
ls (pat = "mean")
print(ls (pat = "mean"))
# to restrict the list of objects whose names 
# begin with the word mean
ls (pat = "^mean")
print(ls (pat = "^mean"))
# to display the internal structure of the object 
# defined by ls(pat = "mean")
ls.str(pat = "mean")
print(ls.str(pat = "mean"))
