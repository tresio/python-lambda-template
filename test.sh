#!/bin/bash

./load_env.sh

sam local invoke --profile "${PROFILE}" --region "${REGION}" -t ./template.yaml -e ./tests/test_event.json
