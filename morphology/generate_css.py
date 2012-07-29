#!/usr/bin/python
import ConfigParser

def get_config():
    '''The get_config() method returns a ConfigParser object that
    contains the values in theme.cfg. See README for more information.'''
    config = ConfigParser.SafeConfigParser()
    config.read('theme.cfg')
    return config

def generate_css():
    config = get_config()
    template = '''/*
Theme Name: Placeholder
Theme URI: Placeholder
Description: Placeholder
Author: Placeholder
Version: Placeholder
License: Placeholder
License URI: Placeholder
Tags: Placeholder
Text Domain: Placeholder
*/'''
    return template

if __name__ == '__main__':
    print generate_css()
