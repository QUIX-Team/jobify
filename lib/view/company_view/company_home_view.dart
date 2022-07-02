import 'package:flutter/material.dart';

import 'main_home_view.dart';

class HomeCampanyView extends StatefulWidget {
  static const id = 'HomeCampanyView';
  @override
  _HomeCampanyViewState createState() => _HomeCampanyViewState();
}

class _HomeCampanyViewState extends State<HomeCampanyView> {
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
                'Home',
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
                companyCardJobs(
                  courseTitle:
                      'Graphic Designer. \n------------------\nJob Description:',
                  images:
                      'https://www.thebalancecareers.com/thmb/b_szj1qUn6r1BZL8i7iWlWKYcLM=/2000x2000/smart/filters:no_upscale()/graphic-designer-job-description-and-salary-information-2061790-edit-4335087e524b4504b76ae1fea22873cf.jpg',
                  subtitle:
                      'Smart Life Group · Cairo, Egypt \n 3 year experience - good image - female only',
                ),
                SizedBox(
                  height: 10.0,
                ),
                companyCardJobs(
                  courseTitle:
                      'Software Developer. \n------------------\nJob Description:',
                  images:
                      'https://res.cloudinary.com/practicaldev/image/fetch/s--V0ekZaVJ--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://thepracticaldev.s3.amazonaws.com/i/h68x0up43hmknl5tjcww.jpg',
                  subtitle:
                      'Responsibilities: Develops and modifies modules based on functional and system requirements Supports software design process based on functional requirements Executes full lifecycle software development Writes well designed, testable, efficient code Troubleshoots and identifies bugs in existing software, design and release fixes Creates development environment for efficient testing and integration Documents and maintains software functionality',
                ),
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
                companyCardJobs(
                  courseTitle:
                      'Senior DevOps Engineer. \n------------------\nJob Description:',
                  images:
                      'https://algoteque.com/wp-content/uploads/2019/04/1AwvDJDfErlD34ox2QpwGoA.png',
                  subtitle:
                      'ob Description About UsWe are one of the fastest-growing social media platform founded on the principles of free speech, independent thought and rejecting political censorship and “cancel culture.” With best-in-class technology, our goal is to create a marketplace of ideas to share freedom and democracy around the world. We foster a healthy marketplace of ideas, where smart, motivated, curious people bring a diversity of opinions and the courage of their convictions for idea collaboration.Challenges you will solve:Participate in all stages of infrastructure provisioning, from POC to production support.Assist in the implementation of security best practices and initiatives at all levels of the systems infrastructure.Adhere to DevOps & SRE (Site Reliability Engineer) principles/pillars.Align with SDLC',
                ),
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
                companyCardJobs(
                  courseTitle:
                      'Full Stack Web Developer. \n------------------\nJob Description:',
                  images:
                      'https://egycopt.org/wp-content/uploads/2020/12/Full_stack_developer-1-1.jpg',
                  subtitle:
                      'Plan and execute the development of the organizational project as per client requirements. Troubleshooting and fixing common bugs and errors during the testing and production activities of the company product. Contribute to the periodic management of various digital applications to enhance the company output. Contributing to the organization is growth curve by delivering projects per the schedule and with high efficiency. Find common errors in existing software to prevent possible issues that can disrupt the smooth flow of operations. Safeguard the privacy, integrity, and access of the company\'s data through foolproof protection modules.',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
