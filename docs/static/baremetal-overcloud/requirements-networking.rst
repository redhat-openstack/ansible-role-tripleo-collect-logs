Minimum System Requirements
---------------------------

By default, tripleo-quickstart requires 3 machines:

* 1 Undercloud (can be a Virtual Machine)
* 1 Overcloud Controller
* 1 Overcloud Compute

Commonly, deployments include HA (3 Overcloud Controllers) and multiple Overcloud Compute nodes.

Each Overcloud machine requires at least:

* 1 quad core CPU
* 8 GB free memory
* 60 GB disk space

The undercloud VM or baremetal machine requires:

* 1 quad core CPU
* 16 GB free memory
* 80 GB disk space

Networking
----------

With a Virtual Environment, tripleo-quickstart sets up the networking as part of the workflow.
The networking arrangement needs to be set up prior to working with tripleo-quickstart.

.. include:: ../../tripleo-docs/doc/source/environments/baremetal.rst
     :start-after: Networking
     :end-before: Setting Up The Undercloud Machine

