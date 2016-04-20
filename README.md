Role Name
=========

An Ansible role for aggregating logs.

Requirements
------------

This role assumes it will be executed against OpenStack systems deployed using
C.A.T..

Role Variables
--------------

* artcl_archive_list: -- Files and directories which will be archived
  - /var/log/
    ...
  - /etc/selinux
* artcl_artifact_url: <''> -- URL which the controller will attempt to rsync logs to
* artcl_gzip_only: <false>  -- If true, logs will not be tarballed and their file hierarchy will be maintained when fetched
* artcl_rsync_logs: <false> -- If true, role will attempt to rsync logs to remote server. Note: expects env variables BUILD_URL, BUILD_TAG, and PROVISIONER_KEY to be set on localhost

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