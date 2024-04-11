After building and running the new images, I made sure that the containers start their processes as a non-root user by entering their bash shells via `docker exec -it <container_id> bash` and manually checking that the user does not have root permissions.

Note: The exercise claimed that I would not be able to use the command `useradd` on the backend image, but this was not the case for the way I had implemented it. For completeness' sake though, I looked up that the equivalent command to `useradd` on Alpine Linux is `adduser`.
