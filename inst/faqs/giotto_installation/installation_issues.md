
## First time R package installation

#### Package development prerequisites

If this is the first time you build and install an R package you can
follow this
[link](https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites),
which has simple installation instructions for Windows, Mac OSX and
Linux.

To specifically install the command-line tools of Xcode for Mac OSX you
might also need to run this line in terminal:

``` bash
xcode-select --install
```

 

## Clang error on MacOS

If you see this error on your MacOS:

``` bash
clang: error: unsupported option ‘-fopenmp’
```

You can install another clang and point R to use that clang, which
supports the -fopenmp paramter. This solution was provided on
[stackoverflow](https://stackoverflow.com/questions/43595457/alternate-compiler-for-installing-r-packages-clang-error-unsupported-option)

1.  Install llvm on your mac

<!-- end list -->

``` bash
brew install llvm
```

2.  create a Makevars file

<!-- end list -->

``` bash
touch ~/.R/Makevars
```

3.  Add these lines to the Makevars file

<!-- end list -->

``` bash
# comment out first line 'CC= ... if there are errors with compiling a package
CC=/usr/local/opt/llvm/bin/clang -fopenmp
CXX=/usr/local/opt/llvm/bin/clang++

# Also potentially CXX11 (for C++11 compiler)
CXX11=/usr/local/opt/llvm/bin/clang++

# -O3 should be faster than -O2 (default) level optimisation ..
CFLAGS=-g -O3 -Wall -pedantic -std=gnu99 -mtune=native -pipe
CXXFLAGS=-g -O3 -Wall -pedantic -std=c++11 -mtune=native -pipe
LDFLAGS=-L/usr/local/opt/gettext/lib -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib
CPPFLAGS=-I/usr/local/opt/gettext/include -I/usr/local/opt/llvm/include
```