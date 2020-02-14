FROM aroq/toolbox:0.2.1

RUN mkdir -p /toolbox-secrets
COPY ./* /toolbox-secrets

ENTRYPOINT ["/toolbox-secrets/tools/gpg"]
