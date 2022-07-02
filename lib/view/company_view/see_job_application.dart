import 'package:flutter/material.dart';

class JobApplicantScreen extends StatefulWidget {
  const JobApplicantScreen({Key key}) : super(key: key);

  @override
  State<JobApplicantScreen> createState() => _JobApplicantScreenState();
}

class _JobApplicantScreenState extends State<JobApplicantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.teal[900],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            color: Colors.teal[900],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
            color: Colors.teal[900],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Job applicants",
                style: TextStyle(
                  color: Colors.teal,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              BuildJobApplicantCard(
                userName: "Hossam Gmeel",
                applicantImage:
                    "https://images.unsplash.com/photo-1536548665027-b96d34a005ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8eW91bmclMjBwZXJzb258ZW58MHx8MHx8&w=1000&q=80",
                skillDesc:
                    "skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc",
                qualificationDesc:
                    "qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc",
              ),
              SizedBox(
                height: 10.0,
              ),
              BuildJobApplicantCard(
                userName: "Fares Ramey",
                applicantImage:
                    'https://img.freepik.com/free-photo/young-handsome-man-with-beard-isolated-keeping-arms-crossed-frontal-position_1368-132662.jpg?w=360',
                skillDesc:
                    "skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc",
                qualificationDesc:
                    "qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc",
              ),
              SizedBox(
                height: 10.0,
              ),
              BuildJobApplicantCard(
                userName: "Mickel Along",
                applicantImage:
                    'http://www.westmiworks.org/wp-content/uploads/2018/09/young-adult-male-w-beard-edit-e1537449888249.jpg',
                skillDesc:
                    "skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc",
                qualificationDesc:
                    "qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc",
              ),
              SizedBox(
                height: 10.0,
              ),
              BuildJobApplicantCard(
                userName: "Naser Josef",
                applicantImage:
                    'https://media.istockphoto.com/photos/portrait-of-beautiful-man-picture-id1294458757?k=20&m=1294458757&s=612x612&w=0&h=wfYPQU5Aa21C6nKhsFe6QzUvpEbuP04OW953DAWbvz0=',
                skillDesc:
                    "skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc skillDesc",
                qualificationDesc:
                    "qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc qualificationDesc",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildJobApplicantCard extends StatelessWidget {
  final String applicantImage;
  final String skillDesc;
  final String qualificationDesc;
  final String userName;

  BuildJobApplicantCard(
      {this.applicantImage,
      this.skillDesc,
      this.qualificationDesc,
      this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          color: Colors.teal[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(applicantImage),
                      backgroundColor: Colors.transparent,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Text("Skils:"),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                skillDesc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text("Qualifications:"),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                qualificationDesc,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
            ],
          ),
        )
      ],
    );
  }
}
