import 'package:flutter/material.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key key}) : super(key: key);

  @override
  _ProgressViewState createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16.0),
                height: MediaQuery.of(context).size.height * 0.40,
                color: Color(0xFFE8EEED),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 20,
                          width: 5,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          'Courses In Progress',
                          style: TextStyle(color: Colors.teal),
                        ),
                        Spacer(),
                        Text('See all', style: TextStyle(color: Colors.teal)),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.teal,
                          size: 16.0,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/756150_c033_2.jpg',
                            courseTitle:
                                'Angular - The Complete Guide (2022 Edition)',
                            subtitle:
                                'Master Angular 13 and build awesome, reactive web apps with the successor of Angular.js'),
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/1430746_2f43_10.jpg',
                            courseTitle:
                                'The Complete Web Developer in 2022: Zero to Mastery',
                            subtitle:
                                'Learn to code and become a Web Developer in 2022 with HTML, CSS, Javascript, React, Node.js & more!'),
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/4699686_6c74_3.jpg',
                            courseTitle:
                                'Clean Architecture In Flutter (Arabic)',
                            subtitle:
                                'كورس يمكنك من التعامل مع المشاريع بطريقة احترافية'),
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/3607794_d799_4.jpg',
                            courseTitle:
                                'iOS iPhone App Development - Complete Course',
                            subtitle: 'Become an iPhone / iOS App Developer'),
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/1561458_7f3b_2.jpg',
                            courseTitle:
                                'CSS - The Complete Guide 2022 (incl. Flexbox, Grid & Sass)',
                            subtitle:
                                'Learn CSS for the first time or brush up your CSS skills and dive in even deeper.'),
                        CardDatas(
                            images:
                                'https://img-c.udemycdn.com/course/240x135/756150_c033_2.jpg',
                            courseTitle:
                                'The Complete Oracle SQL Certification Course',
                            subtitle:
                                'Don\'t Just Learn the SQL Language, Become Job-Ready and Launch Your Career'),
                      ]),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 5,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Courses In Progress',
                      style: TextStyle(color: Colors.teal),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Stepper(
                currentStep: index,
                onStepCancel: () {
                  if (index > 0) {
                    setState(() {
                      index -= 1;
                    });
                  }
                },
                onStepContinue: () {
                  if (index <= 2) {
                    setState(() {
                      index += 1;
                    });
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    index = index;
                  });
                },
                steps: <Step>[
                  Step(
                    isActive: true,
                    title: const Text('Angular - The Complete Guide'),
                    subtitle: Text(
                        'Master Angular 13 and build awesome, reactive web apps with the successor of Angular.js'),
                    content: Container(
                        alignment: Alignment.centerLeft,
                        child: const Text('Beginner level')),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Angular - The Complete Guide'),
                    content: Text('Intermediate level'),
                  ),
                  const Step(
                    isActive: true,
                    title: Text('Angular - The Complete Guide'),
                    content: Text('Advanced level'),
                  ),
                  const Step(
                    title: Text('Angular - The Complete Guide'),
                    content: Text('Finish the course'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardDatas extends StatelessWidget {
  CardDatas(
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
        height: 100,
        width: 250,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 90.0,
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
