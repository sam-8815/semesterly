#!/bin/bash

echo starting;
cd /code
# TODO: No params does not honor active-only semesters, this is hardcoded for now
/usr/bin/python manage.py ingest jhu --term Spring --years 2019;
/usr/bin/python manage.py digest jhu;

/usr/bin/python manage.py ingest jhu --term Fall --years 2018;
/usr/bin/python manage.py digest jhu;

echo done;