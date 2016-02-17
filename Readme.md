<a name="bm" />
## BM

  Simple bash CLI bookmarks.

  Firstly designed for Mac and now also for Linux, supports search on criteria,
  accelerator, tags, Screenshots, configuration file, backup, and also
  generate a HTML file with bookmarks and Screenshots.

  ![](http://cl.ly/FREx/Screen%20Shot%202012-03-29%20at%2011.15.14%20PM.png)

  Please note, BM needs some binaries to work see configuration to change them): 

  * For the Screenshot part:
  * * `cutycapt` for Linux
  * * `webkit2png` for Mac.
  * For the clipboard copy:
  * * `xsel` for Linux
  * * As I don't have any Mac, nothing for the time being.
  * For the md5 part:
  * * `md5sum` for Linux
  * * `md5` for Mac.
  * Other tools: `sed`, `awk`, `date`, `iconv`, `cat`, `curl`, `column` and `bash`

## Install

```
$ make install
$ make uninstall
```

## Example

  Add a bookmark:
  
    $ bm add http://subtlepatterns.com "tiling background images" design textures

  Open it later:

    $ bm subtle

  Search for design related bookmarks:

  ![cli bookmarks](http://f.cl.ly/items/0s3M0T1B122L3W1C1L1U/Screen%20Shot%202012-03-15%20at%204.44.24%20PM.png)

## Usage

```
Usage: ./bm [modifier(s)] command [option(s)]

	Commands :
	==========
	-h		Print this help
	-H		Print help for legacy usage
	-v/-V		Print the version
	-a 'URL'	Add the URL to bookmark file
			Options for -a
			-t "TagList"	Tags are sparated by a comma ,
			-T "Title"	Title for this URL (if empty and allowed Title
					downloaded)
			-A "accel"	Accelerator when search for URLs (start with Accel)
					Default is FQDN without gTld (and www, and sheme)
			-F		Force the bookmark to be created (even if duplicate
					or invalid)
			-p		Force the screenshot to be taken
	
	-l		List all URLs (default action, same thing as calling bm without args)
			Options for -l
			-z		Use the alternate print list

	-s 'object'	Search for bookmarks
			Options for -s
			-i		Incensitive case search
			-z		Use the alternate print list
			Objects are
				:string	Search in accelerator list
				+string	Search in tags list
				=string	Search in MD5 list
				/string	Search in URL list
				string	Search in full test

	-o 'object'	Search for bookmarks and open it (use the same argument as for -s)
			Options for -o
			-i		Incensitive case search
			-O		If more than one answer force the first bookmark to be open
			-Y		If more than one answer force ALL bookmarks to be open

	-x 'object'	Search for bookmarks and copy it to clipboard (use the same argument as for -s)
			Options for -x
			-i		Incensitive case search
			-X		If more than one answer force the first bookmark to be copied
			-Y		If more than one answer force ALL bookmarks to be copied

	-r 'object'	Search for bookmarks and Print the recorded associated picture (use the same argument as for -s)
			Options for -r
			-i		Incensitive case search
			-O		If more than one answer force the first bookmark to have its picture printed
			-Y		If more than one answer force ALL bookmarks to have their picture printed

	-d 'URL' or	Delete the URL from bookmark file
	   md5sum or
	   'URL part'	Options for -d
			-D		Delete first occurence only
			-F		Force the bookmark to be deleted (even if duplicate)
			-p		Delete the associated picture (no trash available)

	-g		Generate a HTML page with all bookmarks
			If used more than once, generate a page per tag
			Options for -g
			-G "filename"	If g==1 then generate then use this filename to generate page
			-O		Open the file when generated

	-P 'object'	Generate all Non existant picture (check done for all URL in bm), if none argument.
			If an argument is given (use the same argument as for -s) only the results will have a picture.
			Options for -P
			-F		Force the picture to be taken again (even if already exists).

	-L		List all tags

	-C		Print the color table (usefull for configuration)

	-S		Show statistics about bookmarks/tags (and also configuration)
			Options for -S
			-p		Print the list of orphaned Pictures

	Modifiers :
	===========
	-c 'file'	Use this configuration file instead of the default one

	-b 'file'	Use this bookmark file instead of the default one

	Old Legacy usage still available :
	Usage: bm [options] [cmd]

	Commands:

	# add a bookmark with the given url, description, and optional tags
	$ bm add <url> [desc] [tag...] [accelerator]

	# open the first bookmark matching <query>
	$ bm open <query>
	$ bm <query>

	# search the bookmarks via full-text <query>
	$ bm search <query>

	# list tags
	$ bm tags

	# list bookmarks available
	$ bm list
	$ bm ls
	$ bm

	# display statistics about the bookmarks
	$ bm statistics
	$ bm stats

	# view bookmark screenshots in your default browser
	$ bm view design
	$ bm view

	# clear all bookmarks
	$ bm clear

	Options:

	-V    output bm version
	-h    output help information for new parameters
	-H    output this help information
```

<a name="screenshots" />
## Screenshots

  Run `bm view [query]` to view the bookmark screenshots in your default browser. This requires `webkit2png(1)` (`brew install webkit2png`).

## Storage

  Store the file(s) wherever you want. Use configuration (either internal or with a config file with `-c`), or parameters (`-b` for bookmark file).
  
```
$ cat ~/sync/bm.lnk
bd8b3eff7fa82a0382a3e7576c5363b6|:bm|https://github.com/Flyounet/bm/|bm a cool enhanced bookmark tool for your console|default,shell|2016-01-18T07:21:36Z
2981b5cae113491ddb18e0d51454f0d9|:bmtj|https://github.com/tj/bm/|The original bm : a cool bookmark tool for your console|default,shell|2016-01-18T07:21:36Z
#fd65acec3e2abff9d2fd3c581df3142d|:7|http://flyounet.net|http-flyounet-net|site,dev, bli,bla,blo,bli|2016-01-20T17:44:02Z
 # fd65acec3e2abff9d2fd3c581df3142d|:9|http://flyounet.net|http-flyounet-net|site,dev, ba,bello,belli,bella,arthur,toto,titi,tata,bli,bla,blo,bli|2016-01-20T17:46:24Z
ac313b7d866bc76487858b243f9f3ff0|:HP|http://localhost:631/printers/HP8600|Cups: Imprimante HP 8600|admin,cups,local|2016-01-31T18:33:11Z
ae6461ffeb6cd8393c4c100d026db789|:sync|https://127.0.0.1:8384/|SyncThings Local|admin,network,syncthings|2016-01-31T19:05:08Z
7ad10b8decf3ef55ce4e8a95e80f4b9d|:home|http://flyounet.net/life|3615 my life|blog,home|2016-01-31T21:09:33Z
7a3a43da3e8b8f58e5ade40eab35a1fd|:syntaxe|http://flyounet.net/life/2015-11-01-time-to-markdown.html|Syntaxe markdown|blog,home,markdown|2016-01-31T21:12:11Z
```

If you don't want to see some bookmarks, but want to keep them, you could comment them by adding a hash `#`.

## Statistics

bm provides you some statistics usage

```
$ bm -S -p

===== Configuration =====
Bookmark file           : /home/testuser/bm.lnk
Config file             : /home/testuser/bm.conf (but doesn't exist)
Trash file              : /home/testuser/.bm.trash
Screenshot directory    : /home/testuser/.bm.shots
Backup file(s)          : /home/testuser/.bm.lnk.bck*
                          /home/testuser/.bm.lnk.bck.0
                          /home/testuser/.bm.lnk.bck.1
                          /home/testuser/.bm.lnk.bck.2

=====  Statistics   =====
# of Bookmarks          : 27
# of Duplicate          : 0
# of tags               : 26
Top 14 tags used        :
admin:8  color:7   bash:7     prompt:6    git:4  design:4  css:4
box:4    system:3  network:3  ecryptfs:3  doc:3  rpi:2     lprab:2
# of Pictures           : 34 [# of files in /home/testuser/.bm.shots:39]
All Pictures size       : 27M
Bookmark Without Pic    : 0
Orphaned pictures       : 7

=====   Orphaned   =====
List of orphaned pictures :
 - /home/testuser/.bm.shots/16d402a7f1be2304f90ec25924782edc.png [Trashed URL should be: https://github.com/Flyounet/bm]
 - /home/testuser/.bm.shots/2981b5cae113491ddb18e0d51454f0d9.png [Trashed URL should be: ]
 - /home/testuser/.bm.shots/7a3a43da3e8b8f58e5ade40eab35a1fd.png [Trashed URL should be: Unknown]
 - /home/testuser/.bm.shots/7ad10b8decf3ef55ce4e8a95e80f4b9d.png [Trashed URL should be: Unknown]
 - /home/testuser/.bm.shots/b88fe41f6aa05370e81bae926da2087c.png [Trashed URL should be: Unknown]
 - /home/testuser/.bm.shots/bd8b3eff7fa82a0382a3e7576c5363b6.png [Trashed URL should be: ]
 - /home/testuser/.bm.shots/c5c24b5609b0191095197d19d852eb1c.png [Trashed URL should be: http://toto]

```
