
class BookListModel{

  int bId;
  String? bName;
  String? bPdf;
  String? bookImage;

  BookListModel(this.bId,{this.bName, this.bPdf,this.bookImage});

}

List<BookListModel> bookListCollection=[
  BookListModel(1,bName:'Communication skills for medical professionals',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(2,bName:'How to be a good prescriber',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(3,bName:'Common side effects of drugs and how to manage those',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(4,bName:'Common drug interaction',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(5,bName:'Use of drugs during pregnancy',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(6,bName:'Use of drugs during lactation',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(7,bName:'Pain management in special situation',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(8,bName:'IV fluids',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(9,bName:'Prescribing in the elderly',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(10,bName:'Approaches',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(11,bName:'Respiratory system',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(12,bName:'CVS diseases',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(13,bName:'GI tract diseases',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(14,bName:'Hepatobilliary & pancreatic diseases',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(15,bName:'Endocrine',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(16,bName:'Haematology',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(17,bName:'Musculoskeletal system',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(18,bName:'Renal system',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(19,bName:'Infectious disease',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(20,bName:'Neurology',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(21,bName:'Electrolytes imbalance',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(22,bName:'Poisoning',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(23,bName:'Gynecology',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(24,bName:'Obstetric',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(25,bName:'Pediatric medicine',bPdf: '',bookImage: 'assets/images/bookimage.jpg'),
  BookListModel(26, bName:'Dermatology',bPdf: '',bookImage: 'assets/images/bookimage.jpg')
];