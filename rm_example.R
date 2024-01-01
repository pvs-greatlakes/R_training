#
# use rm() to delete objects in memory
# 
ax	<- 1:10
ay	<-	ax^2
az	<-	ax+2
# to delete an object ax
rm(ax)
# to delete both objects mean_x and mean_y
rm(ay, az)
# to delete all objects in memory
rm(list=ls())
print(ls(pat="^a"))
print(ls())
