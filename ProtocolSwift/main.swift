//
//  main.swift
//  ProtocolSwift
//
//  Created by Dilara Akdeniz on 4.05.2023.
//

import Foundation

//Protocoller class veya struct gibi onlardan obje oluşturabilelim diye değil, başka class veya structlarda kullanabilelim diye varlar.
protocol Running {
    func myRun() //Protocol kod bloğu açmamıza izin vermiyor sadece fonksiyonu yazıyoruz bu şekilde. Bu her programlama dili için geçerli değil ama Swift'te kod blogu açılmasına izin yok.
}


class Animal {
    func running() {
        print("running")
    }
}


class Dog : Running {  //Bu şekilde protocol'den inheritance almak istersek Type uygun değil diye hata döndürür. Aynı hatayı tableView da gerekli fonksiyonları eklemezsek de alırız. myRun fonksiyonunu yazmamız gereklidir.
    func myRun() {
        print("running")
    }
   
    
}

let barley = Dog()
barley.myRun()

class Cat : Animal, Running {
    func myRun() {
        print("running")
    }
    
    
}

let cat = Cat()
cat.running()

class Turtle : Animal {
    
}

let turtle = Turtle()
turtle.running() //Turtle koşabilen bir hayvan olmak zorunda değil yani Animal'dan inheritance alıyor diye, tüm inheritance alanlar içerisindeki fonksiyonu ortak olarak kullanmak zorunda değiller.

/*
struct Bird : Animal {
    
}
*/ //Structlar inheritance alamaz. Bu kod direkt hata verir. Ama protocol alabilirler.

struct Bird: Running {
    func myRun() {
        print("running")
    }
}

let bird = Bird()
bird.myRun()
