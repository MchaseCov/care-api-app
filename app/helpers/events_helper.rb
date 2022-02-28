module EventsHelper
  def event_time(start, ending)
    starting_time = Time.at(start)
    ending_time = Time.at(ending)
    if starting_time.to_date == ending_time.to_date
      "on #{starting_time.to_date} from #{starting_time.strftime('%H:%M')} to #{ending_time.strftime('%H:%M')}"
    else
      "#{starting_time.strftime('%m/%d/%Y, %H:%M:%S')} to #{ending_time.strftime('%m/%d/%Y, %H:%M:%S')}"
    end
  end

  def event_location(activity_location)
    return if activity_location['hidden'] == 'true'
    return 'N/A' if activity_location['location']['city'].nil?

    "#{activity_location['location']['city']}, #{activity_location['location']['state']}"
  end
end
