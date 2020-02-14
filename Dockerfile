FROM aroq/toolbox:0.2.1

RUN mkdir -p /toolbox-secrets
ADD tools /toolbox-secrets/tools
ADD variant-lib /toolbox-secrets/variant-lib

ENTRYPOINT ["/toolbox-secrets/tools/secrets"]
