import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reading_app/resource/colors.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

/// Represents Pdf_Viewer for Navigation
class Pdf_Viewer extends StatefulWidget {
  @override
  _Pdf_Viewer createState() => _Pdf_Viewer();
}

class _Pdf_Viewer extends State<Pdf_Viewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  File? _tempFile;

  @override
  void initState() {
    initializeFile();
    super.initState();
  }

  // ignore: avoid_void_async
  void initializeFile() async {
    final Directory tempPath = await getApplicationDocumentsDirectory();
    final File tempFile = File(tempPath.path + '/Writicle_$Title.pdf');
    final bool checkFileExist = await tempFile.exists();
    if (checkFileExist) {
      _tempFile = tempFile;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (_tempFile == null) {
      child = SfPdfViewer.network(
          //  'https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf',

          'https://pegasusels.com/library/hpps.pdf',
          key: _pdfViewerKey,
          onDocumentLoaded: (PdfDocumentLoadedDetails details) async {
        final Directory tempPath = await getApplicationDocumentsDirectory();
        _tempFile = await File(tempPath.path + '/flutter_succinctly.pdf')
            .writeAsBytes(details.document.save());
      });
    } else {
      child = SfPdfViewer.file(
        _tempFile!,
        key: _pdfViewerKey,
      );
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeClr,
        title: const Text('Writicle PDF Viewer'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: child,
    );
  }
}
