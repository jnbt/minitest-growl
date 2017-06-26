require 'minitest'
require 'minitest/growl_notify'

module MiniTest
  # This hook is automatically called from MiniTest's plugin system on start
  def self.plugin_growl_notify_options(opts, options)
    opts.on '--growl_notify HOST',
      'Report results to HOST Growl (default: "localhost")' do |host|
        options[:growl_notify_host] = host
    end
  end

  # This hook is automatically called from MiniTest's plugin system on run
  def self.plugin_growl_notify_init(options)
    self.reporter << MiniTest::GrowlNotify::Reporter.new(options[:io], options)
  end
end
