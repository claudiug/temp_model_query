require 'forecast_io'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


ForecastIO.api_key = '7ad69e74eb23f877270fa35ddfd82dbc'


forecast = ForecastIO.forecast(City.last.latitude, City.last.longitude,
                               params: {units:'si',
                                        exclude:'currently,minutely,hourly,flags'})




forecast[:daily][:data].each do |h|
  h.each do |i|
    puts i[1]
  end
end

