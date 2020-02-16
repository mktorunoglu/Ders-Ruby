# KUYRUK (Queue)
kuyruk = []
kuyruk.push # x
kuyruk.push # y   ...
# First In First Out (FIFO - İlk Giren İlk Çıkan)


# YIĞIT (Stack)
# Yığıta son eklenen eleman, yığıttan ilk çıkarılır.
# Last In First Out (LIFO - Son Giren İlk Çıkan)


# ALIŞTIRMA: Kuyruk
pideci = []
pideci.push "Ali Bey"
pideci.push "Burak Bey"
pideci.push "Cemil Bey"
pideci.push "Derya Hanım"
pideci.push "Eda Hanım"
pideci.push "Fahri Bey"
pideci.push "Gamze Hanım"
pideci.push "Hakan Bey"
pideci.push "Irmak Hanım"
pideci.push "Kemal Bey"

pideci.each do | musteri |
puts "Pideniz hazır #{musteri}!"
end
# Sonuçları terminalde gör.

