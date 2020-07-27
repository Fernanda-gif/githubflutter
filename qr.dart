import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';
//import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:share_files_and_screenshot_widgets/share_files_and_screenshot_widgets.dart';

void main() {
  runApp(MyApp6());//persona: fetchPost()));
}

class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Flutter ScreenShot Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: 'GENERADOR CÓDIGO QR'),
 );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  GlobalKey previewContainer = new GlobalKey();
  int originalSize = 800;


  @override
  Widget build(BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                      title: Text(widget.title),
                    ),
                    body: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RepaintBoundary(
                              key: previewContainer,
                              child: Container(
                                decoration: BoxDecoration(
                                    //border: Border.all(width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width - 20,
                                height: MediaQuery.of(context).size.height - 250,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                              QrImage(data: 'https://intecmedia.com.mx/app-fergie/verificacion.php?codigo=86595',//'https://intecmedia.com.mx/app-fergie/verificacion.php?codigo=22',
                version: QrVersions.auto,
                size: 320,
                gapless: false,
                //embeddedImage: AssetImage('imag/qr.jpg'),
            ),
             ],
                    ),
                  ),
                ),
             Container(
                        child: RaisedButton(
                            child: Text("Compartir Screenshot"),
                            onPressed: () {
                              ShareFilesAndScreenshotWidgets().shareScreenshot(
                                  previewContainer,
                                  originalSize,
                                  "Title",
                                  "QRAccesoMarínela.png",
                                  "image/png",
                                  text: "Esta es una captura de tu código QR");
                            })),
         ],
                ),
            
            ),
          ),
          );
  }
}

//poner variable del numero aleatorio que se genero en el cuestionario
//en vez del 15 le concateno el numero aleatorio que se crea 
//cambie en base de datos el id por unico 
 // Image _image;
//alerta con un valor que venga desde php