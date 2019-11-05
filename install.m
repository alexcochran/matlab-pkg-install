% Self-installation script for matlab-pkg-install.
% ------------------------------------------------------------------------------------------

pkgPath = fileparts(mfilename('fullpath'));
pkg_install(pkgPath);
