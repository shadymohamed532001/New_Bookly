import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
            size: 27,
          ),
        ),
        Text(
          'Easy Bookly ',
          style:
              GoogleFonts.notoSans(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.barsStaggered,
            ))
      ],
    );
  }
}
