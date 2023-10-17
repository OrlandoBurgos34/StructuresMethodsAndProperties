
import UIKit

struct Book {
    // propiedades de la estructura
    let titleOfTheBook : String
    var authorName : String
    var yearOfEdition : Int
    // objetos
    
    init (titleOfTheBook : String, authorName: String, yearOfEdition:Int){
        self.titleOfTheBook = titleOfTheBook
        self.authorName = authorName
        self.yearOfEdition = yearOfEdition
    }
    
    // metodo de la estructura o funcion asociada
    func bookInformation (){
        print("Titulo: \(titleOfTheBook)")
        print("Autor: \(authorName)")
        print("Año de Edicion: \(yearOfEdition)")
    }
    mutating func dataChange(newYearEdition: Int){
        self.yearOfEdition = newYearEdition
    }
}

var bookDetails = Book(titleOfTheBook: "Si lo crees lo creas", authorName: "Brian Tracy", yearOfEdition: 2020)

bookDetails.bookInformation()

bookDetails.dataChange(newYearEdition: 2018)

print()
print()
print("Informacion Actualizada:")
bookDetails.bookInformation()


