#!/bin/bash

set -e

exec service nginx restart

exec "$@"
