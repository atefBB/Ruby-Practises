#!/usr/bin/env ruby

class MegaGreeter
  attr_accessor :names

  # create Object
  def initialize(names = "World")
    @names = names
  end

  # say_hi function
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name} !"
      end
    else
      puts "Hello #{@names} !"
    end
  end

  # say_bye function
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
        puts "GoodBye #{@names.join(", ")}. Come back soon !"
    else
      puts "GoodBye #{@names}. Come back soon !"
    end
  end
end

  if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    mg.names = "Frr"
    mg.say_hi
    mg.say_bye

    mg.names = ["Alf", "Dfr", "Cfd", "Edl"]
    mg.say_hi
    mg.say_bye

    mg.names = nil
    mg.say_hi
    mg.say_bye
end
