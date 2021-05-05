ARG GOOGLE_CLOUD_SDK_IMAGE_TAG=339.0.0-emulators

FROM google/cloud-sdk:$GOOGLE_CLOUD_SDK_IMAGE_TAG
ADD run.sh /opt/emulators/pubsub/run.sh

# The data directory to be used for the emulator run
VOLUME /data

# Port(s) used by the pubsub emulator
EXPOSE 8085

ENTRYPOINT [ "/opt/emulators/pubsub/run.sh" ]

