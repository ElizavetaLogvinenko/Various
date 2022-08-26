import os
import sys

print('print iter number')
iters = int(input())
os.system("python various_work_0107.py {}".format(iters))
os.system("python model_data_proc_CM.py {}".format(iters))
os.system("python model_data_proc_FB.py {}".format(iters))
os.system("python p2-1_compare.py {}".format(iters))
