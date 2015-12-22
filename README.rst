s3-config-overlay
=================
A container that will synchronize configuration from Amazon S3 to itself,
allowing for other containers to mount the configuration from it.

Synchronized configuration files are exported via the ``export`` volume.

|Layers| |Stars| |Pulls|

Example Usage
-------------
Given config in ``/etc/myconfig`` in a S3 bucket named ``com-mybucket`` you would do the following:

.. code:: bash

  # Start the s3-config-overlay container
  docker run --name=app-config -v /etc/myconfig s3-config-overlay com-mybucket/my/config /etc/myconfig

  # Start the app that needs the config
  docker run --volumes-from=app-config my-docker-image

The config files should now be in the ``/etc/myconfig`` directory in the
container instance running for ``my-docker-image``.

.. |Stars| image:: https://img.shields.io/docker/stars/aweber/s3-config-overlay.svg?style=flat&1
   :target: https://hub.docker.com/r/aweber/s3-config-overlay/

.. |Pulls| image:: https://img.shields.io/docker/pulls/aweber/s3-config-overlay.svg?style=flat&1
   :target: https://hub.docker.com/r/aweber/s3-config-overlay/

.. |Layers| image:: https://img.shields.io/imagelayers/image-size/aweber/s3-config-overlay/latest.svg?style=flat&1
    :target: https://hub.docker.com/r/aweber/s3-config-overlay/
