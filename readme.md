## Tools for using nscc

Greatly thank ZhangSu's code and tutorial for the detailed instruction on NSCC.

### Preparation
- change `PROJECT_CODE` and `TASK_NAME` in assets/g*.pbs to your own
- Change the location of sif and arguments in your main.py accordingly
- Refer to `nscc_ZhangSu.md` for more details

### Usage
- `python3 batch_qsub.py` to submit lots of jobs
- `watch -n 10 ./watch_jobs.sh` to check the status of all the jobs
- `./cancel_all_jobs.sh` to cancel all the jobs

### Example 
batch submission of jobs with different arguments on one GPU node
```python
import os
for dataset in ["Dataset1", "Dataset2"]:
    for model in ["model1", "model2"]:
        for arg in ["arg1", 'arg2']:
            cmd = f"qsub -v dataset={dataset},model={model},arg={arg} asset/g1.pbs"
            os.system(cmd)
            print(cmd)
```
