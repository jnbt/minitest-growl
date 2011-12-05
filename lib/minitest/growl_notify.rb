require 'minitest/unit'
require 'growl'

module MiniTest
  # Test notifier for minitest via growl.
  #
  # == Usage
  #
  # In your test helper put:
  #
  #   require 'minitest/autorun'
  #   require 'minitest/growl_notify'
  #
  class GrowlNotify
    VERSION = "0.0.2"

    def initialize io
      @io = io
    end

    def puts(*o)
      if o.first =~ /(\d+) failures, (\d+) errors/
        description = [ defined?(RUBY_ENGINE) ? RUBY_ENGINE : "ruby", RUBY_VERSION, RUBY_PLATFORM ].join(" ")
        if $1.to_i > 0 || $2.to_i > 0 # fail?
          Growl.notify_error o.first, :title => ":-( #{description}"
        else
          Growl.notify_ok o.first, :title => ":-) #{description}"
        end
      else
        @io.puts(*o)
      end
    end

    def method_missing(msg, *args, &block)
      @io.send(msg, *args, &block)
    end
  end
end

MiniTest::Unit.output = MiniTest::GrowlNotify.new(MiniTest::Unit.output)
