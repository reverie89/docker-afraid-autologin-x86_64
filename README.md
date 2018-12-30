# Autologin for afraid.org by reverie89

* Based on https://github.com/inderpreet99/afraid-autologin
* Changed to use Chrome instead of PhantomJS/Firefox
* Docker container for convenience

## Prerequisites
1. Docker `curl -sSL https://get.docker.com/ | sh`
2. [docker-compose](https://docs.docker.com/compose/install/) `sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose && docker-compose --version`

## Deploy
1. Download `docker-compose.yaml`
2. Put `docker-compose up -d` onto a cronjob
Example to run on 2nd of every 3 months at 9:35AM:
`35 9 2 */3 * docker-compose -f /opt/docker/afraid-autologin/docker-compose.yaml up -d --build --force-recreate > /dev/null 2>&1`
3. ???
4. Profit!