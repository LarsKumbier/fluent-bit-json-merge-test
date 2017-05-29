## Usage in fluentd's configuration
##
## <filter kube.**>
##     @type flatten_json
## </filter>

module Fluent
  class FlattenJsonFilter < Filter
    Fluent::Plugin.register_filter('flatten_json', self)

    def filter(tag, time, record)
        begin
            record = record.merge JSON.parse(record['log'].gsub("\\r\\n", '').gsub("\\", ''))
        rescue Exception
        end

        record
    end
  end
end