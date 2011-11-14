#!/bin/bash
acpi | cut -f3- -d' ' | sed 's/ remaining//' | sed 's/Discharging, //' | sed 's/Charging, /C/'
exit 0
