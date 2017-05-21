#!/usr/bin/python

"""A script that checks for updates on the Manchester CS Vacation Jobs."""
import requests
import webbrowser


ROOT = 'http://studentnet.cs.manchester.ac.uk/'
VACJ = 'employment/vacationjobs/'
YEAR = 2017
PROJECT = 1
PROJECT_FORMAT = '/project{}.pdf'

OKGREEN = '\033[92m'
FAIL = '\033[91m'
ENDC = '\033[0m'


URL = ROOT + VACJ + str(YEAR) + PROJECT_FORMAT.format(PROJECT)

request = requests.get(URL)
if request.status_code != 404:
    print OKGREEN + 'Summer jobs for {} are UP!!!'.format(YEAR) + ENDC
    webbrowser.open_new_tab(URL)
else:
    print FAIL + 'Summer jobs for {} are NOT up, yet.'.format(YEAR) + ENDC

