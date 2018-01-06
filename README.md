## Bada Bingo!

A next-level Analytics platform built in Ruby on Rails



An Example Javascript snippet for event tracking would be:
```
var badabingo = {};

badabingo.report = function(eventName){
  var event = {event: { name: eventName }};
  var request = new XMLHttpRequest();
  request.open("POST", "http://localhost:3000/api/events", true);
  request.setRequestHeader('Content-Type', 'application/json');
  request.send(JSON.stringify(event));
};
```
You can use this to track events on your own apps.  It should be included in your `application.js` file.

To trigger individual events, the following syntax is recommended:

```
$(document).on('turbolinks:load', function() {
  //example event for page load
  badabingo.report('Event type here');

  //example event with a click
  $('.topic').click(function() {
    badabingo.report('event type here');
  });
})
```
