require 'ruby-growl'

module MiniTest
  module GrowlNotify
    class Reporter < StatisticsReporter
      def report
        super
        if passed?
          growl.notify("notification", ":-) #{summary}", statistics)
        else
          growl.notify("failure", ":-( #{summary}", statistics)
        end
      end

      private

      def summary
        '%d runs, %d failures, %d errors, %d skips' %
          [count, failures, errors, skips]
      end

      def statistics # :nodoc:
        '%d assertions, finished in %.2fs, %.2f runs/s, %.2f assertions/s.' %
          [assertions, total_time, count / total_time, assertions / total_time]
      end

      def growl
        @growl ||= begin
          growl = Growl.new growl_host, 'MiniTest'
          growl.add_notification 'notification', 'Notification'
          growl.add_notification 'failure', 'Failure'
          growl
        end
      end

      def growl_host
        options[:growl_notify_host] || 'localhost'
      end
    end
  end
end
