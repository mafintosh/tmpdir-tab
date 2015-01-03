# tmpdir.sh

Bash helper gives you a tmpdir per terminal tab
and cleans it up when you exit

## Install

```
npm install -g tmpdir.sh
```

## Usage

First add the following line to your .bashrc or .bash_profile

``` sh
if [ -f $(which tmpdir.sh) ]; then
  . $(which tmpdir.sh)
fi
```

Then restart your terminal. Afterwards running `tmpdir` will cd to a tmp
dir that will removed when you close the terminal

## License

MIT
