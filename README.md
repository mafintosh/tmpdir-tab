# tmpdir-tab

Bash helper gives you a tmpdir per terminal tab
and cleans it up when you exit

## Install

```
npm install -g tmpdir-tab
```

## Usage

First add the following line to your .bashrc or .bash_profile

``` sh
if [ -f $(which tmpdir-tab) ]; then
  . $(which tmpdir-tab)
fi
```

Then restart your terminal. Afterwards running `tmpdir` will cd to a tmp
dir that will removed when you close the terminal

## License

MIT
