#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# dydrmntion@gmail.com

import sys
from acpi import acpi



_, status, percent, seconds, time = acpi()[0]

if __name__ == '__main__':
    output = []
    color = False
    if len(sys.argv) == 1:
        output.append(u'\uF0e7')
        if status == 'Discharging':
            color = '#666666'
    else:
        output.append('{0}'.format(percent))
    output += output
    if color:
        output.append(color)
    print('\n'.join(output))
