import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping/ui/android/pages/account.page.dart';
import 'package:shopping/ui/android/pages/cart.page.dart';
import 'package:shopping/ui/android/pages/home.page.dart';

import '../../../blocs/cart.bloc.dart';

// ignore: must_be_immutable
class TabsPage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var bloc;
  TabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bloc = Provider.of<CartBloc>(context);
    return Scaffold(
      body: TabBarView(
        children: [
          const HomePage(),
          CartPage(),
          const AccountPage(),
        ],
      ),
      bottomNavigationBar: TabBar(
        tabs: [
          const Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.shopping_cart,
                ),
                bloc.cart.length >= 1 ? _containerItensCarrinho() : Container(),
              ],
            ),
          ),
          const Tab(
            icon: Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: const EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }

  Widget _containerItensCarrinho() {
    return Container(
      width: 18,
      height: 18,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Center(
        child: Text(
          bloc.cart.length.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
