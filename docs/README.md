# Supported tags and respective `Dockerfile` links

## Simple Tags

-	[`latest` (*Dockerfile*)](https://github.com/buzzsurfr/parameter_store_demo/blob/master/Dockerfile)

# Quick reference

-	**Where to get help**:  
	[the Docker Community Forums](https://forums.docker.com/), [the Docker Community Slack](https://blog.docker.com/2016/11/introducing-docker-community-directory-docker-community-slack/), or [Stack Overflow](https://stackoverflow.com/search?tab=newest&q=docker)

-	**Where to file issues**:  
	[https://github.com/buzzsurfr/parameter_store_demo/issues](https://github.com/buzzsurfr/parameter_store_demo/issues)

-	**Maintained by**:  
	[buzzsurfr](https://github.com/buzzsurfr)

-	**Supported architectures**: ([more info](https://github.com/docker-library/official-images#architectures-other-than-amd64))  
	[`amd64`](https://hub.docker.com/r/amd64/hello-world/)

-	**Source of this description**:  
	[repo's `docs/` directory](https://github.com/buzzsurfr/parameter_store_demo/docs) ([history](https://github.com/buzzsurfr/parameter_store_demo/commits/master))

-	**Supported Docker versions**:  
	[the latest release](https://github.com/docker/docker-ce/releases/latest) (down to 1.6 on a best-effort basis)

# Example output

```console
$ docker run parameter_store_demo \
>   -e "AWS_DEFAULT_REGION=_<AWS_DEFAULT_REGION>_"
>   -e "AWS_ACCESS_KEY_ID=_<AWS_ACCESS_KEY_ID>_"
>   -e "AWS_SECRET_ACCESS_KEY=_<AWS_SECRET_ACCESS_KEY>_"
>   -e "GREETING=_<GREETING>_|GREETING"
>   -e "NAME=_<NAME>_|NAME"

parameter store: HelloWorld

$ docker images parameter_store_demo
REPOSITORY             TAG                 IMAGE ID            SIZE
parameter_store_demo   latest              99fd8bb05f26        117MB
```

# How is this image created?

This image is created using the `python` image based on `alpine-3.7` as a way to demonstrate AWS Parameter Store within a container.

# License

View [license information](https://github.com/buzzsurfr/parameter_store_demo/blob/master/LICENSE) for the software contained in this image.

As with all Docker images, these likely also contain other software which may be under other licenses (such as Bash, etc from the base distribution, along with any direct or indirect dependencies of the primary software being contained).

Some additional license information which was able to be auto-detected might be found in [the `repo-info` repository's `hello-world/` directory](https://github.com/docker-library/repo-info/tree/master/repos/hello-world).

As for any pre-built image usage, it is the image user's responsibility to ensure that any use of this image complies with any relevant licenses for all software contained within.


