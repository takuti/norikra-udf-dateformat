require 'java'
require 'norikra/udf'

module Norikra
  module UDF
    class DateFormat < Norikra::UDF::SingleRow
      def self.init
        require 'norikra-udf-dateformat.jar'
      end

      def definition
        ["dateformat", "me.takuti.norikra.udf.DateFormat", "format"]
      end
    end
  end
end
