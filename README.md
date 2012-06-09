This stub is a basic project showing a blog with:

- database structure definition (sql)
- database configuration
- configured models
- a blog controller


It is suitable for a simple web-site containing a bunch of dynamic, database-related pages/forms.


How to setup mysql database
===========================

Either:
- create a database user according **default.ini** db configuration
- or change **default.ini** db configured user and password to suit
  the existing database user you want to use

```bash
cd /var/www/app/scripts/deploy
php database.php
```


Notes
=====

Look at the **sql/** directory, containing the sql files to execute in order to create the database.
Filenames are prefixed with a number that defines execution order.