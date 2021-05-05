ARG GOOGLE_CLOUD_SDK_IMAGE_TAG=339.0.0-alpine

FROM google/cloud-sdk:$GOOGLE_CLOUD_SDK_IMAGE_TAG
RUN apk --no-cache add openjdk11-jre-headless
RUN gcloud --quiet components install beta pubsub-emulator

ADD run.sh /opt/emulators/pubsub/run.sh

# The data directory to be used for the emulator run
VOLUME /data

# Port(s) used by the pubsub emulator
EXPOSE 8085

ENTRYPOINT [ "/opt/emulators/pubsub/run.sh" ]

