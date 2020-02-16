def bar(sayi1, sayi2)
    sayi1 * sayi2
end
puts bar(8, 5)       #=>   40


# ALIŞTIRMA: Santigrad - Fahrenheit
def celcius_to_fahrenheit(c)
    c * 9 / 5 + 32
end
print "Gündüz sıcaklığı (Fahrenheit cinsinden): "
puts celcius_to_fahrenheit(25)


#ALIŞTIRMA: İdeal Kilo
def robinson(boy, kadinmi)
    if kadinmi
      49 + 1.7 * (boy - 152.4) / 2.54
    else
      52 + 1.9 * (boy - 152.4) / 2.54
    end
end
printf "İdeal kilonuz: %.2f\n", robinson(160, true)


# ALIŞTIRMA: Üçgen mi?
def ucgen?(a, b, c)
    a + b > c && a + c > b && b + c > a
end
a, b, c = 3, 5, 8
puts "Üçgen" + (ucgen?(a, b, c) ?  "" : " değil")


# ALIŞTIRMA: Dizinin En Büyük Terimi
def enbuyuk(sayilar)
    enbuyuk = sayilar.first   # Yerel değişken adı fonksiyon adıyla aynı olabilir.

    sayilar.each do |x|
      enbuyuk = x if x > enbuyuk
    end
    enbuyuk
end
puts enbuyuk([23, 46, -72, 32])


# ALIŞTIRMA: Tek Mi Çift Mi?
def sayihakkinda(sayi)
    sonuc = ""
    if sayi % 2 == 0
        sonuc = "Çift"
    else
        sonuc = "Tek"
    end
    return sonuc     # ("return" yazılmasa da olur. Yazılması önerilmez.)
end
puts sayihakkinda(15)   #=>   Tek


# ALIŞTIRMA: Asal Mı?
def asalmi(sayi)
    i = 1
    sayac = 0
    sonuc = ""
    while i <= sayi
        if sayi % i == 0
            sayac += 1
        end
        i += 1
    end
    if sayac == 2
        sonuc = "Asal"
    else
        sonuc = "Asal değil"
    end
    sonuc
end
puts asalmi(7)           #=>   Asal


# ALIŞTIRMA: İçerir Mi?
def icerirmi(kelime, harf)
    i = 0
    sonuc = ""
    while i < kelime.length
        if kelime[i] == harf
            sonuc = "İçerir"
            break
        else
            sonuc = "İçermez"
        end
        i += 1
    end
    sonuc
end
puts icerirmi("mehmet", "e")   #=>   İçerir


