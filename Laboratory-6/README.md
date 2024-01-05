# How to run

First add the binary directory to your path

```bash
source setpath.sh
```

Also compile the project with CMake using the provided script:

```bash
./app-build.sh
```

Finally execute the program you want. No need to specify full path!

```bash
main flip_inplace.cl images/kitty.jpeg 200 images/ragecat.jpeg 300
```