def janken
    puts "じゃんけん..."
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

    player_hand1 = gets.to_i
    program_hand1 = rand(3)
    jankens = ["グー", "チョキ", "パー"]

    if [0, 1, 2].include?(player_hand1)
        puts "ホイ！"
        puts "------------------------"
        puts "あなた：#{jankens[player_hand1]}を出しました"
        puts "相手：#{jankens[program_hand1]}を出しました"
        Acchimuite()
    elsif player_hand1 == 3
        puts "またあそぼうね！"
        return false
    elsif player_hand1 == program_hand1
        puts "あいこで..."
        return true
    else
        puts "じゃんけんしよう！"
        return true
    end
end

def Acchimuite
    puts "あっち向いて〜"
    puts "0(上) 1(下) 2(左) 3(右)"

    player_hand2 = gets.to_i
    program_hand2 = rand(4)
    directions = ["上", "下", "左", "右"]

    if [0, 1, 2, 3].include?(player_hand2)
        puts "ホイ！"
        puts "------------------------"
        puts "あなた：#{directions[player_hand2]}"
        puts "相手：#{directions[program_hand2]}"

        janken()
    else
        puts "どこを向く？"
        Acchimuite()
    end
end

next_game = true

while next_game
    next_game = janken
end