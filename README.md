# Developer's System
--------------------

A developer system provisioned using vagrant with settings for virtualbox, deploys with ArtWeb.

## Install Instructions
-----------------------

### Install pre-requisites:

1. Install VirtualBox. It also works with WMWare, Hyper-V etc.
2. Install Git with commandline tools.
3. Install Vagrant.

### Deploy System:

- Open command prompt and enter:``` git clone https://github.com/aazhbd/dev_sys.git ```

- Change directory in command prompt or shell to enter into the newly created dev_sys folder and enter: ``` vagrant up ```

- Once the system is up and running and finished provisioning itself, open web browser and set address to: ``` http://localhost:8080/ ```
It should open the default page for ArtWeb framework for PHP5. You can work with the project in the dev_sys/data/ArtWeb folder.

- Once the system is up and running and finished provisioning itself, to work with the system itself: ``` vagrant ssh ```

- To stop the system, enter: ``` vagrant halt ```
Or enter shutdown command with sudo from inside the system.

- To reprovision the system, enter:
```
vagrant provision
or
vagrant up --provision
```


### License
-----------

The code is released under MIT License.


### Contact
-----------

AAZH (aazhbd@yahoo.com)
