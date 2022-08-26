import os
import random
import sys

#os.system("rm output.txt")
os.system("rm params.txt")

print(sys.argv[1])
iters = int(float(sys.argv[1]))

'''
GN_CM , TARGETVOLUME_CM (x1000), INELAST_CM, DETACH_CM, 
GN_FB ,TARGETVOLUME_FB (x1000), INELAST_FB, DETACH_FB, 
JCMMD, JFBMD, JCMCM, JFBFB, JFBCM, 
ULEASH_CM, ULEASH_FB, == 0
LMAX_CM, LMAX_FB, 
MAX_FOCALS_CM, MAX_FOCALS_FB
'''

# unleash doesn't matter

val=[47.5,0.899,151,10,27,1.5,71,12,400,307,0,0,0,0,0,48.6,71, 16, 14]
diap=[0.5, 0.413, 10, 1, 0, 0, 0, 0, 80, 20, 0, 0, 0, 0, 0, 11.1, 0, 5, 0]

for i in range(iters):

    
    values = [(v+2*d*(random.random()-0.5)) for v, d in zip(val,diap)]
# 	values = val

    params = "%d,%d" % (
        random.randint(1,100),
        1001,
    ) 
    print(params)
    list_2 = ",".join(str(val) for val in values)
    print(list_2)
    params+=','
    params += list_2
    print(params)
    #for k in range(len(values)):
    #    params+=','
    #    params += str(values[k])
    #print(values[0])
    #print(params)

    os.system("./cpmfem -p "+params)
    os.system("echo \"{"+params+"}\" >> params.txt")
    os.system("cp -r output output_{}".format(i))
    os.system("python draw.py 1001 500 1 {}".format(i))

#     os.system("/usr/local/bin/MathKernel -noprompt -run params_true.m")
#     os.system("math -noprompt -run \"<<params_true.m\"")
