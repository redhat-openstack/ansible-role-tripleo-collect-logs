Role Name
=========

An Ansible role for aggregating logs.

Requirements
------------

This role assumes it will be executed against OpenStack systems deployed using
C.A.T..

Role Variables
--------------

* archive_list: -- Files and directories which will be archived
  - /var/log/
    ...
  - /etc/selinux
* gzip_only: <false>  -- If true, logs will not be tarballed and their file hierarchy will be maintained when fetched
* rsync_logs: <false> -- If true, role will attempt to rsync logs to remote server. Note: expects env variables BUILD_URL and PROVISIONER_KEY to be set on localhost

Dependencies
------------

TBD

Example Playbook
----------------

    ----
    - name: Gather logs
      hosts: all:!localhost
      roles:
        - ansible-role-tripleo-collect-logs

License
-------

Apache

Author Information
------------------

RDO-CI Team