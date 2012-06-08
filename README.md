This stub is a basic project with:

- basic-project features
- internationalization (i18n)

It is suitable for a simple web-site containing a bunch of pages with **internationalization** (i18n).


How to setup a new language (debian)
====================================
```bash
# Test if gettext is already working
# (note that testgettext tests the "fr_CH.utf8" locale, you can edit the script to change it)
cd /var/www/app/scripts/i18n/
php testgettext.php

# install gettext on your system
sudo apt-get install gettext

# find out the locales installed
locale -a

# if you don't find your project configured locales,
# or the skeleton-project default configured locales
# (cf https://github.com/damiencorpataux/xfm-project-skeleton/blob/i18n/config/default.ini)

# have a look at the installed locales on your system
sudo locale-gen

# add the locales you need to use, using the SUPPORTED locales file
# (note that Ubuntu stores locales to generate in /var/lib/locales/supported.d/local instead of /etc/locale.gen)
sudo bash -c "cat /usr/share/i18n/SUPPORTED | grep -i 'fr_ch.utf' >> /etc/locale.gen"
sudo bash -c "cat /usr/share/i18n/SUPPORTED | grep -i 'de_ch.utf' >> /etc/locale.gen"
sudo bash -c "cat /usr/share/i18n/SUPPORTED | grep -i 'en_gb.utf' >> /etc/locale.gen"
sudo bash -c "cat /usr/share/i18n/SUPPORTED | grep -i 'en_us.utf' >> /etc/locale.gen"

# regenerate locales
sudo locale-gen

# gettext should work
cd /var/www/app/scripts/i18n/
php testgettext.php

#
```


How to translate a language
===========================

```bash
# generate base po files from your site contents
# this will create a .po file for each of your
# configured languages in your default.ini
cd /var/www/app/scripts/i18n
php po_update.php

# edit the generated/updated .po files and create the translations
# (note that the en.po file is usually empty if you wrote your templates in english)
cd /var/www/app/scripts/i18n/po
vi fr.po
vi de.po

# generate the compiled .mo file from the .po files
php po2mo.php

# restart your apache server to apply change (if applicable)
sudo apache2ctl graceful

# modify your controllers and views (adding/changing/deleting translations strings)

# automagically add new translation strings to your .po file(s)
cd /var/www/app/scripts/i18n
php po_update.php

# edit translations strings
cd /var/www/app/i18n/po
vi fr.po
vi de.po

# recompile .mo files
cd /var/www/app/scripts/i18n
php po2mo.php

# restart your web server to apply changes
sudo apache2ctl graceful
```


.po files header
================
Don't foget to put the following header on top of your .po files:
```
msgid ""
msgstr ""
"Project-Id-Version: PACKAGE VERSION\n"
"Report-Msgid-Bugs-To: \n"
"POT-Creation-Date: 2010-01-15 14:06+0100\n"
"PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE\n"
"Last-Translator: FULL NAME <EMAIL@ADDRESS>\n"
"Language-Team: LANGUAGE <LL@li.org>\n"
"MIME-Version: 1.0\n"
"Content-Type: text/plain; charset=UTF-8\n"
"Content-Transfer-Encoding: 8bit\n"
```