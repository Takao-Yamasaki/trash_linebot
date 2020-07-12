class DateHelper
  def week_of_month_for_date(date)
      my_date = Time.zone.parse(date.to_s)
      week_of_target_date = my_date.strftime("%U").to_i
      week_of_beginning_of_month = my_date.beginning_of_month.strftime("%U").to_i
      week_of_target_date - week_of_beginning_of_month + 1
  end
end