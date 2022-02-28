# EVENTS DOCUMENTATION AT https://galore.github.io/docs-api/#events
class EventsController < ApplicationController
  include CareApiHelper

  def index
    response = JSON.parse(care_api_events_request.body)
    @series = response['series']
    @activities = response['activities']
  end
end
