#!/usr/bin/env bash
TARGET_NAME=decision-sciences

fly login -t decision-sciences --team-name ds-global-peacock -c https://concourse-mgmt.nbcupea.mgmt.nbcuott.com/

fly set-pipeline -t decision-sciences -c "pipeline2.yml" -p "test-pipeline2"
