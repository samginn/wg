# wg

wg is a neat little command line tool to manage git(hub|lab) projects locally.

It is inspired by [Jeff Dickey's gh tool](https://github.com/dickeyxxx/gh).

## Installation

wg is packaged as a ruby gem. All you have to do is:

`gem install wg` and voila, you have the `wg` command at your disposal.

## Usage

`wg USER/REPO` will change the current shell's directory to `~/w/g/h/user/repo` if the repo already exists, or clone the repo there if it does not already exists. Defaults to github (the 'h').

### Options

- `-h --help` displays a delightful help message.
- `-l --lab` will clone from gitlab instead of github or open `~/w/g/l/user/repo`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/samginn/wg.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
