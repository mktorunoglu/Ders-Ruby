# DİZİ (Array)
# [0] (Index (İndis))


diziler = [3, 4, 5]
puts "Dizinin birinci elemanı #{diziler [0]}"   #=>   Dizinin birinci elemanı 3
puts "Dizinin ikinci elemanı #{diziler [1]}"   #=>   #=>   Dizinin ikinci elemanı 4
puts "Dizinin üçüncü elemanı #{diziler [2]}"   #=>   Dizinin üçüncü elemanı 5


puts "Dizinin tüm elemanları #{diziler}"   #=>   Dizinin tüm elemanları [3, 4, 5]
puts diziler   # 3
#                4
#                5


puts "Dizinin ilk elemanı #{diziler.first}"   #=>   Dizinin ilk elemanı 3
# diziler.first == diziler [0]
puts "Dizinin son elemanı #{diziler.last}"   #=>   Dizinin son elemanı 5
# diziler.last == diziler [-1]
puts "Dizinin eleman sayısı (uzunluğu) #{diziler.size}"   #=>   Dizinin eleman sayısı (uzunluğu) 3
# diziler.size == diziler.length


puts "Dizinin en büyük sayısı #{diziler.max}"   #=>   Dizinin en büyük sayısı 5 
puts "Dizinin en küçük sayısı #{diziler.min}"   #=>   Dizinin en küçük sayısı 3


dizi = []
puts dizi.size   #=>   0
dizi << 4   #}}}   dizi = [4]
puts dizi.size   #=>   1


# diziler = [3, 4, 5]
diziler.unshift #{değer} #(başa değer eklemek)
diziler.push #{değer} #(sona değer eklemek)
diziler << #{değer} #(sona değer eklemek)
diziler.shift #{değer} #(baştan değer çıkarmak)
diziler.pop #{değer} #(sondan değer çıkarmak)


sayilar = [3, 4, 5]
sayilar.each do | sayi |
    puts sayi
end                        #=>   3
#                                4
#                                5


# diziler = [3, 4, 5]
puts diziler.include? 4   #=>   true
puts diziler.include? 6   #=>   false


# ALIŞTIRMA: Sahte Paralar
paralar = [[5, "48672"], [10, "42857"], [20, "48844"], [50, "49245"], [100, "48752"],
[5, "Tarkan Tevetoğlu"], [10, "Nil Karaibrahimgil"]]

sahte_paralar = []

paralar.each do | para |
   if para.last == "Tarkan Tevetoğlu"
       sahte_paralar << para
    end

    if para.last == "Nil Karaibrahimgil"
        sahte_paralar << para
    end
end
p sahte_paralar   #=>   [[5, "Tarkan Tevetoğlu"], [10, "Nil Karaibrahimgil"]]


# ALIŞTIRMA: Dizinin Uzunluğu
sayilar = [23, 46, -72, 32]
uzunluk = 0
sayilar.each do | sayi |
    uzunluk += 1
end
puts uzunluk              #=>   4
# NOT: "uzunluk = 0"da 0 yerine nil yazarsak ERROR verir.


# ALIŞTIRMA: Dizinin Son Terimi
sayilar = [23, 46, -72, 32]
son = nil
sayilar.each do | x |
    son = x
end
puts son                      #=>   32
# NOT: "son = nil"de nil yerine 0 yazsak da aynı sonuç çıkar.


# ALIŞTIRMA: Dizinin En Büyük Terimi
sayilar = [19,2,7,23,9,37,16]
enbuyuk = sayilar [0]
sayilar.each do | sayi |
    if sayi >= enbuyuk
        enbuyuk = sayi
    end
end
puts enbuyuk   #=>   37


# ALIŞTIRMA: Dizide Terimleri Yer Değiştirme
sayilar = [23, 46, -72, 32]
a = sayilar.first
b = sayilar.last
sayilar.pop
sayilar.shift
sayilar.push a
sayilar.unshift b
p sayilar                  #=>   [32, 46, -72, 23]


# ALIŞTIRMA: Diziyi Tersten Yazma
diziler = [2, 47, 91, 24, 5]
diziler_ters = []
diziler.each do | eleman |
diziler_ters.unshift eleman
end
p diziler_ters                 #=>   [5, 24, 91, 47, 2]


# ALIŞTIRMA: Dizi Elemanlarının İndisleri
sayilar = [23, 46, -72, 32]
sayilar.each_with_index do | sayi, i |
    puts "#{i} indexli eleman #{sayi}"
end
# Sonuçları terminalde gör.


