xfm-project-skeleton
====================

Steps to make it work:
* Xfm git submodule
  * Initialize submodule: git submodule init && git submodule update
* Apache
  * Enable 'rewrite' module: a2enmod rewrite
  * Configure your directory with "AllowOverrides All"