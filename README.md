# Care API

My name is Chase Covington and I did this project as an exercise for a RoR Software Engineer position at Care.com.

Time taken: Roughly 1.5 hours

# Process

## Step One

I started by installing the Figaro Gem and writing a helper module to connect to the Care API. My `care_api_request_handler` method allows me to input a subdirectory of the URL to target, but in this application I only have use for the `events` path and don't make much direct use of this. While it would not be useful in this scenario, I did want to write the method this way because I believe it's a case where futureproofing is worth the extra effort.

## Step Two

I parse the response as JSON and seperate out the series and activties in response to two different variables. This allows me to render the Series and Activities with different partials and organize them seperately

## Step Three

I started with creating a collection render for the Activities. I show the data in a basic HTML table that contains the event title, description, date/time, price, and URL to the page of the event. I wrote helper methods to help parse the currency data and datetime data in a way that is "humanized".

## Step Four

I then created the collection render for Series. Initially, I did not quite understand exactly _what_ a Series was or how it really differed from Activities, as the information for the series is just placeholder data such as "asdafgwg". I dug through the API documentation and response data I was recieving and then I realized that it's a repeating activity.

Rather than do a table here, I decided I wanted to create a basic "card" for the series. I did not spend much time on the CSS styling here, only enough to get my idea across. I generated a Stimulus controller and hooked up a Lazily-Loaded Turbo Frame to it. This allows the user to toggle and see the upcoming session dates, but does not render the data at all until it is viewed. This is useful for saving resources, but could also be hooked up to another controller action and URL to pull the data from another source if desired.

## Closing Thoughts & What I Would Change

I had fun with this project, it's always nice to take in raw JSON data and create an application to control how to display and interact with the data. If I had more time, I would love to have written a handful more tests for my Controller, such as some `assert_select` tests to make sure that I was always showing the correct content on the page. I also wish I had more time to "beautify" the CSS, although I understand that isn't the scope of this project and thus left it looking relatively simple and plain.

If I had more time, I would like to create controller actions that make individual requests to `/series` and /activities`. This would allow users to only view one or the other kind of Event. Using Turbo Frames, SPA functionality could be achived by swapping out the HTML data of the listing in exchange for another path's listings. I also think it would be interesting to use the location data to hook into a map API, such as Google Maps, to list the location of the event in an embedded iframe-style box
