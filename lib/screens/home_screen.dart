import 'package:flutter/material.dart';
import 'package:login_ui/models/book_list_model.dart';
import 'package:login_ui/screens/pdf_view.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: _buildHomeBody(),
      ),
    );
  }

  Widget _buildHomeBody() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: bookListCollection.length,
        itemBuilder: (BuildContext ctx, index) {
          BookListModel _bookInfo = bookListCollection[index];
          return buildListViewUI(_bookInfo, ctx);
        });
  }

  Widget buildListViewUI(BookListModel eBook, BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
      child: Card(
        elevation: 1,
        color: Colors.green.shade100,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Image.asset('assets/images/Profile-Pic-Demo.png'),
            ),
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            //   child: Image.asset(
            //     eBook.bookImage.toString(),
            //     width: 100,
            //     height: 100,
            //   ),
            // ),
            Text(
              '' + eBook.bName.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => PDFView()));
              },
              child: Icon(
                Icons.download,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
