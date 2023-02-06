# 🕒 LocalTime

Local Time makes it easy to display times and dates to users in their local time. Its Rails helpers render `<time>` elements in the given timezone.

## Installation

Install the gem and add to the application's Gemfile by executing:

```sh
  bundle add local-time
```

If bundler is not being used to manage dependencies, install the gem by executing:

```sh
  gem install local-time
```

## Example

```ruby
> comment.created_at
"Wed, 27 Nov 2013 18:43:22 EST -0500"
```

```erb
<%= local_time(comment.created_at) %>
```

Renders:

```html
<time data-format="%B %e, %Y %l:%M%P"
      data-local="time"
      datetime="2013-11-27T23:43:22Z"
      title="November 27, 2013 11:43pm UTC">November 27, 2013 11:43pm</time>
```

Or in case timezone of PKT is set

```html
<time data-format="%B %e, %Y %l:%M%P"
      data-local="time"
      datetime="2013-11-28T04:43:22+05:00"
      title="November 28, 2013 4:43am PKT">November 28, 2013 4:43am</time>
```

> *(Line breaks added for readability)*

## Time and date helpers

```erb
<%= local_time(time) %>
```

Format with a strftime string (default format shown here)

```erb
<%= local_time(time, '%B %e, %Y %l:%M%P') %>
```

Alias for `local_time` with a month-formatted default

```erb
<%= local_date(time, '%B %e, %Y') %>
```

To set attributes on the time tag, pass a hash as the second argument with a `:format` key and your attributes.

```erb
<%= local_time(time, format: '%B %e, %Y %l:%M%P', class: 'my-time') %>
```

To use a strftime format already defined in your app, pass a symbol as the format.

```erb
<%= local_time(date, :long) %>
```

`I18n.t("time.formats.#{format}")`, `I18n.t("date.formats.#{format}")`, `Time::DATE_FORMATS[format]`, and `Date::DATE_FORMATS[format]` will be scanned (in that order) for your format.

## Time ago helpers

```erb
<%= local_time_ago(time) %>
```

Displays the relative amount of time passed. With age, the descriptions transition from {quantity of seconds, minutes, or hours} to {date + time} to {date}. The `<time>` elements are updated every 60 seconds.

Examples (in quotes):

* Recent: "a second ago", "32 seconds ago", "an hour ago", "14 hours ago"
* Yesterday: "yesterday at 5:22pm"
* This week: "Tuesday at 12:48am"
* This year: "on Nov 17"
* Last year: "on Jan 31, 2012"

## Relative time helpers

Preset time and date formats that vary with age. The available types are `date`, `time-ago`, `time-or-date`, and `weekday`. Like the `local_time` helper, `:type` can be passed a string or in an options hash.

```erb
<%= local_relative_time(time, 'weekday') %>
<%= local_relative_time(time, type: 'time-or-date') %>
```

**Available `:type` options**

* `date` Includes the year unless it's current. "Apr 11" or "Apr 11, 2013"
* `time-ago` See above. `local_time_ago` calls `local_relative_time` with this `:type` option.
* `time-or-date` Displays the time if it occurs today or the date if not. "3:26pm" or "Apr 11"
* `weekday` Displays "Today", "Yesterday", or the weekday (e.g. Wednesday) if the time is within a week of today.
* `weekday-or-date` Displays the weekday if it occurs within a week or the date if not. "Yesterday" or "Apr 11"


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/MBM1607/local-time>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/MBM1607/local-time/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Local::Time project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/local-time/blob/main/CODE_OF_CONDUCT.md).
