
0.6.5 / 2016-03-xx
==================

  * In some case, the sed operation to grab the title is not working. For those who have `hxselect` installed, it should always work.
  * With `-E` the bm.lnk file is open with your $EDITOR (default is vi).
  * With `-q` bm looks for the Title of the web page.
  * Fix : When grabing the picture with `-P` bm used the md5 instead of the URL.

0.6.4 / 2016-03-22
==================

  * Fix : When searching for a tag and Title contains |. Results were incorrect.

0.6.3 / 2016-03-11
==================

  * Fix #20 : Issue with tags when a Title contains a comma. Stats are weird.

0.6.2 / 2016-03-08
==================

  * Changing the curl call. Now follow links (eg. the 301 code).
  * Fix #18 : Issue with BM on Apple (related to readlink binary).

0.6.1 / 2016-02-23 
==================

  * Adding permissive licenses :
  * - WTFPL : do What The Fuck you Want to Public License
  * - DSSL  : Demerden Sie Sich License

0.6.0 / 2016-02-21 
==================

  * Fields order is now modified. Date is now the second field instead of last.
  * 2 scripts are present to migrate from tj/bm and fromo Flyounet/bm to the v0.6.0.
  * Fix #17 : Add a Flag (-r) to open image stored for a link.
  * Fix #18 : Store a date for the screenshot taken.
  * Fix #19 : Add a Flag (-P) to take the screenshot for a specific link.
  * Updated the function related to statistic to also include config info and orphaned pictures.
  * Added 2 Flags -n (-N) to sort results by date (reverse)

0.5.3 / 2016-02-16
==================

  * Documentation update
  * History update

0.5.2 / 2016-02-11 
==================

  * Fix #15 : Title with Pipe not working (and also correct the delete function due to this correction)
  * Fix #16 : Autoincrement doesn't work for more than 9 item

0.5.1 / 2016-02-02 
==================

  * Added an alternate print list with `-z`
  * HTML file generated should be good in validators

0.5.0 / 2016-02-01 
==================

  * Engine rewritted
  * Added tons of configuration variables
  * Added use of `cutycapt` for Linux
  * Added duplicate check
  * Added Accelerator to find your bookmark
  * Changed interface, the old one still exist but new functions use arguments `-a`, `-t`, ...
  * Generate screenshot when added in bookmark
  * Added backup
  * And more, see source or help.

0.4.0 / 2012-03-30 
==================

  * Added new HTML style

0.3.0 / 2012-03-15 
==================

  * Added: use webkit2png for thumbs. Closes #2

0.2.0 / 2012-03-15 
==================

  * Added nicer display for large urls
  * Added: strip http:// when listing

0.1.0 / 2012-03-15 
==================

  * Added experimental screenshots feature

0.0.1 / 2012-03-15 
==================

  - Initial release
