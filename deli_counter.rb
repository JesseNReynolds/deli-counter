katz_deli = []

def line(line)
    if line.length == 0
        puts "The line is currently empty."
    end

    if line.length > 0
        callout = "The line is currently:"

        line.each_with_index do |name, number|
        callout << " #{number + 1}. #{name}"
        end
        puts callout
    end
end

def take_a_number(line, name)
    line << name
    number = line.length
    puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(line)
    if line.length > 0
        serving = line.first
        line.shift
        puts "Currently serving #{serving}."
    end

    if line.length == 0
        puts "There is nobody waiting to be served!"
    end
end
