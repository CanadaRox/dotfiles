#!/bin/bash
acpi | cut -f3- -d' ' | sed 's/ remaining//' | sed 's/Discharging, //' | sed 's/Charging, /C: /' | sed 's/ until charged//'
exit 0
