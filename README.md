# home-lab

Build your lab infrastructure with Infrastructure as Code approach

## Getting Started

This repository will allow you to prepare your lab environment with various components like Virtualbox, vagrant, jenkins, etc. Please see the roles to see the different components

### Prerequisites

You need to have a bare metal server to be used as your hypervisor server. For now only Centos 7 / 8 versions have been tested.
Please be sure that you have passwordless ssh authentication to your hypervisor server with admin user account specified in [infrastructure.yml](vars/infrastructure.yml) file

### Installing

You need to change the [inventory](inventory) file and provide IP address of your hypervisor server.

Please also take a look at [infrastructure.yml](vars/infrastructure.yml) file and make changes based on your lab environment like network subnet and bridge adapter.

You can enable roles that you would like to install in your environment like below in [main.yml](main.yml) file

```
---
- name: Setup Lab Infrastructure Play
  hosts: hypervisor
  vars_files:
    - vars/infrastructure.yml
  remote_user: "{{ admin_user }}"
  roles:
    #- role: yasarlaro.virtualbox
    #  become: yes
    #- role: yasarlaro.vagrant
    #  become: yes
    - role: yasarlaro.jenkins-vagrant
```

Then you can run the playbook as below:

```
ansible-playbook -i inventory main.yml
```
### License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.