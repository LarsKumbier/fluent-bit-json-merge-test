#!/bin/bash

set -ex

pushd talk-json-to-me/
docker build --tag larskumbier/talk-json-to-me .
docker push larskumbier/talk-json-to-me
popd

pushd talk-other-format/
docker build --tag larskumbier/talk-other-format .
docker push larskumbier/talk-other-format
popd

pushd fluentd/
docker build --tag larskumbier/fluentd .
docker push larskumbier/fluentd
popd