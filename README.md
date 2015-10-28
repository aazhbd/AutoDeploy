# Developer's System

A developer system provisioned using vagrant with settings for virtualbox, deploys with ArtWeb. A Linux system with Vivid Vervet and it automatically provisions the system with Apache2, PHP5, MySQL and MySQL related PHP packages, also includes Python and related tools.

### Install Instructions

#### Install prerequisites:
---------------------------

1. Install VirtualBox. It also works with VMWare, Hyper-V etc.
2. Install Git with commandline tools.
3. Install Vagrant.

#### Deploy System:
-------------------

- Open command prompt and enter:``` git clone https://github.com/aazhbd/dev_sys.git ```

- Change directory into the newly created dev_sys folder and enter: ``` vagrant up ```

- Once the system is up and finished provisioning itself, open web browser and set address to: ``` http://localhost:8080/ ```

It should show the deails of the PHP5 installation and it contains a link on the top to the default page for ArtWeb framework for PHP5. You can work with the project in the dev_sys/data/ArtWeb folder.

- Once the system is up, to work with the system itself: ``` vagrant ssh ```

- To stop the system, enter: ``` vagrant halt ```
Or enter shutdown command with sudo from inside the system.

- To reprovision the system, enter:
```
vagrant provision
or
vagrant up --provision
```
Reprovisioning the system will upgrade the system packages and try to change in any existing ArtWeb directory.


### License
-----------

The code is released under MIT License.


### Contact
-----------

AAZ H (aazhbd@yahoo.com)
