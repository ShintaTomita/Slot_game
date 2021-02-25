

puts "スロットにチャレンジ"
puts "1回:１０枚,2回:20枚,3回:30枚コインを消費します"
$my_coin = 100
$play_coin = {1 => 10,2 => 20,3 => 30}
$i = 0 
puts "現在の私のコインの枚数は#{$my_coin}枚です"
puts "何回回しますか？"
$i = gets.to_i
$my_coin -= $play_coin[$i]
puts "コインが#{$my_coin}枚になりました。"

def play_slot
j = 0
k = 0
column_1 = "" #１列目の結果
column_2 = "" #2列目の結果
result = "" #全列の結果
a = [] #1列目
b = [] #2列目
c = [] #3列目

puts "3回Enterキーを押して下さい"
gets.chomp
count = 3
count.times do
  number = rand(1..9)
  column_1 += "|#{number}|||\n"
  a += ["#{number}"]
end
puts column_1
gets.chomp
count.times do
  number2 = rand(1..9)
  column_2 += "|#{a[j]}|#{number2}||\n"
  j += 1
  b += ["#{number2}"]
end
puts column_2
j = 0
gets.chomp
count.times do
  number3 = rand(1..9)
  result += "|#{a[j]}|#{b[k]}|#{number3}|\n"
  j += 1
  k += 1
  c += ["#{number3}"]
end
puts result
j = 0
k = 0

if (a[1] == b[1]) && (b[1] == c[1])
  puts "数字が揃いました
  コイン30枚ゲット！！"
  $my_coin += 30
  puts "コインが#{$my_coin}枚になりました"
elsif (a[0] == b[0]) && (b[0] == c[0])
  puts "数字が揃いました
  コイン30枚ゲット！！"
  $my_coin += 30
  puts "コインが#{$my_coin}枚になりました"
elsif (a[2] == b[2]) && (b[2] == c[2])
  puts "数字が揃いました
  コイン30枚ゲット！！"
  $my_coin += 30
  puts "コインが#{$my_coin}枚になりました"
end
end

def re_play
if $i == 3
   count = 3
   count.times do
   play_slot
   end 
   puts "現在の私のコインは#{$my_coin}枚です"
   puts "このまま続けますか？それともやめますか？
   1:続ける、２：やめる"
   select_num = gets.to_i
  if select_num == 1
    puts "何回回しますか？"
    puts "1回:１０枚,2回:20枚,3回:30枚コインを消費します"
    $i = gets.to_i
    $my_coin -= $play_coin[$i]
    puts "コインが#{$my_coin}枚になりました。"
    if $my_coin >= 10
      re_play
    elsif $my_coin < 10
       puts "コインが足りません。ゲーム終了。"
    end
  else
    puts "ゲーム終了"
  end
elsif $i == 2
  count = 2
  count.times do
  play_slot
  end 
  puts "現在の私のコインは#{$my_coin}枚です"
  puts "このまま続けますか？それともやめますか？
  1:続ける、２：やめる"
  select_num = gets.to_i
  if select_num == 1
    puts "何回回しますか？"
    puts "1回:１０枚,2回:20枚,3回:30枚コインを消費します"
    $i = gets.to_i
    $my_coin -= $play_coin[$i]
    puts "コインが#{$my_coin}枚になりました。"
    if $my_coin >= 10
      re_play
    elsif $my_coin < 10
      puts "コインが足りません。ゲーム終了。"
    end
  else
    puts "ゲーム終了"
  end
 
elsif $i == 1
  play_slot
  puts "現在の私のコインは#{$my_coin}枚です"
  puts "このまま続けますか？それともやめますか？
  1:続ける、２：やめる"
  select_num = gets.to_i
  if select_num == 1
    puts" 何回回しますか？"
    puts "1回:１０枚,2回:20枚,3回:30枚コインを消費します"
    $i = gets.to_i
    $my_coin -= $play_coin[$i]
    puts "コインが#{$my_coin}枚になりました。"
  if $my_coin >= 10
    re_play
  elsif $my_coin < 10
    puts "コインが足りません。ゲーム終了。"
  end
  else
    puts "ゲーム終了"
  end
end
end

re_play