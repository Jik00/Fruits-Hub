import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/context_extensions.dart';

class PageviewItem extends StatelessWidget {
  const PageviewItem(
      {super.key,
      required this.img,
      required this.backgroundImg,
      required this.subtitle,
      required this.title});

  final String img, backgroundImg, subtitle;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Positioned.fill(
                  child: SvgPicture.asset(backgroundImg, fit: BoxFit.fill)),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SvgPicture.asset(img),
              ),
              Positioned(
                  top: 39,
                  //left: 333,
                  child: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Text(context.loc.onboardingSkip,
                        style: const TextStyle(
                          fontSize: 13,
                          color: kgrayscale400,
                        )),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
