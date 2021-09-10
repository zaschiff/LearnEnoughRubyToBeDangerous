def sandwhich
    puts "top bread"
    yield
    puts "bottom bread"
end

sandwhich do
    puts "mutton, lettuce, and tomato"
end

def tag(tagname, text)
    html = "<#{tagname}>#{text}</#{tagname}>"
    yield html
end

# wrap some text in a p tag
tag("p", "Lorem ipsum dolor sit amet") do |markup|
    puts markup
end

99.downto(1) { |n| 
    if n != 1
        puts "#{n} bottles of beer on the wall"
    else
        puts "#{n} bottle of beer on the wall"
    end
}

def bad_sandwhich(contents)
    puts "top bread"
    contents
    puts "bottom bread"
end

bad_sandwhich(puts "mutton, lettuce, and tomato")