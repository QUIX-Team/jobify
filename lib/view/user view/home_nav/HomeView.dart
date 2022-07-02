import 'package:community_material_icon/community_material_icon.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:jobify/constant/colors.dart';
import 'package:jobify/widget/custome_drawer.dart';

import '../profile_view.dart';
import 'courses/CoursesNames.dart';
import 'jobs/jobNames.dart';
import 'progress_view.dart';

class HomeViewNav extends StatefulWidget {
  static String id = 'HomeViewNav';
  int currentIndexItem;
  HomeViewNav({@required this.currentIndexItem});

  @override
  _HomeViewNavState createState() => _HomeViewNavState();
}

class _HomeViewNavState extends State<HomeViewNav> {
  // int currentIndexItem = 3;
  List screens = [CoursesNames(), NavJobs(), CoursesNames(), ProgressView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                CommunityMaterialIcons.sort_reverse_variant,
                color: primaryColor,
                size: 40,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 54,
                    child: TextDropdownFormField(
                      decoration: InputDecoration(
                        label: Text('Search'),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(color: border),
                        ),
                        filled: false,
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(color: border),
                        ),
                        suffixIcon: const Icon(
                          Icons.arrow_drop_down,
                          color: border,
                        ),
                        //labelText: ("search"),
                        labelStyle: TextStyle(color: border),
                      ),
                      options: [
                        'software engineering',
                        'computer programmer',
                        'Business',
                        'Information technology',
                        'Project manager',
                        'Help desk assistant'
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 52,
                    width: 10,
                    decoration: BoxDecoration(
                      color: bottom,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.white12,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.teal,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                color: Colors.teal,
              ))
        ],
      ),
      body: screens[widget.currentIndexItem],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.teal[300],
        backgroundColor: Color(0xFFEEFDFD),
        selectedItemColor: Colors.teal[800],
        unselectedFontSize: 9,
        iconSize: 36,
        selectedFontSize: 11,
        currentIndex: widget.currentIndexItem,
        onTap: (item) {
          setState(() {
            widget.currentIndexItem = item;
          });
        },
        items: [
          navItem(text: 'TimeLine', iconData: CommunityMaterialIcons.home),
          navItem(text: 'jobs', iconData: CommunityMaterialIcons.briefcase),
          navItem(
              text: 'Courses', iconData: CommunityMaterialIcons.school_outline),
          navItem(
              text: 'Progress',
              iconData: CommunityMaterialIcons.progress_upload)
        ],
      ),
    );
  }

  BottomNavigationBarItem navItem({String text, IconData iconData}) {
    return BottomNavigationBarItem(
      icon: Icon(iconData),
      label: text,
      backgroundColor: Color(0xFF9DCCC1),
    );
  }
}
