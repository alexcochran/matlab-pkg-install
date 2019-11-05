# matlab-pkg-install

A simple package for automating adding MATLAB packages/folders to the MATLAB search path on
startup.

---

Third-party code downloaded from the [MathWorks MATLAB File
Exchange](https://www.mathworks.com/matlabcentral/fileexchange/) can be added to MATLAB's
search path automatically by using an `addpath` command in your `startup.m` file in your
`userpath`. While simple, it can be annoying to do for each subsequent package that you
download (or even create yourself). This utility automates the addition of useful packages
to the MATLAB search path with a simple function and offers the option to create one-off
installation scripts for packages you intend to share with others. If you would like
third-party/self-written code to be instantly available from the MATLAB command line, then
this might be a helpful tool for you.

## Usage

Begin by "installing" this package to enable its global use with other packages:

1. Navigate to this package's directory in MATLAB.
2. Run the `install.m` script.

Other packages can now be installed by using the `pkg_install` function:

1. Determine the path to your new package.
2. In MATLAB, use `pkg_install('PATH_TO_PACKAGE')` to add the new package to the search path
   and append the same search path addition command to your `startup.m` file. If no
   `startup.m` file is found at `userpath`, one will be created for you. **Be careful when
   editing the `startup.m` file in the future, as removing the `addpath` entries appended by
   this utility will render it useless.**

If you have a MATLAB package that you would like to create an install script for...

1. Navigate to your package's directory in MATLAB.
2. Use `create_install_script('PACKAGE_NAME')` to create a simple, portable installation
   script for your code. Said script will perform the same operations as this utility's
   `pkg_install` function, but might be useful for users who are not aware/do not use it.

## Other Helpful Tools

This utility is very simple. If you would like a more fully-featured tool that allows for
MATLAB package management similar to `pip` for Python or `npm` for Node.js, check out Omid
Sani's [PackMan](https://github.com/OmidS/PackMan). PackMan takes dependency management and
organization a few steps further than the code in this repository by implementing package
installation from internet sources (e.g. GitHub) and integrated version control. The
[accompanying blog post](https://medium.com/@omidsani/packman-c750d2ae0b6f) helpfully
explains what PackMan has to offer and how to use it.
