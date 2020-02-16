rehber = {
    'annem' => '05051234567',
    'babam' => '05331234567',
    'kanka' => '05337654321'
}

puts rehber.class   #=>   Hash
p rehber.keys   #=>   ["annem", "babam", "kanka", "abim"]
p rehber.values   #=>   ["05051234567", "05331234567", "05303216547", "05333216547"]
puts rehber   #=>   {"annem"=>"05051234567", "babam"=>"05331234567", "kanka"=>"05337654321"}


puts rehber['babam']   #=>   '05331234567'
p rehber.key? 'annem'   #=>   true
p rehber.key? 'olmayan'   #=>   false
p rehber['olmayan']   #=>   nil
# Dikkat!
rehber['olan'] = nil
p rehber['olan']   #=>   nil
p rehber.key? 'olan'   #=>   true


rehber['abim'] = '05333216547'   #=>   Hashte olmayan bir anahtar ve değer eklemek
rehber['kanka'] = '05303216547'   #=>   Hashte olan bir anahtarın değerini değiştirmek
puts rehber   #=>   {"annem"=>"05051234567", "babam"=>"05331234567", "kanka"=>"05303216547", "abim"=>"05333216547"}


rehber.each do |key, value|
    puts "#{key}: #{value}"
end
# Sonuçları terminalde gör.


rehber.each_key do |isim|
    puts isim
end
rehber.each_value do |numara|
    puts numara
end
# Sonuçları terminalde gör.


rehber = {
    'annem' => '05051234567',
    'babam' => '05331234567',
    'kanka' => '05337654321'
}
rehber.each_key do |isim|
    rehber[isim] += '9'
end
puts rehber
# Sonuçları terminalde gör.


# ALIŞTIRMA: Tek Meyveler
meyveler = %w(elma armut Elma kiraz şeftali karpuz karpuz kavun şeftali ARMUT)
pazar = {}
meyveler.each do |meyve|
    pazar[meyve.downcase] = true
end
p pazar.keys   #=>   ["elma", "armut", "kiraz", "şeftali", "karpuz", "kavun"]
p pazar   #=>   {"elma"=>true, "armut"=>true, "kiraz"=>true, "şeftali"=>true, "karpuz"=>true, "kavun"=>true}


# ALIŞTIRMA: Kelime Frekansı
metin = "Nush ile uslanmayanı etmeli tekdir; tekdir ile uslanmayanın hakkı kötektir."
frekans = {}
metin.split.each do |kelime|
  kelime.delete! '.,;'
  kelime.downcase!
  frekans[kelime] = 0 unless frekans[kelime]
  frekans[kelime] += 1
end
p frekans   #=>   {"nush"=>1, "ile"=>2, "uslanmayanı"=>1, "etmeli"=>1, "tekdir"=>2, "uslanmayanın"=>1, "hakkı"=>1, "kötektir"=>1}


# ALIŞTIRMA: Harf Frekansı
metin = "Nush ile uslanmayanı etmeli tekdir; tekdir ile uslanmayanın hakkı kötektir."
frekans = {}
metin.split('').each do |kelime|
  kelime.delete! '.,;'
  kelime.downcase!
  frekans[kelime] = 0 unless frekans[kelime]
  frekans[kelime] += 1
end
p frekans   #=>   {"n"=>6, "u"=>3, "s"=>3, "h"=>2, " "=>9, "i"=>6, "l"=>5, "e"=>7, "a"=>7, "m"=>3, "y"=>2, "ı"=>3, "t"=>5, "k"=>6, "d"=>2, "r"=>3, ""=>2, "ö"=>1}


# ALIŞTIRMA: Eleman Değiştirme
names = ['yusuf','kemal', 'bekir','ahmet']
#'kemal'in ismini değiştiriniz.
# names['kemal'] = 'mehmet'   #=>   Yanlıştır.
# Doğru çözüm:
names[1] = 'mehmet'
# Ya da;
# names[names.index('kemal')] = 'mehmet'
p names   #=>   ["yusuf", "mehmet", "bekir", "ahmet"]


# ALIŞTIRMA: Aynı Anahtarın Farklı Gösterimleri
h = {
    :yasir => 1,
    "yasir" => 2,
    yasir: 3,
    :"yasir" => 4,
}
p h ["yasir"]   #=>   2
p h [:yasir]   #=>   4
# SONUÇ: Terminalde uyarı verilir. Çünkü 1, 3 ve 4 değerli anahtarlar aynıdır.
# Terminalde aynı anahtarlı olanlardan son basamaktaki gösteriminin değeri verilir.


# ALIŞTIRMA: Aile Ağacı
ayse = {isim: "Ayşe"}
mehmet = {isim: "Mehmet"}
aleyna = {isim: "Aleyna"}
tunahan = {isim: "Tunahan"}
puts ayse[:isim]   #=>   Ayşe

ayse[:es] = mehmet
ayse[:kiz_cocuk] = aleyna
ayse[:erkek_cocuk] = tunahan
puts ayse[:kiz_cocuk] [:isim]   #=>   Aleyna

mehmet[:es] = ayse
mehmet[:kiz_cocuk] = mehmet[:es] [:kiz_cocuk]
mehmet[:erkek_cocuk] = mehmet[:es] [:erkek_cocuk]
puts mehmet[:es] [:erkek_cocuk] [:isim]   #=>   Tunahan

aleyna[:anne] = ayse
aleyna[:baba] = aleyna[:anne] [:es]
aleyna[:kardes] = aleyna [:anne] [:erkek_cocuk]
puts aleyna[:baba] [:isim] #=>   Tunahan

tunahan[:anne] = ayse
tunahan[:baba] = tunahan [:anne] [:es]
tunahan [:kardes] = tunahan [:baba] [:kiz_cocuk]
puts tunahan [:anne] [:es] [:kiz_cocuk] [:isim]   #=>   Aleyna

ayse[:isim] = "Fatma"
puts ayse[:isim]   #=>   Fatma


# ALIŞTIRMA: Öğrenci Kayıt
$ogrenciler = []
def kaydet(isim, numara, cinsiyet, mezunmu)
  $ogrenciler << {
    isim: isim,
    numara: numara,
    cinsiyet: cinsiyet,
    mezunmu: mezunmu
  }
end
kaydet('perran kutman', 123, :k, false)
kaydet('şener şen', 456, :e, true)
p $ogrenciler   #=>   [{:isim=>"perran kutman", :numara=>123, :cinsiyet=>:k, :mezunmu=>false}, {:isim=>"şener şen", :numara=>456, :cinsiyet=>:e, :mezunmu=>true}]
# Ya da;
$ogrenciler = []
def kaydet(isim:, numara:, cinsiyet:, mezunmu: false)
  $ogrenciler << {
    isim: isim,
    numara: numara,
    cinsiyet: cinsiyet,
    mezunmu: mezunmu
  }
end
kaydet(isim: 'perran kutman', cinsiyet: :k, numara: 123)
kaydet(isim: 'şener şen', numara: 456, cinsiyet: :e, mezunmu: true)
p $ogrenciler   #=>   [{:isim=>"perran kutman", :numara=>123, :cinsiyet=>:k, :mezunmu=>false}, {:isim=>"şener şen", :numara=>456, :cinsiyet=>:e, :mezunmu=>true}]


# ALIŞTIRMA: Ürün Satma
def urun_olustur(urun_kodu, urun_adi, urun_fiyati, urun_stok_sayisi)
    {
        kod: urun_kodu,
        ad: urun_adi,
        fiyat: urun_fiyati,
        stok: urun_stok_sayisi
    }
end

def urun_sat(urun, sayi)
    if urun[:stok] - sayi >= 0
        urun[:stok] -= sayi
    else
        puts "Stokta yeterli ürün bulunmuyor!"
    end
end

def urun_stok_durumu(urun)
    "Ürün Kodu: #{urun[:kod]}\nÜrün Adı: #{urun[:ad]}\nÜrün Fiyatı: #{urun[:fiyat]}\nÜrün Stok Sayısı: #{urun[:stok]}\n\n"
end

elma = urun_olustur(1, "Elma", "1 TL", 10)
urun_sat(elma, 1)
puts urun_stok_durumu(elma)
urun_sat(elma, 7)
puts urun_stok_durumu(elma)


