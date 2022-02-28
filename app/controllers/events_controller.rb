# EVENTS DOCUMENTATION AT https://galore.github.io/docs-api/#events
class EventsController < ApplicationController
  include CareApiHelper

  def index
    response = JSON.parse(care_api_events_request.body)
    @series = response['series'].sort_by { |event| event['start_time'].to_i }
    @activities = response['activities'].sort_by { |event| event['start_time'].to_i }
  end
end
