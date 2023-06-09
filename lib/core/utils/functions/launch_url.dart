import 'package:bookly_app/core/utils/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl (context,String ? url) async{
  if(url!=null){
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri) ) {
      await launchUrl(uri);
    } else {
      showSnackBar(context, 'cannot launch $url');
    }
  }
}

