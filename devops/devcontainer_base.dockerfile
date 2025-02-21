# This is the default devcontainer environment setup for your project.
#
# This can be extended with additional user specific customizations
# by creating another dockerfile script that sets the FROM line
# to `FROM capstone:<version>` where <version> matches the version number
# unique to your team.  Adjust the the build/dockerfile path as needed
# to find your local custom dockerfile.  This is commonly done to add
# user specific --mount locations to share additional files between the
# host and container environments.


# To build this manually:
# 1. Ensure the docker service is running.
# 2. Open a terminal shell session in this directory.
# 3. Invoke `docker build -t capstone:<version> -f ../devops/devcontainer_base.dockerfile .` where <version> is whatever version number you like, generally in the form of major.minor.patch.

# To run this container manually:
# 1. Ensure the docker service is running.
# 2. Invoke `docker run --rm --it capstone:<version>` where <version> matches the version number of the build you want to use.

# To publish a new prebuilt version of the container to share with your group via GitHub, do the following:
# TODO

FROM ubuntu:24.04

WORKDIR /local/

RUN apt update \
    && apt install -y git \
    && apt install -y g++ \
    && apt install -y python3.12

ENTRYPOINT ["bash"]
