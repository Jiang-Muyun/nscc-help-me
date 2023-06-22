import os
# watch -n 10 "./watch_nscc.sh"
for dataset in ["Dataset1", "Dataset2"]:
    for model in ["model1", "model2"]:
        for arg in ["arg1", 'arg2']:
            cmd = f"qsub -v dataset={dataset},model={model},arg={arg} asset/g1.pbs"
            os.system(cmd)
            print(cmd)