require 'norikra/udf_spec_helper'

include Norikra::UDFSpecHelper

require 'norikra/udf/dateformat'

describe Norikra::UDF::DateFormat do
  udf_function Norikra::UDF::DateFormat

  it 'returns 1' do
    r = fcall(:dateformat, "foo")
    expect(r).to eql(1)
  end
end
