aylar = [ "ocak", "şubat", "mart", "nisan", "mayıs", "haziran", 
"temmuz", "ağustos", "eylül", "ekim", "kasım", "aralık" ]

puts "İlk 6 ay:"
aylar.each_with_index do |ay, i|
    if i < 6
      puts ay
    end
end

# Yukarıdaki "ilk 6 ay" hesaplamasının diğer yolları:
aylar.each_with_index do |ay, i|
    break if i > 5
#     puts ay
end

aylar[0..5].each do |ay|
#     puts ay
end


