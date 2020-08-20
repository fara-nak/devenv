# Docker Container to code in R, Python and Latex

You may need to run:

    xhost local:root 

locally to grant access to the local x11 display server. This is necessary for R graphics devices to work.

# Run using:

docker run -it --rm --network=host -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix dev_env:latest

Explanation:

    -it             
    # Interactive Mode, launches a shell
    
    --rm            
    # Automatically remove the container when it exits
    
    --network=host  
    # Configures the network of the Docker container to use   the host network. This is the simplest way to get access to X11

    -e DISPLAY      
    # Sets the DISPLAY variable to :0. Works ins most cases.
    
    -v /tmp/.X11-unix:/tmp/.X11-unix dev_env:latest
    # Mounts the local .x11 server into the container

# Contains

- R 4.X.X
- Texlive 2020.X
- Python 3.8.X

# Options

This image is easily expandible using the dockerfile. Just add R/Python/Latex packages or change version numbers. Also note that his image uses RSPM as R repository. RSPM provides Linux binaries for many packages and it is frozen. This ensures that installing R Packages always results in the same package version.