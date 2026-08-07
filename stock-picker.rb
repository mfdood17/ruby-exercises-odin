def stock_picker(price_array)
  maxim = [0, 0]
  price_array.each_with_index do |price, day|
    if price_array[maxim[1]]-price_array[maxim[0]]<(price_array[day..].max)-price
      #optimized maxim[1] to show first index of the max value after 
      #smallest value, so that the day interval is the smallest possible
      maxim[1]=price_array[day..].index(price_array[day..].max)+day
      maxim[0]=day
    end
  end
  maxim
end
stock_picker([29, 31, 4, 50, 20, 60])