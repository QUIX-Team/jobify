import 'package:flutter/material.dart';

import 'main_home_view.dart';

class CompanyEvent extends StatelessWidget {
  const CompanyEvent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
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
                'Events',
                style: TextStyle(color: Colors.teal),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Container(
            color: Color(0xFFE8EEED),
            child: Column(
              children: [
                companyCardEvents(
                    images:
                    'https://s3.amazonaws.com/media.the-next-tech.com/wp-content/uploads/2020/06/19154144/Big-Data-and-AI.jpg',
                    courseTitle:
                    'AI & Big Data \nSanta Clara, The United States | 11 August 2022 - 12 May 2022 \nThis AI conference is one of the biggest AI & Big Data event series that will be held in Santa Clara on the 11th-12th May 2022. The main focus is put on the latest AI innovations, applications, and strategies to drive businesses forward. It will be led by specialists who want to share their knowledge with ambitious enterprise technology professionals in industries like manufacturing, transport, supply chain, insurance, financial services, energy, etc.',
                    subtitle: '11/8/2022'),
                SizedBox(
                  height: 10.0,
                ),
                companyCardEvents(
                    images:
                        'https://www.thebalancecareers.com/thmb/zCuzdTzkdnHoY-1KSRorWkmfHcQ=/1500x844/smart/filters:no_upscale()/backenddeveloper-2502825a14ff440eb775dc4244e7ed4d.png',
                    courseTitle:
                        'What is Backend Development: Skills, Salary, Roles & More | Simplilearn \n No one today can live without applications. From sharing pictures with your loved ones to ordering food, to making bank transactions, applications are used all the time. These applications generally provide an easy and seamless user experience, but have you ever wondered how? All the credit goes to the backend of the application that does all the essential tasks that you do not see. ',
                    subtitle: '1/8/2022'),
                SizedBox(
                  height: 10.0,
                ),
                companyCardEvents(
                    images:
                        'https://www.talentlms.com/blog/wp-content/uploads/2021/05/TLMS_20210517_1200x628.png',
                    courseTitle:
                        'SKILLS DEVELOPMENT EVENTS Invite business volunteers to talk to students about the soft skills like resilience and communication needed to succeed at work and in the wider community. \n What is a Skills Development event? Skills Development events help pupils explore the range of attributes needed to boost employability and prepare them for the world of work. Students can gain an in-depth understanding of why skills such as resilience, conflict resolution, and independence are important within the workplace and the wider community. You can make this session industry-specific and use it as an opportunity to outline entry routes into different fields, or make it skill-specific and focus on techniques to help your pupils develop these attributes. ',
                    subtitle: '11/7/2022'),
                SizedBox(
                  height: 10.0,
                ),
                companyCardEvents(
                    images:
                        'https://cdn.ttgtmedia.com/rms/onlineimages/security_a303570139.jpg',
                    courseTitle:
                        ' Cybersecurity Event  March: Launch of China’s 14th Five-Year-Plan (2021-2025) and Long-range Objectives through 2035 at the National People’s Congress China’s five-year plans contain important strategic elements for the orientation of its economy. The current five-year plan, for example, featured the “Made in China 2025” strategy aimed at acquiring know-how in strategically important industries so that China would become a – if not the – leading industrial power by 2049.',
                    subtitle: '10/7/2022'),

                SizedBox(
                  height: 10.0,
                ),
                companyCardEvents(
                    images:
                        'https://cdn-az.allevents.in/events5/banners/73d33154599c5b739ad4930ad628dc87334857c1be914ce4d4f3640ce192d577-rimg-w1200-h600-gmir.jpg?v=1648250915',
                    courseTitle:
                        'Sport events and festivals \n Faircom is an expert in indoor and outdoor graphics for events. We create media exposure for sponsors and implement functional signage objects for the visitors. Areas where we work are Camp Nou, Allianz Arena München, Olympic Stadium in Barcelona, Circuit de Cataluña / Barcelona and Palau Sant Jordi. ',
                    subtitle: '19/7/2022'),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
