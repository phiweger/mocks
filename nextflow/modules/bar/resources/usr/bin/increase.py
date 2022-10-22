#!/usr/bin/env python


import argparse
import sys


parser = argparse.ArgumentParser()
parser.add_argument('--by', default=1, type=int)
parser.add_argument('--value', required=True, type=int)
args = parser.parse_args()


sys.stdout.write(f'{args.value + args.by}\n')
sys.exit(0)