'''
add number of folders (i+1) output_i to multiple drawing 
'''

import numpy as np
import sys
import os
from numpngw import write_png

def make_image(n_int, CMs_ind,i):

	n = str(n_int)
	
	table=np.loadtxt('./output_{}/ctags'.format(i)+n+'.out', skiprows=1)
	img = np.ones(table.shape+(3,), dtype=np.uint8)*255
	print(table.shape+(3,))
	conts=np.loadtxt('./output_{}/contactM'.format(i)+n+'.out', skiprows=1)	
	fibs=np.loadtxt('./output_{}/fib.out'.format(i), skiprows=1)	

	edges = np.zeros(table.shape, dtype = np.uint8)
	vert = table[:,1:] != table[:,:-1]
	hor  = table[1:,:] != table[:-1,:]
	edges[:,1:]   = vert
	edges[:,:-1] += vert
	edges[1:,:]  += hor
	edges[:-1,:] += hor
	edges = np.uint8(edges != 0)

	is_CM = np.vectorize(lambda x: x in CMs_ind)

	null = np.uint8(table == 0)
	CMs = is_CM(table).astype('uint8')
	FBs = np.ones_like(table) - null - CMs

	f = 0;
	cont_edges = edges
	if sys.argv[3] != "0":		#if not 0, show contacts/attachments at least on the edge of the cell
		f = 0.5
	if sys.argv[3] == "2":		#if 2, show all of the attachment sites, even those under the cell
		cont_edges = 1 

	img[:,:,0] = conts*255
	img[:,:,1] = edges*255
	#write_png("./imgs/conts.png", img)

	Fibs = fibs * (1-CMs) * (1-FBs) * 255 * 0.1

	img[:,:,0] = CMs*(1-0.5*edges)*255 + FBs*(1-0.5*edges)*255 + f*conts*cont_edges*CMs*255 + f*conts*cont_edges*FBs*255 + Fibs
	img[:,:,1] = FBs*(1-0.5*edges)*255 + 2*f*conts*cont_edges*CMs*255 + f*conts*cont_edges*FBs*255 + Fibs
	img[:,:,2] = FBs*(1-0.5*edges)*255 - f*conts*cont_edges*FBs*255 + Fibs


	areas = np.zeros(4)
	conv = (2.5/1000)**2 #to mm
	areas = (np.sum(CMs)*conv,np.sum(FBs)*conv)
	# for making medium from photo
	#for i in range(table.shape[0]//4, 3*table.shape[0]//4):
	#	for j in range(table.shape[0]//4, 3*table.shape[0]//4):
	#		img[i, j, :] = 1

	write_png("./imgs_{}/example%05d.png".format(i) % n_int, img)

	return areas

i = int(sys.argv[4])
print(i)
os.system('mkdir imgs_{}'.format(i))

types=np.loadtxt('./output_{}/types.out'.format(i), dtype=np.uint8)
CMs_ind = np.where(types==1)[0]+1
FBs_ind = np.where(types==2)[0]+1

print('N CMs:',len(CMs_ind),'; N FBs:',len(FBs_ind),'; % FBs:', 1.0*len(FBs_ind)/(len(CMs_ind)+len(FBs_ind)))

print("MCS (CMs area, FBs area):")


for n in range(0,int(sys.argv[1]),int(sys.argv[2])):
	print(n,make_image(n, CMs_ind, i))

