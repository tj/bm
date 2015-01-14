<a name="bm" />
## BM

  Simple bash CLI bookmarks persisted by your _~/Dropbox_, sporting
  a webkit2png-driven html screenshot browser, even grep the screenshots
  by tag and description:

    $ bm view expressapp

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
$ cat ~/Dropbox/bookmarks
https://kippt.com|bookmark management|clean white design
http://subtlepatterns.com|tiling background images|design textures
http://www.uiparade.com|ui component designs|design ui
```
