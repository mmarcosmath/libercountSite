import 'package:flutter/material.dart';
import 'package:libercountsite/app/models/book.dart';

class ListBook extends StatefulWidget {
  final List<Book> listBook = [
    Book(
      codigo: "358565",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "45454",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "5668",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "358565",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "4785",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "77521",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "68821",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "114458",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "112",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "1",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "588474",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "1258",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "52585",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "1212",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "7878",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
    Book(
      codigo: "45887",
      titulo: "Amor é tudo que nós dissemos que não era.",
      autor: "Charles Bukowski",
    ),
  ];
  @override
  _ListBookState createState() => _ListBookState();
}

class _ListBookState extends State<ListBook> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 30,
        right: 30,
        bottom: 10,
      ),
      height: widget.listBook.length > 10 ? 1000.0 : 500.0,
      child: ListView.builder(
        itemCount: widget.listBook.length,
        itemBuilder: (BuildContext context, index) {
          var book = widget.listBook[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 15),
            borderOnForeground: true,
            color: Color(0xFFDDE4EB),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF2B80FF),
                  width: 3,
                ),
              ),
              alignment: Alignment.center,
              height: 100,
              child: ListTile(
                title: Text(
                  "${book.codigo} - ${book.titulo}",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(book.autor),
                trailing: book.notify
                    ? Image.asset(
                        "images/check_true.png",
                        height: 40,
                      )
                    : Image.asset(
                        "images/check_false.png",
                        height: 40,
                      ),
                onTap: () {
                  setState(() {
                    book.notify = book.notify ? false : true;
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
