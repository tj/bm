<a name="bm" />
## BM

  Simple bash CLI bookmarks.
  Firstly designed for Mac and now also for Linux, supports search on criteria,
  accelerator, tags, Screenshots, configuration file, backup, and also
  generate a HTML file with bookmarks and Screenshots.

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

  ![](http://cl.ly/FREx/Screen%20Shot%202012-03-29%20at%2011.15.14%20PM.png)

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

	-d 'URL' or	Delete the URL from bookmark file
	   md5sum or
	   'URL part'	Options for -d
			-D		Delete first occurence only
			-F		Force the bookmark to be deleted (even if duplicate)

	-g		Generate a HTML page with all bookmarks
			If used more than once, generate a page per tag
			Options for -g
			-G "filename"	If g==1 then generate then use this filename to generate page
			-O		Open the file when generated

	-L		List all tags

	-C		Print the color table (usefull for configuration)

	-S		Show statistics about bookmarks/tags

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

## Dropbox

  Later I'll make it so you can tweak the path, however for now the bookmarks are persisted to _~/Dropbox/bookmarks_:
  
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
