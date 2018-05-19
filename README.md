# ansible-role-node\_exporter

Installs the Node Exporter for Prometheus.

[![Build Status](https://travis-ci.org/bdellegrazie/ansible-role-node_exporter.svg?branch=master)](https://travis-ci.org/bdellegrazie/ansible-role-node_exporter)

# Requirements

Requires Ansible role `bdellegrazie.ansible-role-prometheus_exporter`

# Role Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `node_exporter_version`| Version of the exporter to use | `0.15.2` |
| `node_exporter_tarball_checksum` | checksum of the tarball | sha1 checksum of 0.15.2 tarball |
| `node_exporter_options`| Command line options | [] |

The following option is always provided: `-collector.textfile.directory /var/lib/node_exporter`
Ensures the textfile capability is enabled
Other variables are in defaults/main.yml

# Dependencies

    `bdellegrazie.ansible-role-prometheus_exporter`

# Example Playbook

    - hosts: all
      roles:
        - { role: bdellegrazie.node_exporter }

# License

GPLv3

Author Information
------------------

https://github.com/bdellegrazie/ansible-role-node_exporter
