#### master:

[![Build Status](https://travis-ci.org/mocchit/gitconfigio.svg?branch=master)](https://travis-ci.org/mocchit/gitconfigio)
[![Code Climate](https://codeclimate.com/github/mocchit/gitconfigio/badges/gpa.svg)](https://codeclimate.com/github/mocchit/gitconfigio)
[![Gem Version](https://badge.fury.io/rb/gitconfigio.svg)](http://badge.fury.io/rb/gitconfigio)
#### test:

[![Build Status](https://travis-ci.org/mocchit/gitconfigio.svg?branch=test)](https://travis-ci.org/mocchit/gitconfigio)
# GitConfigIO

gitconfig Input/Output

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gitconfigio'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gitconfigio

## Usage
```
require 'gitconfigio'
# load gitconfig
conf = GitConfigIO::load('~/.gitconfig')
# create value
color = {'diff' => 'auto' , 'ui' => 'auto'}
# safe merge value
conf['color'] = color.merge conf['color'] || {}
# dump file
GitConfigIO::dump('~/.gitconfig.bak',conf)
```
otherwise
```
#!/bin/usr/env ruby

require 'gitconfigio'

GitConfigIO::merge!('~/.gitconfig',<<-EOS)
[color]
  ui = true
  diff = ture
EOS

# before:
# [color]
#     ui = true
# after:
# [color]
#     ui = true
#     diff = true
```

## Contributing

1. Fork it ( https://github.com/mocchit/gitconfigio/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## LICENSE
GNU GPLv３
