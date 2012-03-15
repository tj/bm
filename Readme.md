
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
  add <url> [desc] [tag...]

  # open the first bookmark matching <query>
  open <query>

  # search the bookmarks via full-text <query>
  search <query>

  # list bookmarks available
  ls, list

  # clear all bookmarks
  clear

Options:

   -V, --version   output bm version
   -h, --help      output this help information

```