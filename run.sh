#!/bin/sh

if [ -n "${PUBSUB_PROJECT_ID}" ]; then
	gcloud config set project ${PUBSUB_PROJECT_ID}
fi

gcloud beta emulators pubsub start \
	--data-dir=/data \
	--host-port=0.0.0.0:8085

