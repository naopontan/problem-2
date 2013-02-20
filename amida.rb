# -*- coding: utf-8 -*-
require 'pp'
class Amida

  MAX_LINE = 7
  SPACE = 3

  def initialize(num)
    @num = num.to_i
    @users = make_users
    @data = make_data(@num)
  end

  def make_data(num)
    data = Array.new(MAX_LINE) { Array.new(num) }
    join_line(data)
    set_bars(data)
  end

  def join_line(array)
    x_bars = (0 ... MAX_LINE).to_a.sample(@num - 1)
    (@num - 1).times {|i| array[x_bars.shift][i] = true}
    array
  end

  def set_bars(array)
    # TODO: ランダムではしご掛ける。横が重ならないようにね
    array
  end

  def make_users
    char = "A"
    users = []
    @num.times do |i|
      users << char
      char = char.next
    end
    users
  end

  def display
    a = '|' + '-' * SPACE
    b = '|' + ' ' * SPACE
    puts @users.join(' ' * SPACE)
    @data.each do |line|
      line.each{|x| print x ? a : b}
      puts
    end
    print ' ' * (SPACE + 1) * (rand(@num))
    puts '*'
  end
end

if $0 == __FILE__
  pp amida = Amida.new(ARGV.first || rand(Amida::MAX_LINE) + 1)
  amida.display
end
