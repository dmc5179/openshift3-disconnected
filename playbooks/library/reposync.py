#!/bin/env python3

import abc
import argparse
import base64
import json
import magic
import os
import pathlib
import stat
import yaml

from ansible.module_utils.basic import AnsibleModule


ANSIBLE_METADATA = {
    'metadata_version': '1.1',
    'status': ['preview'],
    'supported_by': 'community'
}

DOCUMENTATION = '''
---
module: reposync

short_description: Sync RPM Repos

version_added: "2.4"

description:
    - "This is my longer description explaining my test module"

options:
    name:
        description:
            - This is the message to send to the test module
        required: true
    new:
        description:
            - Control to demo if the result of this module is changed or not
        required: false

author:
    - Dan Clark (@dmc5179)
'''

EXAMPLES = '''
# Pass in a message
- name: Test with a message
  my_test:
    name: hello world

# pass in a message and have changed true
- name: Test with a message and changed output
  my_test:
    name: hello world
    new: true

# fail the module
- name: Test failure of the module
  my_test:
    name: fail me
'''

RETURN = '''
original_message:
    description: The original name param that was passed in
    type: str
    returned: always
message:
    description: The output message that the test module generates
    type: str
    returned: always
'''


__version__ ='0.1.0'

def main():

    global module

    module = AnsibleModule(
        argument_spec=dict(
            repo=dict(type='str', required=True),
            dest=dict(type='path', required=True),
            metadata=dict(type='bool', required=False),
            newest_only=dict(type='bool', default=False)
        ),
        supports_check_mode=False,
    )

    command = 'reposync --repoid=' + module.params['repo'] + ' -n -p ' + module.params['dest']

    rc, out, err = module.run_command(command)

    if rc != 0:
        module.fail_json(
            msg='Failed to run {command}: {err}'.format(
                command=command, err=err))

    results = dict(
        changed=True,
        repo=module.params['repo'],
    )

    module.exit_json(**results)

if __name__ == '__main__':
    main()
