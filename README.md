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

Finally, for a more complete example, this one let's you link a local folder to the working dir inside the container:

```
docker run -ti --rm \
    -v ~/.ssh:/home/user/.ssh \
    -v [path_to_local_folder]:/home/user \
    jfmorneau/buildroot-build
```