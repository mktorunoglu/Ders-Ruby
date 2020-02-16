# ALIŞTIRMA: Öğrenci Kayıt
# 1)
$ogrenciler = []
OZELLIKLER = %i(isim numara cinsiyet mezunmu)
Ogrenci = Struct.new(*OZELLIKLER)
VARSAYILAN = {
  mezunmu: false,
}
def kaydet(bilgiler)
  ozellikler = VARSAYILAN.merge(bilgiler).values_at(*OZELLIKLER)
  $ogrenciler << Ogrenci.new(*ozellikler)
end
kaydet isim: 'perran kutman', cinsiyet: :k, numara: 123
kaydet isim: 'şener şen', numara: 456, cinsiyet: :e, mezunmu: true
puts $ogrenciler   #=>   #<struct Ogrenci isim="perran kutman", numara=123, cinsiyet=:k, mezunmu=false>
                         #<struct Ogrenci isim="şener şen", numara=456, cinsiyet=:e, mezunmu=true>
# 2)
$ogrenciler = []
Ogrenci = Struct.new :isim, :numara, :cinsiyet, :mezunmu
def kaydet(isim:, numara:, cinsiyet:, mezunmu: false)
  $ogrenciler << Ogrenci.new(isim, numara, cinsiyet, mezunmu)
end
kaydet isim: 'perran kutman', cinsiyet: :k, numara: 123
kaydet isim: 'şener şen', numara: 456, cinsiyet: :e, mezunmu: true
puts $ogrenciler.first.isim   #=>   perran kutman
puts $ogrenciler   #=>   #<struct Ogrenci isim="perran kutman", numara=123, cinsiyet=:k, mezunmu=false>
                         #<struct Ogrenci isim="şener şen", numara=456, cinsiyet=:e, mezunmu=true>

