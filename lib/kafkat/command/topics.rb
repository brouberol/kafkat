module Kafkat
  module Command
    class Topics < Base
      register_as 'topics'

      usage 'topics',
            'Print all topics.'

      def run
        topic_names = zookeeper.get_topic_names

        topic_names.each { |name| print_topic_name(name) }
      end
    end
  end
end
