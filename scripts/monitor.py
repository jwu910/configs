#!/usr/bin/python3

import subprocess
import time


MONITOR = 'LVDS'


def restore():
    subprocess.call(['/home/joshua/configs/scripts/set_monitor.sh'])
    subprocess.call(['nitrogen', '--restore'])
    subprocess.call(['/home/joshua/configs/scripts/polybar/polybar.sh'])


def activate_dp():
    global MONITOR
    MONITOR = 'DP'
    restore()


def deactivate_dp():
    global MONITOR
    MONITOR = 'LVDS'
    restore()


def dp_active():
    return MONITOR == 'DP'


def dp_connected():
    xrandr_output = subprocess.check_output(['xrandr']).decode('utf-8')

    display_count = xrandr_output.count(' connected ')

    return display_count >= 2


def main():
    deactivate_dp()

    while True:
        if dp_connected() and not dp_active():
            activate_dp()
        elif not dp_connected() and dp_active():
            deactivate_dp()

        time.sleep(5)


main()
