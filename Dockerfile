FROM ineentho/concourse-dind:0.0.1

RUN apk --no-cache add bash docker curl

RUN curl -L https://github.com/aelsabbahy/goss/releases/download/0.3.6/goss-linux-amd64 -o /usr/local/bin/goss \
    chmod +rx /usr/local/bin/goss \
    curl -L https://raw.githubusercontent.com/aelsabbahy/goss/0.3.6/extras/dgoss/dgoss -o /usr/local/bin/dgoss \
    chmod +rx /usr/local/bin/dgoss
