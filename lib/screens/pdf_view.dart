

// import 'package:flutter/material.dart';
// import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

// class PDFView extends StatefulWidget {
 

//   @override
//   _PDFViewState createState() => _PDFViewState();
// }

// class _PDFViewState extends State<PDFView> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadDocument();
//   }

//   bool _isLoading = true;
//   late PDFDocument document;
//   loadDocument() async {
//     document = await PDFDocument.fromAsset('assets/bookspdf/1.pdf');

//     setState(() => _isLoading = false);
//   }

//   changePDF(value) async {
//     setState(() => _isLoading = true);
//     if (value == 1) {
//       document = await PDFDocument.fromAsset('assets/bookspdf/1.pdf');
//     } else if (value == 2) {
//       document = await PDFDocument.fromURL(
//           "http://conorlastowka.com/book/CitationNeededBook-Sample.pdf");
//     } else {
//       document = await PDFDocument.fromAsset('assets/sample.pdf');
//     }
//     setState(() => _isLoading = false);
//   }
  
//   @override
//   Widget build(BuildContext context) {

    

   
//     return Scaffold(
//       appBar: AppBar(title: Text('PDF View'),),
      
//       body: Center(
//             child: _isLoading
//                 ? Center(child: CircularProgressIndicator())
//                 : PDFViewer(document: document)),
      
//     );
//   }
// }