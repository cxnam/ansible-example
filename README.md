# Installing Ansible

  Ansible can be installed via pip, the Python package manager. If pip isn’t already available in your version of Python, you can get pip by:
  ``` sh
    $ sudo easy_install pip
    $ sudo pip install ansible
 ```
# Clone project
``` sh
  $  cd [workdir]
  $  git clone git@abc.zyx:go-training/provistioning.git
  $  cd provistioning
```
# Action
Change config in host file: ../develop
``` sh
   $ ansible-playbook -i develop develop.yml
```
Enjoy~~~~!
