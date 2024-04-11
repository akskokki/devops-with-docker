### Image sizes before optimisation

Backend: **1.07GB**  
Frontend: **1.27GB**

### Image sizes after optimisation

Backend: **995MB**  
Frontend: **1.09GB**

### Conclusion

I was able to take the image sizes down by a moderate amount, but even this required some sacrifices. Particularly in the case of the frontend image, I stopped `node_modules` from being cached in the `RUN` layer, but this would cause build times to become significantly higher if changes were made to the rest of the commands. This was a good learning experience about the way that the state of the file system after each layer affects the final image size.
