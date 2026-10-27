# -*- coding: utf-8 -*- #
"""Cloud SDK static completion CLI tree."""
# pylint: disable=line-too-long,bad-continuation
STATIC_COMPLETION_CLI_TREE = {
  "commands": {
    "compute": {
      "commands": {
        "instances": {
          "commands": {
            "create": {
              "commands": {},
              "flags": {
                "--cpu-count": [
                  1,
                  2,
                  4
                ],
                "--machine-type": "value",
                "--zone": "dynamic"
              }
            },
            "list": {
              "commands": {},
              "flags": {}
            }
          },
          "flags": {}
        }
      },
      "flags": {}
    },
    "config": {
      "commands": {
        "set": {
          "commands": {},
          "flags": {
            "--delimiter": [
              "\\n",
              "it's"
            ]
          }
        }
      },
      "flags": {}
    }
  },
  "flags": {
    "--help": "bool",
    "--verbosity": [
      "debug",
      "info"
    ]
  }
}
