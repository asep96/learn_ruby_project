class Timer
  #write your code here

  def initialize(time=0)
    @time = time
  end 

  def seconds=(new_time)
    @time = new_time
  end

  def seconds
    @time
  end

  def time_string
    hours = @time/3600
    seconds_after_hours = @time%3600
    minutes = seconds_after_hours/60
    seconds_after_minutes = seconds_after_hours%60
    seconds_time = seconds_after_minutes
    
    if hours < 10
      hours_display = "0" + hours.to_s
    else
      hours_display = hours.to_s
    end

    if minutes < 10
      minutes_display = "0" + minutes.to_s
    else
      minutes_display = minutes.to_s
    end

    if seconds_time < 10
      seconds_display = "0" + seconds_time.to_s
    else
      seconds_display = seconds_time.to_s
    end
    
    "#{hours_display}:#{minutes_display}:#{seconds_display}"
  end

end
