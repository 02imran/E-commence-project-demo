import 'package:flutter/material.dart';
import 'package:login_ui/models/book_list_model.dart';

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
          return buildListViewUI(_bookInfo);
        });
  }

  Widget buildListViewUI(BookListModel eBook) {
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
              child: Image.asset('assets/images/bookimage.jpg'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Image.asset(
                eBook.bookImage.toString(),
                width: 100,
                height: 100,
              ),
            ),
            Text(
              '' + eBook.bName.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
              maxLines: 2,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    );
  }
}
