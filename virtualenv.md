## How to create Virtual env for python.

# two methods
# First method

```
pip3 install virtualenv

root@dev-server01:~# mkdir /virt-env

root@dev-server01:~# virtualenv /virt-env
created virtual environment CPython3.8.10.final.0-64 in 229ms
  creator CPython3Posix(dest=/virt-env, clear=False, no_vcs_ignore=False, global=False)
  seeder FromAppData(download=False, pip=bundle, setuptools=bundle, wheel=bundle, via=copy, app_data_dir=/root/.local/share/virtualenv)
    added seed packages: pip==22.2.2, setuptools==65.3.0, wheel==0.37.1
  activators BashActivator,CShellActivator,FishActivator,NushellActivator,PowerShellActivator,PythonActivator
  
root@dev-server01:~# source /virt-env/bin/activate
(virt-env) root@dev-server01:~#

(virt-env) root@dev-server01:~# deactivate
root@dev-server01:~#
```
# Second method
```
root@dev-server01:~# apt -y install python3-venv
root@dev-server01:~# python3 -m venv /opt/my_first_venv
root@dev-server01:~#

root@dev-server01:~# ls /opt/my_first_venv
bin  include  lib  lib64  pyvenv.cfg  share

root@dev-server01:~# cd /opt/

root@dev-server01:/opt# source my_first_venv/bin/activate
(my_first_venv) root@dev-server01:/opt#
```
