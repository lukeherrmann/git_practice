require "colorize"

def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end

def menu
  puts "MAIN MENU".colorize(:cyan)
  puts "1: Enter git command".colorize(:blue)
  puts "2: Exit".colorize(:blue)
  choice = gets.to_i
  case choice
    when 1
      puts "Enter git command".colorize(:green)
      puts_git(gets.strip)
      menu
    when 2
      puts "Thanks for using the program.".colorize(:green)
      sleep(2)
      print `clear`
      exit
    else 
      puts "Invalid Choice. Try again.".colorize(:red)
      menu
    end
end

menu