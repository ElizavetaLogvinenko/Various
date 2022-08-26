import os

os.system("python various_work_0107.py")
os.system("python potts_runner.py")
os.system("cd /home/andrey/Desktop/potts/'math potts'")
for i in range(1):
	os.system("cp -r /home/andrey/last_backup_0107/vct_pdms_edge/output_{} /home/andrey/Desktop/potts/'math potts'".format(i))
	os.system("./home/andrey/Desktop/potts/math potts/exe_script.wls")
	os.system("mv /home/andrey/Desktop/potts/'math potts'/output_{} /home/andrey/Desktop/potts/'math potts'/output".format(i))
	os.system("cp -r /home/andrey/Desktop/potts/'math potts'/maps /home/andrey/Desktop/potts/'math potts'/maps_{}".format(i))
