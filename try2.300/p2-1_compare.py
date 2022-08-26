import numpy as np
import sys

best_arr = []
exp_data = np.array([[925.9, 462.96],
                     [848.8, 385.8],
                     [48.6, 11.1],
                     [0.89, 0.1]])
diff_array = []
sqr_sum_arr = []
min_arr = []
iters =int(sys.argv[1]) 
print(iters)      


for i in range(iters):
    model_data = np.load('current_par_CM_{}.npy'.format(i),allow_pickle=True)

    area_diff, CD_diff, diam_diff, ratio_diff = None,None,None,None
    
    for j in range(len(model_data[0])):
        if model_data[0][j] == 'area':
            model_data_area = model_data[1][j][1]*2.5**2
            area_diff = abs(exp_data[0][0] - model_data_area)
        if model_data[0][j] == 'convex_area':
            model_data_CD = model_data[1][j][1]*2.5**2
            CD_diff = abs(exp_data[1][0] - model_data_area)
        if model_data[0][j] == 'diam':
            model_data_diam = model_data[1][j][1]*2.5
            diam_diff = abs(exp_data[2][0] - model_data_area)
        if model_data[0][j] == 'ratio':
            model_data_ratio = model_data[1][j][1]
            ratio_diff = abs(exp_data[3][0] - model_data_area)


    curr_diff_array = np.array([area_diff, CD_diff, diam_diff, ratio_diff])
    diff_array.append(curr_diff_array)
    
    
    if None in curr_diff_array:
        pass
    else:
        sqr_sum_arr.append(curr_diff_array[0]**2 + curr_diff_array[1]**2 + curr_diff_array[2]**2 + 
                               curr_diff_array[3]**2)
        min_arr.append(i)
print('CM best iter is {}'.format(min_arr[np.argmin(sqr_sum_arr)]))
print('CM best value is {}'.format(min(sqr_sum_arr)))
best_arr.append(min_arr[np.argmin(sqr_sum_arr)])


exp_data_FB = np.array([[1543, 694],
                     [1620, 694],
                     [71, 14],
                     [0.87, 0.1]])

diff_array = []
sqr_sum_arr = []
min_arr = []


for i in range(iters):
    model_data = np.load('current_par_FB_{}.npy'.format(i),allow_pickle=True)

    area_diff, CD_diff, diam_diff, ratio_diff = None,None,None,None
    
    for j in range(len(model_data[0])):
        if model_data[0][j] == 'area':
            model_data_area = model_data[1][j][1]*2.5**2
            area_diff = abs(exp_data_FB[0][0] - model_data_area)
        if model_data[0][j] == 'convex_area':
            model_data_CD = model_data[1][j][1]*2.5**2
            CD_diff = abs(exp_data_FB[1][0] - model_data_area)
        if model_data[0][j] == 'diam':
            model_data_diam = model_data[1][j][1]*2.5
            diam_diff = abs(exp_data_FB[2][0] - model_data_area)
        if model_data[0][j] == 'ratio':
            model_data_ratio = model_data[1][j][1]
            ratio_diff = abs(exp_data_FB[3][0] - model_data_area)


    curr_diff_array = np.array([area_diff, CD_diff, diam_diff, ratio_diff])
    diff_array.append(curr_diff_array)
    
    
    if None in curr_diff_array:
        pass
    else:
        sqr_sum_arr.append(curr_diff_array[0]**2 + curr_diff_array[1]**2 + curr_diff_array[2]**2 + 
                               curr_diff_array[3]**2)
        min_arr.append(i)
        
        
print('FB best iter is {}'.format(min_arr[np.argmin(sqr_sum_arr)]))
print('FB best value is {}'.format(min(sqr_sum_arr)))
best_arr.append(min_arr[np.argmin(sqr_sum_arr)])


np.save('best_arr.npy', best_arr)
