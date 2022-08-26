#!/usr/bin/env python
# coding: utf-8

# In[1]:


import os


# In[ ]:

for i in range(3):

	#os.system("make example1; make")
	#os.system("./cpmfem -m -f -p 0,1801")
	#os.system("cd output_{}".format(i))
	os.system("python draw.py 1801 200 1 {}".format(i))

