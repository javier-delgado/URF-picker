module SearchHelper
  def search_options
    options = SearchOption.all
  end

  def to_decimal_non_zero_value(number, decimals = 1)
    result = "%.10g" % ("%.#{decimals}f" % number)
    if result.to_f == 0 && decimals < 8
      return to_decimal_non_zero_value(number, decimals + 1) 
    else
      return result
    end
  end
end
