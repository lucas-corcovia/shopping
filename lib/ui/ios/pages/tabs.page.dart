import 'package:flutter/cupertino.dart';
import 'package:shopping/ui/ios/pages/home.page.dart';

class TabsPage extends StatelessWidget {
  const TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: CupertinoColors.lightBackgroundGray,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: "Carrinho",
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            switch (index) {
              case 0:
                return const HomePage();

              case 1:
                return Container(
                  color: CupertinoColors.destructiveRed,
                );

              default:
                return Container(
                  color: CupertinoColors.systemGreen,
                );
            }
          },
        );
      },
    );
  }
}
