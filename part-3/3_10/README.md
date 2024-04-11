| optimisation stage | image size |
| --- | --- |
| unoptimised | **436MB** |
| alpine base image | **292MB** |
| multi-stage build | **225MB** |
| jre base image for runtime | **134MB** |

I decided to optimise a Dockerfile I created in an earlier exercise for [spring-example-project](https://github.com/docker-hy/material-applications/tree/main/spring-example-project).

I started by switching my base image to an Alpine-based one. This reduced the image size by 144MB. Changing to a multi-stage build reduced the size by a further 67MB. Finally, using a image with only the Java Runtime Environment for the runtime stage of the build allowed me to take full advantage of the multi-stage build, dropping the final image size by another 91MB, all the way down to 134MB.
