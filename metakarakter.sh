#! /bin/bash

# Meta karakterleri script yazarken sık sık kullanarız. Kısaca bunlara deginecegim:

# 1) (;) --> Noktalı virgul karakteri komutları yanyana yazıp calistirmamıza yarar. Orn: date;cal;who

# 2) (*) --> Daha evrensel olarak iyi bilinen bir metakarakterdir ve bir desen ararken 0 veya daha fazla anlamına gelir. Örneğin: bul. -name * .mp3
# * .mp3, .mp3 ile biten herhangi bir dosya adı için bir eşleşme döndürür. Benzer şekilde, grep komutunu kullanarak yıldız işaretini aşağıdaki gibi gösterebilirdim:
# ps -ef | grep F * efox
# Bu fark hafifçe farklıdır çünkü yıldız işareti sıfır ya da daha fazla anlamına gelir, aynı zamanda firefox, facefox ve fonefox da bulabilir, aynı zamanda flutefox, ferretfox ve hatta fefox da bulabilir.

# 3) (^) --> Bir satırın veya bir dizenin başlangıcını belirtmek için kullanılır. Peki nasıl kullanılıyor? ls komutu, bir klasördeki tüm dosyaları aşağıdaki gibi listelemek için kullanılır:
# Eğer "gnome" gibi belirli bir dizeyle başlayan bir klasördeki tüm dosyaları bilmek istiyorsanız, bu dizgiyi belirtmek için ^ kullanılabilir. Örneğin: ls | grep ^ gnome
# Bunun yalnızca gnome ile başlayan dosyaları listelediğini unutmayın. Eğer herhangi bir yerde dosya isminde bir gnome olan dosyalar istiyorsanız, tekrar yıldız işaretine geri dönersiniz.
# Yukarıdaki örnekte, ls bir dosya isimleri listesi döndürür ve bu listeyi desen eşleştirmesi için kullanılan grep'e geçirir. 
# grep, ^ sembolünün, kendisinden sonra gelen karakterlerle başlayan bir şey bulması anlamına geldiğini ve bu durumda bir gnome olduğunu bilir.

# 4) (?) --> Herhangi bir karakter anlamına gelmektedir. Örneğin: ls -lap /bin/?? 
# Bu örnek /bin altında herhangi iki karakterli olan dosya ve dizinleri sıralayacaktır.

# 5) ([]) --> Köşeli parantezi if, for gibi durumlarda kullanmaktayız. Örneğin: ls -la /etc/[de]* 
# Örneği açıklayacak olursak. /etc altında d ve e harfleri ile başlayıp herhangi bir karakterle devam eden dosya ve dizinleri sıralar. 

# 6) ({}) --> Süslü parantezi farklı işlemler için kullanabiliriz. Örneğin: touch file{1..10}.txt
# Bu komutun çalışması sonucunda 1'den başlayarak 10'a kadar .txt uzantılı dosya oluşturur. file1.txt,file2.txt...