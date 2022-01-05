#!/usr/bin/python3

import string
from random import choice
chars = string.ascii_letters + string.digits
key = ''.join([choice(chars) for i in range(50)])
print("key = '{}'\n".format(key))
