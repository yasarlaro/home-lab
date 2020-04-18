yasarlaro.kvm
=========

Installs KVM hypervisor on supported operating system.

Requirements
------------

Server has to support CPU virtualization and has be one of the below operating systems:
 - CentOS 7
 - CentOS 8

Role Variables
--------------

Role variables can be found under "vars" directory. Variable files are importanted based on the operationg system.

Dependencies
------------

There is no dependency on any other role or module

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: yasarlaro.kvm }

License
-------

MIT License
