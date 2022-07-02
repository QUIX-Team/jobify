import 'package:community_material_icon/community_material_icon.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/widget/custome_drawer.dart';
import 'course_detail.dart';

class CoursesNames extends StatefulWidget {
  static const id = "CoursesNames";

  @override
  State<CoursesNames> createState() => _CoursesNamesState();
}

class _CoursesNamesState extends State<CoursesNames> {
  List images = [
    'images/flutter.png',
    'images/ai.png',
    'images/ui-ux.png',
    'images/cyber.png',
  ];
  List images2 = [
    'images/cyber.png',
    'images/ui-ux.png',
    'images/flutter.png',
    'images/ai.png',
  ];
  List<String> courseTitle = [
    'flutter',
    'Artificial Intelligence',
    'UI/UX',
    'Cybersecurity ',
  ];
  List<String> courseTitle2 = [
    'Cybersecurity ',
    'UI/UX',
    'flutter',
    'Artificial Intelligence',
  ];
  List<String> subtitle = [
    'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
    'Artificial intelligence (AI) is intelligence demonstrated by machines, as opposed to the natural intelligence displayed by animals including humans.',
    'The UI/UX Design Specialization brings a design-centric approach to user interface and user experience design, and offers practical.',
    'Cybersecurity is the practice of protecting critical systems and sensitive information from digital attacks.'
  ];
  List<String> subtitle2 = [
    'Cybersecurity is the practice of protecting critical systems and sensitive information from digital attacks.',
    'The UI/UX Design Specialization brings a design-centric approach to user interface and user experience design, and offers practical.',
    'Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.',
    'Artificial intelligence (AI) is intelligence demonstrated by machines, as opposed to the natural intelligence displayed by animals including humans.',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      // appBar: AppBar(
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(
      //           CommunityMaterialIcons.sort_reverse_variant,
      //           color: primaryColor,
      //           size: 40,
      //         ),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //       );
      //     },
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white12,
      //   actions: [
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.notifications,
      //           color: Colors.grey,
      //         )),
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           Icons.person,
      //           color: Colors.grey,
      //         ))
      //   ],
      // ),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     Expanded(
              //       child: TextDropdownFormField(
              //         decoration: InputDecoration(
              //           enabledBorder: const OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(100)),
              //             borderSide: BorderSide(color: border),
              //           ),
              //           filled: false,
              //           focusedBorder: const OutlineInputBorder(
              //             borderRadius: BorderRadius.all(Radius.circular(100)),
              //             borderSide: BorderSide(color: border),
              //           ),
              //           suffixIcon: const Icon(
              //             Icons.arrow_drop_down,
              //             color: border,
              //           ),
              //           labelText: ("search"),
              //           labelStyle: TextStyle(color: border),
              //         ),
              //       ),
              //     ),
              //     Container(
              //       height: 35,
              //       width: 45,
              //       decoration: BoxDecoration(
              //         color: bottom,
              //         borderRadius: BorderRadius.all(Radius.circular(18)),
              //       ),
              //       child: Icon(Icons.search, color: Colors.white),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              Text(
                'Recommended for you:-',
                style: TextStyle(color: border, fontSize: 25),
              ),
              SizedBox(
                height: 300,
                width: 550,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courseTitle.length,
                    itemBuilder: (BuildContext ctxt, index) {
                      return CardData(
                          images: images[index],
                          courseTitle: courseTitle[index],
                          subtitle: subtitle[index]);
                    }),
              ),
              Text(
                'Featured:-',
                style: TextStyle(color: border, fontSize: 25),
              ),
              SizedBox(
                height: 300,
                width: 550,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: courseTitle.length,
                    itemBuilder: (BuildContext ctxt, index) {
                      return CardData(
                          images: images2[index],
                          courseTitle: courseTitle2[index],
                          subtitle: subtitle2[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardData extends StatelessWidget {
  CardData(
      {@required this.images,
      @required this.courseTitle,
      @required this.subtitle});
  String images;
  String courseTitle;
  String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: SizedBox(
        //  height: 180,
        width: 300,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.pushNamed(context, courseDetail.id);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 300.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(images)),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)),
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 20, 0, 8),
                    child: Text('$courseTitle',
                        style: TextStyle(
                            color: Colors.teal,
                            fontSize: 15,
                            fontWeight: FontWeight.w600)),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text('$subtitle'),
                  ),
                  isThreeLine: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
