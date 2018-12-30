FROM lsiobase/alpine.python

COPY requirements.txt default_settings.py app.py /

COPY entrypoint.sh /usr/local/bin/

RUN echo "http://dl-4.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories \
&&  echo "http://dl-4.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories \
&&  apk update \
&&  apk add chromium chromium-chromedriver \
&&  pip install --no-cache-dir -r requirements.txt \
&&  chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT "/usr/local/bin/entrypoint.sh"
