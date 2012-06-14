#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys, os
import _winreg
import errno

EXECUTABLE_NAME = 'gvim.exe'
EDIT_WITH = r'*\shell\Edit with Vim'
EDIT_IN_NEW_TAB = r'*\shell\Edit with Vim in new tab'


class ErrorExit(Exception):
    pass


def already_registered():
    try:
        key = _winreg.OpenKey(_winreg.HKEY_CLASSES_ROOT, EDIT_WITH)
        key.Close()

    except WindowsError:
        return False

    return True


def register(executable_path):
    # Escape '\' charactes
    executable_path = executable_path.replace('\\', '\\\\')
    folder_key = _winreg.CreateKey(_winreg.HKEY_CLASSES_ROOT, EDIT_WITH)

    key = _winreg.CreateKey(folder_key, r'command')
    _winreg.SetValueEx(key, None, 0, _winreg.REG_SZ,
                       '"{0}" "%1" %*'.format(executable_path))

    key.Close()
    folder_key.Close()
    folder_key = _winreg.CreateKey(_winreg.HKEY_CLASSES_ROOT, EDIT_IN_NEW_TAB)

    key = _winreg.CreateKey(folder_key, r'command')
    _winreg.SetValueEx(key, None, 0, _winreg.REG_SZ,
                       '"{0}" --remote-tab-silent "%1" %*'.format(executable_path))

    key.Close()
    folder_key.Close()


def unregister():
    def del_if_exist(key):
        try:
            _winreg.OpenKey(_winreg.HKEY_CLASSES_ROOT, key).Close()
            _winreg.DeleteKey(_winreg.HKEY_CLASSES_ROOT, key)

        except WindowsError as details:
            if details.errno != errno.ENOENT:
                raise

    try:
        del_if_exist(EDIT_WITH + '\\command')
        del_if_exist(EDIT_WITH)
        del_if_exist(EDIT_IN_NEW_TAB + '\\command')
        del_if_exist(EDIT_IN_NEW_TAB)

    except WindowsError as details:
        raise ErrorExit('WindowsError, {0}: {1}'.format(
            details, os.strerror(details.errno)))


def get_givm_executable_path():
    ''' Returns path (str) or None
    '''
    dirs = [os.path.abspath(os.path.curdir),
            os.path.split(os.path.abspath(os.path.curdir))[0]]

    for directory in dirs:
        gvim_executable = os.path.join(directory, EXECUTABLE_NAME)

        if os.path.isfile(gvim_executable):
            break
    else:
        return None

    return os.path.normpath(gvim_executable)


def main(argv):

    gvim_executable = get_givm_executable_path()

    if gvim_executable is None:
        raise ErrorExit('Cannot find "gvim.exe" put this file in $VIM dir')

    if already_registered():
        unregister()
        print('Unregister gvim in file context menu')
    else:
        register(gvim_executable)
        print('Register gvim in file context menu')

    return 0


if(__name__ == '__main__'):
    try:
        sys.exit( main(sys.argv) )

    except ErrorExit as details:
        print(details)

    sys.exit(1)

