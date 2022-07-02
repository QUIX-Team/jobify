import 'package:flutter/material.dart';

import 'job_aplication.dart';
import 'main_home_view.dart';

class CompanyJobs extends StatelessWidget {
  const CompanyJobs({Key key}) : super(key: key);

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
                'Jobs',
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
                      'web designer. \n------------------\nJob Description:',
                  images: 'https://www.stjegypt.com/uploads/482991451350.jpg',
                  subtitle:
                      'Conceptualizing creative ideas with clients. \nTesting and improving the design of the website. \nEstablishing design guidelines, standards, and best practices. \nMaintaining the appearance of websites by enforcing content standards. \nDesigning visual imagery for websites and ensuring that they are in line with branding for clients. \nWorking with different content management systems.',
                ),
                SizedBox(
                  height: 10.0,
                ),
                companyCardJobs(
                  courseTitle:
                      'Dot Net Developer. \n------------------\nJob Description:',
                  images:
                      'https://www.interviewbit.com/blog/wp-content/uploads/2021/08/dot-net-developer-800x390.jpg',
                  subtitle:
                      'Write clean, scalable code using .NET programming languages \nRemain up to date with the terminology, concepts and best practices for coding mobile apps\nDevelop technical interfaces, specifications, and architecture\nUse and adapt existing web applications for apps\nCreate and test software prototypes\nDevelop client displays and user interfaces \nAssist software personnel in handling project related work and other requirements \nCoordinate with other software professionals and developers',
                ),
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
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => JobsCompany()));
                  },
                  child: companyCardJobs(
                      courseTitle:
                          'Senior Flutter Mobile Developer. \n------------------\nJob Description:',
                      images:
                          'https://jackfruit.com.vn/content/images/2022/01/6078b650748b8558d46ffb7f_Flutter-app-development.png',
                      subtitle:
                          'Developing new features and user interfaces from wire-frame models. \n• Ensuring the best performance and user experience of the application. \n• Fixing bugs and performance problems. \n• Writing clean, readable, and testable code. \n• Cooperating with back-end developers, designers, and the rest of the team to deliver well-architected and high-quality solutions. \n• Write well-designed, scalable, robust, testable, efficient, and easily maintainable code.'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                companyCardJobs(
                  courseTitle:
                      'Advanced Cyber Sec Arch/Eng. \n------------------\nJob Description:',
                  images: 'https://static.kent.ac.uk/nexus/ems/1413.jpg',
                  subtitle:
                      'ob Description About UsWe are one of the fastest-growing social media platform founded on the principles of free speech, independent thought and rejecting political censorship and “cancel culture.” With best-in-class technology, our goal is to create a marketplace of ideas to share freedom and democracy around the world. We foster a healthy marketplace of ideas, where smart, motivated, curious people bring a diversity of opinions and the courage of their convictions for idea collaboration.Challenges you will solve:Participate in all stages of infrastructure provisioning, from POC to production support.Assist in the implementation of security best practices and initiatives at all levels of the systems infrastructure.Adhere to DevOps & SRE (Site Reliability Engineer) principles/pillars.Align with SDLC',
                ),
                SizedBox(
                  height: 10.0,
                ),
                companyCardJobs(
                    courseTitle:
                        'Full stack (Java) Engineer. \n------------------\nJob Description:',
                    images:
                        'http://www.pureecosoft.com/public/img/training/download.jpg',
                    subtitle:
                        'Join the industry leader to design the next generation of breakthroughs The future is what we make it. When you join Honeywell, you become a member of our global team of thinkers, innovators, dreamers and doers who make the things that make the future.  That means changing the way we fly, fueling jets in an eco-friendly way, keeping buildings smart and safe and even making it possible to breathe on Mars.                    Working at Honeywell isn’t just about developing cool things. That’s why all our employees enjoy access to dynamic career opportunities across different fields and industries.'),
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
