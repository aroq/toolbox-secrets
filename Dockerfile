FROM aroq/toolbox-variant:0.1.52

# Add git-secret package from edge testing
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing git-secret && \
    apk --no-cache add gnupg

RUN mkdir -p /toolbox/toolbox-secrets
ADD tools /toolbox/toolbox-secrets/tools
ADD variant-lib /toolbox/toolbox-secrets/variant-lib

ENV TOOLBOX_TOOL_DIRS toolbox,/toolbox/toolbox-secrets
