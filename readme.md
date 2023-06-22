## Tools for using nscc

Great thanks for ZhangSu's code and document

### Preparation
- change `PROJECT_CODE` and `TASK_NAME` in assets/g*.pbs to your own
- Chaneg the location of sif and arguments in your main.py accordingly
- Refer to `nscc_ZhangSu.md` for more details

### Usage
- `python3 batch_qsub.py` to submit lots of jobs
- `watch -n 10 ./watch_jobs.sh` to check the status of all the jobs
- `./cancel_all_jobs.sh` to cancel all the jobs