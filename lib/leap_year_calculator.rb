class LeapYearCalc

  def yes?(year)
   if (year % 100 == 0 && year % 400 == 0)
     true
   else
     false
   end
  end
end