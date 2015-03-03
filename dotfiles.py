#!/usr/bin/env python2.7
# -*- coding: utf-8 -*-
# dydrmntion@gmail.com


import shutil
import json
import os


def main():
    with open('dotfiles.json') as f:
        files = json.load(f)
        basedir = os.getcwd()

        create_symlinks(files['dotfiles'], basedir)

        create_symlinks(files['~'], os.path.expanduser('~'))


def create_symlinks(files, basedir):
    print "creating symlinks from basedir: {}".format(basedir)
    for src, dest in files.items():
        print src, dest
        path_src = os.path.join(basedir, src)
        path_dest = os.path.join(os.path.expanduser('~'), dest)
        dest_parts = path_dest.lstrip(os.path.expanduser('~')).split('/')
        cur = os.path.expanduser('~')

        # create parent dirs if needed
        for n, part in enumerate(dest_parts):
            cur = os.path.join(cur, part)
            if n < len(dest_parts) - 1:
                if not os.path.isdir(cur):
                    try:
                        os.mkdir(cur)
                    except OSError as e:
                        print e
                        continue
        
        if os.path.exists(path_dest):
	    if os.path.islink(path_dest):
	        try:
		    print path_dest
   	            shutil.rmtree(path_dest)
 		except:
		    print -1
            	    continue
        try: 
            os.symlink(path_src, path_dest)
        except OSError as e:
            print e
        else:
            print "{} > {}".format(path_src, path_dest)


if __name__ == '__main__':
    main() 
