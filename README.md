# wg

wg is a neat little command line tool to manage your workspace. It allows you to easily manage git(hub|lab) projects locally.

It is inspired by [Jeff Dickey's gh tool](https://github.com/dickeyxxx/gh).

## Installation

wg is packaged as a ruby gem, but due to the limitations of the shell, you also need to add an alias to your shell's config.

First, install wg with: `gem install wg`

Then, add `function wg { resp="$(wg_r $@)"; if [[ ${resp:0:1} == "!" ]] ; then cd "${resp:1}"; else echo "${resp}"; fi }` to your `.bashrc` file (or whatever shell's rc file you use (`.zshrc`, etc...)).

Happy wg'ing!

## Usage

`wg USER/REPO` will change the current shell's directory to `~/w/g/h/user/repo` if the repo already exists, or clone the repo there if it does not already exists. Defaults to github (the 'h').

### Options

- `-l --lab` will clone from gitlab instead of github or open `~/w/g/l/user/repo`
- `-h --help` displays a delightful help message.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/samginn/wg.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
