#!/usr/bin/env python
"""
Usage:
    script [options]

Options:
    -h --help       Show this help.
    -v --version    Show the version
"""
from docopt import docopt

def main(args):
    print args

if __name__ == '__main__':
    main(docopt(__doc__, version='Script 1.0'))
