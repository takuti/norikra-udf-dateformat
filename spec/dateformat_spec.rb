require 'norikra/udf_spec_helper'

include Norikra::UDFSpecHelper

require 'norikra/udf/dateformat'

describe Norikra::UDF::DateFormat do
  udf_function Norikra::UDF::DateFormat

  it 'converts UNIX timestamp to a date-time string with a specific timezone' do
    timestamp = 1470803400000
    pattern = "yyyy-MM-dd HH:mm:ss"

    r = fcall(:dateformat, timestamp, pattern, "UTC")
    expect(r).to eql("2016-08-10 04:30:00")

    r = fcall(:dateformat, timestamp, pattern, "JST")
    expect(r).to eql("2016-08-10 13:30:00")
  end
end
