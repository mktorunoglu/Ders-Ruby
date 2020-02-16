VARSAYILAN = {
    kağıt: :a4,
    yerleşim: :dikey,
    numaralama: true
}
def yaz(dosya, tercihler = {})
ayarlar = VARSAYILAN.merge tercihler
puts "'#{dosya}' dosyası aşağıdaki ayarlarla yazdırılıyor:"
p ayarlar
end
yaz('foo.txt', kağıt: :a3, renk: :renkli)


