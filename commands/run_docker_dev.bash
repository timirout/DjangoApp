#!/bin/bash

echo "Hello POST!"

python manage.py migrate --settings=post.settings.${MODE}
python manage.py collectstatic --noinput --settings=post.settings.${MODE}
python manage.py runserver --settings=post.settings.${MODE} 0:${WSGI_PORT}