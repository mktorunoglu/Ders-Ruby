num = 8
if num == 3
    puts "a"
elsif num == 8
    puts "b"
else num < 11
    puts "c"
end              #=>   b
# DİKKAT! "b" doğru kabul edildiği için "b"den sonraki koşullar bakılmaksızın işlem durur.


num = 16
if num > 7
    puts "evet"
    if num < 42
        puts "hayır"
    end
end                    #=>   evet
                       #=>   hayır


if 3 == 4 || 11 > 2
    puts "yes"
end                   #=>   yes
# BİLGİ!   || = ve ya ; && = ve   demektir.

