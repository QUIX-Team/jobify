import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:jobify/widget/card_company.dart';

import 'add_event.dart';
import 'add_jobs.dart';
import 'comp_evens.dart';
import 'comp_jobs.dart';
import 'company_home_view.dart';

class CompanyHome extends StatefulWidget {
  static const id = 'CompanyHome';
  @override
  _CompanyHomeState createState() => _CompanyHomeState();
}

class _CompanyHomeState extends State<CompanyHome> {
  int indexo = 0;

  List pages = [HomeCampanyView(), CompanyJobs(), CompanyEvent()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Color(0xFFF1F1F1),
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CommunityMaterialIcons.account_circle,
                color: Colors.teal,
              ))
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.teal,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16.0),
              height: MediaQuery.of(context).size.height * 0.25,
              color: Color(0xFFE8EEED),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          indexo = 0;
                        });
                      },
                      child: companyCard(
                        title: 'Home',
                        iconData: Icons.home,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          indexo = 1;
                        });
                      },
                      child: companyCard(
                        title: 'Jobs',
                        iconData: CommunityMaterialIcons.briefcase,
                      )),
                  InkWell(
                      onTap: () {
                        setState(() {
                          indexo = 2;
                        });
                      },
                      child: companyCard(
                        title: 'Events',
                        iconData: CommunityMaterialIcons.calendar_clock,
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddEventScreen()));
                      },
                      child: companyCard(
                        title: 'Add Event',
                        iconData: CommunityMaterialIcons.calendar_plus,
                      )),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddJobScreen()));
                      },
                      child: companyCard(
                        title: 'Add Job',
                        iconData: CommunityMaterialIcons.account_tie,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            pages[indexo]
            // PageView.builder(
            //   itemCount: 1,
            //   itemBuilder: (BuildContext context, int index) {
            //     return pages[index];
            //   },
            //
            // ),
          ],
        ),
      ),
    );
  }
}

class companyCardJobs extends StatelessWidget {
  companyCardJobs(
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
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(images),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
              ),
              ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 5, 0, 4),
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
    );
  }
}

class companyCardEvents extends StatelessWidget {
  companyCardEvents(
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
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(images),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('$courseTitle'),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Date',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('$subtitle'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
