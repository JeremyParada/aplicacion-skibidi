import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebViewScreen(),
    );
  }
}

class WebViewScreen extends StatefulWidget {
  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    // Inicialización de webview_flutter, si es necesario en tu versión específica
    // WebView.platform = SurfaceAndroidWebView(); // Esta línea puede ser opcional
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No incluyas AppBar aquí para eliminar la barra de título
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://martmoraa.wixsite.com/skibidishop-pro3',
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (NavigationRequest request) {
            return NavigationDecision.navigate; // Permite todas las navegaciones
          },
        ),
      ),
    );
  }
}
