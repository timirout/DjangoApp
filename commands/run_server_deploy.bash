#!/bin/bash

echo "Hello PRIME!"

python manage.py migrate --settings=prime.settings.${MODE}
python manage.py collectstatic --noinput --settings=prime.settings.${MODE}
python manage.py runserver --settings=prime.settings.${MODE} 0:${WSGI_PORT}
