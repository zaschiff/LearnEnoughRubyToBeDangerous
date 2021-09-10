states = ["Kansas", "Nebraska", "North dakota", "South Dakota"]
numbers = 1..10

# Returns a URL-friendly version of a string
#   Example: "North Dakota" -> "north-dakota"
def urlify(string)
    string.downcase.split.join("-")
end

# urls: Imperative version
def imperative_urls(states)
    urls = []
    states.each do |state|
        urls << urlify(state)
    end
    urls
end

p imperative_urls(states)

# urls: functional version
def functional_urls(states)
    states.map { |state| urlify(state) }
end
puts functional_urls(states).inspect

# Exercise 6.1.1.1
def full_url(states)
    states.map { |state| "https://example.com/" + urlify(state) }
end
puts full_url(states).inspect

# singles: Imperative version
def imperative_singles(states)
    singles = []
    states.each do |state|
        if state.split.length == 1
            singles << state
        end

    end
    singles
end
puts imperative_singles(states).inspect

# singles: functional version
def functional_singles(states)
    states.select { |state| state.split.length == 1 }
end
puts functional_singles(states).inspect

# sum: imperative solution
def imperative_sum(numbers)
    total = 0
    numbers.each do |n|
        total += n
    end
    total
end
puts imperative_sum(numbers)

# sum: functioanl solution
def functional_sum(numbers)
    numbers.reduce { |total, n| total + n }
end
puts functional_sum(numbers)

# lengths: Imperative  version
def imperative_lengths(states) 
    lengths = {}
    states.each do |state|
        lengths[state] = state.length
    end
    lengths
end
puts imperative_lengths(states)

# lengths: functional version
def functional_lengths(states)
    states.reduce({}) do |lengths, state|
        lengths[state] = state.length
        lengths
    end
end
puts functional_lengths(states)

# Exercise 6.2.1.1
def select_include(states)
    states.select { |state| state.downcase.include? "dakota"}
end
puts select_include(states).inspect

def select_length(states)
    states.select { |state| state.split.length == 2 }
end
puts select_length(states).inspect

# Exercise 6.3.5.1
def functioanl_product(numbers)
    numbers.reduce(1) { |total, n| total * n }
end
puts functioanl_product(numbers)