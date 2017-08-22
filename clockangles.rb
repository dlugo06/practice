def clockangles(hour, minute)
  hour_deg_per_min = 360/12/60.to_f
  # degrees that the hour arm moves every minute
  hour_deg = 360/12
  # degrees that the hour arm moves every hour
  min_deg = 360/60
  # degrees that the minute arm moves every minute

  p ((hour * hour_deg + minute * hour_deg_per_min) - (minute * min_deg)).abs
end


clockangles(3,31)
