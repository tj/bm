<a name="bm" />
## BM

  Simple bash CLI bookmarks.
  Firstly designed for Mac and now also for Linux, supports search on criteria,
  accelerator, tags, Screenshots, configuration file, backup, and also
  generate a HTML file with bookmarks and Screenshots.

  Please note, BM needs some binaries to work: cutycapt for Linux and webkit2png for Mac.

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

Usage: bm [options] [cmd]

Commands:

  # add a bookmark with the given url, description, and optional tags
  $ bm add <url> [desc] [tag...]

  # open the first bookmark matching <query>
  $ bm open <query>
  $ bm <query>

  # search the bookmarks via full-text <query>
  $ bm search <query>

  # list bookmarks available
  $ bm list
  $ bm ls
  $ bm

  # view bookmark screenshots in your default browser
  $ bm view design
  $ bm view

  # clear all bookmarks
  $ bm clear

Options:

   -V, --version   output bm version
   -h, --help      output this help information

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
