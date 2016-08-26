Copying over customized instackenv.json, network-environment.yaml, nic-configs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

``instackenv.json`` file is generated from a template in tripleo-quickstart:
<https://github.com/openstack/tripleo-quickstart/blob/master/roles/libvirt/setup/overcloud/tasks/main.yml#L91>.
A customized ``instackenv.json`` can be copied to the undercloud by overwriting the
``undercloud_instackenv_template`` variable with the path to the customized file.

See the TripleO developer documentation for an explanation of, and example of the ``instackenv.json`` file,
<http://docs.openstack.org/developer/tripleo-docs/environments/environments.html#instackenv-json>

Similarly, the ``network-environment.yaml`` file is generated from a template,
<https://github.com/openstack/tripleo-quickstart/blob/master/roles/tripleo/undercloud/tasks/post-install.yml#L32>
A customized ``network-environment.yaml`` file can be copied to the undercloud by overwriting the
`` network_environment_file`` variable with the path to the customized file.

By default, the virtual environment deployment uses the standard nic-configs files are there is no
ready section to copy custom nic-configs files.
The ``ansible-role-tripleo-overcloud-prep-config`` repo includes a task that copies the nic-configs
files if they are defined,
<https://github.com/redhat-openstack/ansible-role-tripleo-overcloud-prep-config/blob/master/tasks/main.yml#L15>
