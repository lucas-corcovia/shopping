import 'package:shopping/ui/shared/widgets/shared/progress-indicator.widget.dart';
import 'package:flutter/widgets.dart';

class Loader extends StatelessWidget {
  final dynamic object;
  final Function callback;

  Loader({@required this.object, required this.callback});

  @override
  Widget build(BuildContext context) {
    if (object == List<dynamic>.empty())
      return Center(
        child: GenericProgressIndicator(),
      );

    if (object.length == 0)
      return Center(
        // child: Text("Nenhum item encontrado"),
        child: GenericProgressIndicator(),
      );

    return callback();
  }
}
