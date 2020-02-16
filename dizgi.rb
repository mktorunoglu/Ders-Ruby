dizgi = "merhaba"
puts dizgi.size   #=>   7
#         .length
puts dizgi [0]   #=>   m
puts dizgi [0..2]   #=>   mer
puts dizgi [-1]   #=>   a
puts dizgi [4..-1]   #=>   aba


puts dizgi.upcase   #=>   MERHABA
puts dizgi.downcase   #=>   merhaba
puts dizgi.capitalize   #=>   Merhaba
p dizgi.split('')   #=>   ["m", "e", "r", "h", "a", "b", "a"]


puts dizgi.include? "ha"   #=>   true
puts dizgi.include? " ha "   #=>   false
puts dizgi.start_with? "me"   #=>   true
puts dizgi.end_with? "ba"   #=>   true
puts dizgi.count "a"   #=>   2   (Dizgideki "a" karakterinin sayısı)
puts dizgi.index "r"   #=>   2   (Dizgideki "r" karakterinin indexi)


puts dizgi + " dünya"   #=>   merhaba dünya   (String içi boşluklara dikkat!)
puts "dünya " + dizgi   #=>   dünya merhaba   (String içi boşluklara dikkat!)


dizgi.each_char do |c|
    puts c
end
# Sonuçları terminalde gör.


a = ['ahmet', 'cem', 'mehmet', 'ali']   #}   Aynı İşlev
a = %w(ahmet cem mehmet ali)            #}   Aynı İşlev
p a
puts a
print a
# Sonuçları terminalde gör.


# ALIŞTIRMA: Mevsim Ayları
aylar = %W(ocak şubat mart nisan mayıs haziran temmuz ağustos eylül ekim kasım aralık)
ilkbahar_aylari = aylar [2..4]
sonbahar_aylari = aylar [8..10]

puts "İlkbahar ayları:"
ilkbahar_aylari.each do | ay |
    puts ay.capitalize
end

    puts "Sonbahar ayları:"
sonbahar_aylari.each do | ay |
    puts ay.capitalize
end
# Sonuçları terminalde gör.


meyveler = %w{elma armut portakal muz}
ozel_meyve = []
meyveler.each do |meyve|
    if meyve.include? "a"
        ozel_meyve << meyve
    end
end 
p ozel_meyve                             #=>   ["elma", "armut", "portakal"]


