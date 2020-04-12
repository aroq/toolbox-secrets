#!/usr/bin/env bash

# shellcheck disable=SC1090
# shellcheck disable=SC1091

if [ -f toolbox/.secrets/env ]; then
    set -a
    . toolbox/.secrets/env
    set +a
fi

_log WARNING "toolbox/.secrets/env.${TOOLBOX_TOOL_NAME}"

if [ -f "toolbox/.secrets/env.${TOOLBOX_TOOL_NAME}" ]; then
    set -a
    . "toolbox/.secrets/env.${TOOLBOX_TOOL_NAME}"
    set +a
fi

env | grep ACQUIACLI || true
