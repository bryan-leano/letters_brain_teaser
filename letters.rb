@entry = []

def menu
puts "Letters Menu : Please select one
    1) Your Input
    2) Exit"
    selection
end

def selection
    input = gets.chomp.to_i
    if input == 1
        puts "What's your Input?"
        entry = gets.chomp
        @entry << entry
        longest_word
    elsif input == 2
        puts "Thanks for using My Program"
        exit
    else 
        puts "Invalid entry"
        menu
    end
end

def longest_word
    puts "Longest words is..."
    @entry.max_by(&:length)
end



menu