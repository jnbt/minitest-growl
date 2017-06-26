# minitest-growl

Test notifier for minitest via Growl.

[![Gem Version](https://badge.fury.io/rb/minitest-growl.svg)](https://badge.fury.io/rb/minitest-growl)
[![Code Climate](https://codeclimate.com/github/jnbt/minitest-growl/badges/gpa.svg)](https://codeclimate.com/github/jnbt/minitest-growl)
[![Gemnasium](https://img.shields.io/gemnasium/jnbt/minitest-growl.svg?style=flat)](https://gemnasium.com/jnbt/minitest-growl)
[![Yard Docs](http://img.shields.io/badge/yard-docs-blue.svg?style=flat)](http://www.rubydoc.info/github/jnbt/minitest-growl/master)

## Installation

     gem install minitest-growl

  or when using [bundler](http://bundler.io)

     gem 'minitest-growl'

## Usage

Simply add `require 'minitest/growl_notify'` after `require 'minitest/autorun'`.

```ruby
require 'minitest/autorun'
require 'minitest/growl_notify'

describe 'some tests' do
  it 'failes' do
    'foo'.must_equal 'bar'
  end
end
```

## Options

You may pass the host to receive the Growl notification via MiniTest's CLI:

    ruby -Ilib:test test/minitest_growl_notify_test.rb --growl_notify my-machine.com


## Dependencies

* [ruby-growl](https://github.com/drbrain/ruby-growl)
* [Growl](http://growl.info/)

## Authors

* [Jonas Thiel](http://github.com/jnbt)

Initially inspired by: [minitest-libnotify](https://github.com/splattael/minitest-libnotify)

## Copyright

Copyright © 2017 Jonas Thiel. See LICENSE.txt for details.
