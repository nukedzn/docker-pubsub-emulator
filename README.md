# Docker image for Google Pub/Sub Emulator

This is purely a concenience docker image based on [Google Cloud SDK emulator image](https://github.com/GoogleCloudPlatform/cloud-sdk-docker).

Main use case for this is to be used as a GitHub workflow [service contrainer](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idservices)
due to the GitHub workflow limitation of not being able to override the entrypoint
to run the Pub/Sub Emulator using Google provided docker images directly (as of May 2021).

