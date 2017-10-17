# buidroot-build

Container that can bu used to build Buildroot project with the proper compiler and libraries and git.

To acces the container's shell:

```
docker run -ti --rm jfmorneau/buildroot-build
```

If you wish to use your ssh enviroment inside the container:

```
docker run -ti --rm \
    -v ~/.ssh:/home/user/.ssh \
    jfmorneau/buildroot-build
```

Finally, for a more complete example, this one let's you link a local folder to the working
dir inside the container and use your git configurations:

```
docker run -ti --rm \
    -v ~/.ssh:/home/user/.ssh \
    -v [path_to_local_folder]:/home/user \
    -v ~/.gitconfig:/home/user/.gitconfig \
    jfmorneau/buildroot-build
```

Please note that is strongly suggested to link the `/home/user` to a directory
only used for this purpose. For example, it would not be recommended to link your
home directory to `/home/user`.
