
## BM

  Simple bash CLI benchmarks persisted by your _~/Dropbox_.

## Install

```
$ make install
$ make uninstall
```

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

  # clear all bookmarks
  $ bm clear

Options:

   -V, --version   output bm version
   -h, --help      output this help information

```