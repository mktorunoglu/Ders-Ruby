notlar = [
    ['Ahmet', 50, 60], ['Mehmet', 60, 90],
    ['Temel', 70, 20], ['Dursun', 0, 100],
    ['Fadime', 100, 100], ['Zeynep', 30, 30]
]

notlar.each do | ogrenci |
    puts "#{ogrenci [0]} isimli öğrencinin vize ve final notları: #{ogrenci [1]}, #{ogrenci[2]}"
end


puts "

"
not_ortalaması = []
notlar.each do | ogrenci |
    not_ortalaması.push [ogrenci [0], ogrenci [1] * 0.4 + ogrenci [2] * 0.6]
end
not_ortalaması.each do | ortalama |
    puts "#{ortalama [0]} isimli öğrencinin not ortalaması: #{ortalama [1]}"
end


basarili_ogrenci = notlar.select { | ogrenci | 50 <= ogrenci [2] }
basarili_not_ortalaması = []
basarili_ogrenci.each do | ogrenci |
    basarili_not_ortalaması.push [ogrenci [0], ogrenci [1] * 0.4 + ogrenci [2] * 0.6]
end


cana_girenler = basarili_not_ortalaması.select { | ogrenci | 20 < ogrenci [1] && ogrenci [1] < 80 }
puts "

Çana giren öğrenciler: "
cana_girenler.each do | ogrenci |
    puts "#{ogrenci [0]} (Not ortalaması: #{ogrenci [1]})"
end


ortalama_toplamı = 0
not_ortalaması.each do | ortalama |
    ortalama_toplamı += ortalama [1]
end
sınıf_ortalaması = ortalama_toplamı / notlar.size


dersi_gecenler = basarili_not_ortalaması.select { | ogrenci | ogrenci [1] > 60 }
dersi_gecenler = basarili_not_ortalaması.select { | ogrenci | ogrenci [1] > 40 && ogrenci [1] > sınıf_ortalaması }


puts "

"
dersi_gecenler.each do | ogrenci |
    puts "#{ogrenci [0]} isimli öğrenci #{ogrenci [1]} not ortalamasıyla dersi geçmiştir. "
end


can_toplamı = 0
cana_girenler.each do | ortalama |
    can_toplamı += ortalama [1]
end
can_ortalaması = can_toplamı / cana_girenler.size


puts"

Toplam Öğrenci Sayısı: #{notlar.size}
Dersi Geçen Öğrenci Sayısı: #{dersi_gecenler.size}
Genel Sınıf Ortalaması: #{sınıf_ortalaması}
Çana Giren Öğrencilerin Ortalaması: #{can_ortalaması}
Dersi Geçenlerin Yüzdesi: % #{dersi_gecenler.size * 100.0 / notlar.size}"


# HOCANIN SORDUĞU SORU:
# Öğrencilerin vize ve final notlarının 2 katını göster.
gorev = notlar.map {|isim, vize, final| [isim, vize * 2, final *2]}
p gorev


