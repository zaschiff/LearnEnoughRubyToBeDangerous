require 'date'

# returns the day of the week for the given Time object
def day_of_the_week(time)
    Date::DAYNAMES[time.wday]
end

# returns a friendsly greeting
def greeting(time)
    "Hello, world! Happy #{day_of_the_week(time)}."
end