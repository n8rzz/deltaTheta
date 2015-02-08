json.array!(@options) do |option|
  json.extract! option, :id, :ticker, :side, :optiontype, :contracts, :size, :expiration, :strike, :entryprice, :entryfee, :exitprice, :exitfee, :entrydate, :exitdate, :isactive
  json.url option_url(option, format: :json)
end
