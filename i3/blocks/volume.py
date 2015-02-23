#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# dydrmntion@gmail.com

import sys

from alsaaudio import Mixer


m = Mixer()


if __name__ == '__main__':
    output = ["{}   {}".format(u'\uf001', m.getvolume()[0])]
    color = False
    if m.getmute()[0]:
        color = '#666666'
    output += output
    if color:
        output.append(color)
    print('\n'.join(output))
