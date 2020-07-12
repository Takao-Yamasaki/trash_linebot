require_relative 'date_helper'

class TrashDay
  def text
    date = Date.today

    case date.strftime('%a')
      when "Mon"
          "ちょっとあんた！今日は月曜日、普通ゴミの日だわ！" + metal_text
      when "Tue"
          "ちょっとあんた！今日は火曜日、空き缶・ペットボトル・空き瓶・使用済み乾電池の日だわ！"
      when "Wed"
          "ちょっとあんた！今日は水曜日、プラスチック製容器包装の日だわ！"
      when "Thu"
          "ちょっとあんた！今日は木曜日、普通ゴミの日だわ！"
      when "Fri"
          "HEY BUDDY! It's Friday. Party hard. Don't drink too much.(ゴミ無しの日)"
      when "Sat"
          "ちょっとあんた！今日は土曜日、ミックスペーパーの日だわ！"
      else
          ""
      end
  end

  def metal_text
      date = Date.today
      week = DateHelper.new.week_of_month_for_date(date)
      day = date.strftime('%a')
      if week == 2 || week == 4
          "２・４回目の月曜日だから小物金属も忘れちゃダメよ！"
      else
          ""
      end
  end
end