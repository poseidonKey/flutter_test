import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  const MyCarrotHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Column(
        children: [
          _buildProfileRow(),
          const SizedBox(
            height: 30,
          ),
          _buildProfileButton(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
              _buildRoundTextButton('구매내역', FontAwesomeIcons.shoppingBag),
              _buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProfileRow() {
    return Container(
      color: Colors.redAccent[100],
      height: 60,
    );
  }

  Widget _buildProfileButton() {
    return Container(
      color: Colors.redAccent[100],
      height: 45,
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Container(
      color: Colors.redAccent[100],
      height: 60,
      width: 60,
    );
  }
}
