

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:untitled3/Widgets/OnboardingPageIndecator/Onboarding.dart';

// اون بوردانج معا موئشر للتنقل في واجهات الاونبوردانج

class PageindIcatorpage extends StatelessWidget {
  const PageindIcatorpage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double hight=(MediaQuery.of(context).size.height/6);
    return Expanded(
      child: Container(

          child: new PageIndicatorContainer(
            shape: IndicatorShape.circle(),
            length:nn.length,
            align: IndicatorAlign.bottom,
            indicatorColor:  Color(0xFF00BF6D),

            indicatorSelectorColor: Colors.black,


            child: PageView.builder(

                physics: AlwaysScrollableScrollPhysics(),
                scrollDirection:Axis.horizontal,
                itemCount: nn.length,
                itemBuilder: (BuildContext context, index){
                  final Onboarding cc=nn[index];
                  return Onboarding(imageUrl: cc.imageUrl, titel: cc.titel, info: cc.info);
                  //  return viewpage(titel:myarray[i]["titel"],image:myarray[i]["image"],info:myarray[i]["info"])
                }

            ),

            // length:myarray.length
          )
      ),
    );
  }
}
