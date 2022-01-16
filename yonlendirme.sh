#! /bin/bash

3 tane iletişim kanalımız var:

1 INPUT  ---> Klavye < (0)
2 OUTPUT ---> Ekran (Standart output - çıktı) > (1)
3 OUTPUT ---> Ekran (Standart error  - hata) 2> (2)

komut > dosya (Komutun çıktısı dosyaya yazılır)

komut >> dosya (Komutun çıktısı dosya sonuna yazılır)

komut < dosya (Komutun girdisi dosyadan okunur)

komut >| dosya (noclobber set edilmiş olsa dahi komut çıktısı dosyaya yazılır)

komut 2> dosya (Komutun hataları dosyaya yazılır)

komut > dosya 2>&1 (Komutun çıktısı ve hataları aynı dosyaya yazılır)

komut &

