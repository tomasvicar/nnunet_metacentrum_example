# nn-UNet metacentrum example

To run your Pytorch code with GPU on [Metacentrum](https://metavo.metacentrum.cz/) -  you can just add your Python code ang your data.

### How to run this example:

1. upload code and dat to storage (e.g. with WinSCP)
2. 
![winscp_login](readme_imgs/winscp_login.PNG)
![winscp_upload](readme_imgs/winscp_upload.PNG)

2. connet to front node using SSH (e.g. with PuTTY)

![putty_login](readme_imgs/putty_login.PNG)


3. go to strage directory with code

```
cd /storage/brno3-cerit/home/username/Metacentum_GPU_Pytorch_example/code
```

4. run pbs script

```
qsub run_metacentrum.pbs
```

![putty_run](readme_imgs/putty_run.PNG)

5. check for outputs - results an logs

![winscp_results](readme_imgs/winscp_results.PNG)
![winscp_logs](readme_imgs/winscp_logs.PNG)
