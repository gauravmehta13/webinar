import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webinar/Constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool loading = false;

  List skillsGrid = [
    {
      "title": "Gain expertise in the latest skills",
      "subtitle":
          "with courses and Specializations in computer science, humanities, and more",
      "icon": "https://image.flaticon.com/icons/png/128/4185/4185510.png"
    },
    {
      "title": "Learn job-ready career skills",
      "subtitle":
          "in artificial intelligence, machine learning, data science, cloud engineering, and more",
      "icon": "https://image.flaticon.com/icons/png/128/3281/3281289.png"
    },
    {
      "title": "Earn a Certificate",
      "subtitle":
          "from the world's leading universities in business, computer science, and more",
      "icon": "https://image.flaticon.com/icons/png/128/2303/2303934.png"
    },
    {
      "title": "Upskill your organization",
      "subtitle": "with on-demand training and development programs",
      "icon": "https://image.flaticon.com/icons/png/128/3214/3214721.png"
    },
  ];

  List reviews = [
    {
      "img":
          "https://lh3.googleusercontent.com/a-/AOh14Ghe4tFlInoDofkTw5ftNmFEyHDFRFiFQYJSoqfHPA=s128-c0x00000000-cc-rp-mo-ba2",
      "name": "E Naveen",
      "course": "Architecture Design",
      "city": "Telangana",
      "review":
          "My intention was take a LSA certification in coming days and some extent the training helped me to understand about Architectural thinking"
    },
    {
      "img":
          "https://lh3.googleusercontent.com/a-/AOh14GiBrkTeSGOvjl8tlchr3ZJZpaJjc7WMjC71CzbcQw=s128-c0x00000000-cc-rp-mo",
      "name": "Pranav Mathur",
      "course": "Architecture Design",
      "city": "Hyderabad",
      "review":
          "Trainer has good knowledge, what I observed is in some areas he is going to elaborate the content more."
    },
    {
      "img":
          "https://lh3.googleusercontent.com/a-/AOh14GixRWNL5VZozwOvpLc2XjwOt8Q3T47WKixwMf1cqA=s128-c0x00000000-cc-rp-mo",
      "name": "Arka Dey",
      "course": "Architecture Design",
      "city": "Telangana",
      "review":
          "I would like to take LSA certification and the topics discussed were some extent it is helpful."
    },
    {
      "img":
          "https://lh3.googleusercontent.com/a/AATXAJzjfvUBiH1VeHYVGEfZnu5QLBdhu0z4AvRiv77z=s128-c0x00000000-cc-rp-mo",
      "name": "Mahesh Vaidya",
      "course": "Architecture Design",
      "city": "Telangana",
      "review":
          "Trainer helped us to think beyond a developer. Groomed our mindsets to be a LSA."
    },
    {
      "img":
          "https://lh3.googleusercontent.com/a-/AOh14GgosVghG-pRz6KMDqlpJJ8wqEkQXudbu5Ec0vcNtw=s128-c0x00000000-cc-rp-mo-ba2",
      "name": "Nitin Sharma",
      "course": "Architecture Design",
      "city": "Telangana",
      "review":
          "I have got fair understanding of the role of LSA and its a good start for me to complete LSA certification"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Webinar",
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2 - 40,
                  width: double.maxFinite,
                  child: Image.network(
                    "https://images.pexels.com/photos/3483968/pexels-photo-3483968.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2 - 40,
                  padding: EdgeInsets.all(20),
                  color: Colors.white.withOpacity(0.6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      box10,
                      Text("Unleash\nExcellence",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 50, fontWeight: FontWeight.w600)),
                      Text(
                          "Take the next step in your career with a world class learning experience.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 17, fontWeight: FontWeight.w500)),
                      loginButton(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 2 - 50,
              color: Colors.grey[300],
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "We collaborate with ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        TextSpan(
                          text: '200+ leading universities and companies',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Wrap(
                    // direction: Axis.vertical,
                    alignment: WrapAlignment.center,
                    spacing: 8.0,
                    runAlignment: WrapAlignment.center,
                    runSpacing: 20,
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    // textDirection: TextDirection.rtl,
                    // verticalDirection: VerticalDirection.up,
                    children: List.generate(
                      10,
                      (i) => Image.asset(
                        "assets/companies/$i.png",
                        height: 60,
                      ),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            box20,
            Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text("Find your path to success",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    box20,
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: skillsGrid.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return new Card(
                          child: Container(
                            padding: EdgeInsets.all(5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  skillsGrid[index]["icon"],
                                  height: 40,
                                ),
                                Text(skillsGrid[index]["title"],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600)),
                                Text(skillsGrid[index]["subtitle"],
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        color: Colors.grey[800],
                                        fontWeight: FontWeight.w400)),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                )),
            box20,
            Container(
              child: Column(
                children: [
                  Image.asset("assets/courses.png"),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.all(20),
                    color: primaryColor.withOpacity(0.15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        box30,
                        Text("World-class\nlearning for you",
                            style: GoogleFonts.montserrat(
                                fontSize: 30, fontWeight: FontWeight.w600)),
                        box30,
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Pursue ",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text:
                                    'a promotion, a raise, or switch careers. 89% of learners',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text: " who have taken a course ",
                                style: TextStyle(fontSize: 16),
                              ),
                              TextSpan(
                                text: 'report career benefits.',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        box30,
                        box20,
                        loginButton(),
                        box20,
                      ],
                    ),
                  )
                ],
              ),
            ),
            box20,
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("From the Webinar community",
                      style: GoogleFonts.montserrat(
                          fontSize: 25, fontWeight: FontWeight.w600)),
                  box10,
                  Text("1000+ people are already learning on Webinar",
                      style: GoogleFonts.montserrat(
                          color: Colors.grey[800],
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      height: 400,
                      autoPlay: true,
                    ),
                    items: List<Widget>.generate(
                        reviews.length, (i) => buildReview(reviews[i])),
                  ),
                ],
              ),
            ),
            box20,
            Container(
              width: double.maxFinite,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text("Get job-ready for an in-demand career",
                        style: GoogleFonts.montserrat(
                            fontSize: 25, fontWeight: FontWeight.w500)),
                  ),
                  box20,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                        "Break into a new field like Design Thinking or Architect Mindset. No prior experience necessary to get started.",
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.grey[800],
                            fontWeight: FontWeight.w500)),
                  ),
                  box30,
                ],
              ),
            ),
            box20,
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Image.network(
                            "https://images.pexels.com/photos/3184405/pexels-photo-3184405.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                      ),
                      box20,
                      Text(
                          "Take the next step toward your personal and professional goals with Webinar.",
                          style: GoogleFonts.montserrat(
                              fontSize: 25, fontWeight: FontWeight.w600)),
                      box20,
                      Text(
                          "Join now to receive personalized recommendations from the full Webinar catalog.",
                          style: GoogleFonts.montserrat(
                              fontSize: 15,
                              color: Colors.grey[800],
                              fontWeight: FontWeight.w600)),
                      // box10,
                      // Text(
                      //     "Career progression, quite simply put, is the process of climbing the ladder during your working life. Moving forward, being promoted, finding new challenges, new employers, new opportunities and getting the most out of your career. There are a huge number of aspects and elements that can contribute to successful and efficient career progression and, like most things in life, there are some aspects that we have no control over and that are hard to predict. That said, there are a number of really vital things that we can affect and impact, which can lead to better career progression, promotions in our work and successful career ladder climbing. In this guide, we will explore exactly what these contributing factors are, how we can effectively progress our careers and investigate how we can steer our working life in the right direction. One popular dictionary definition of career progression is ‘the process of making progress to better jobs’ and while some people would consider this to be the case, we define career progression not simply as finding better jobs but as staying in current jobs and roles too, while receiving greater responsibility, satisfaction and success (whatever each individual defines ‘success’ to be). Career progression is not simply about finding a new and ‘better’ job, but it’s also about receiving a pay rise, being given additional responsibilities, moving sideways in a company and can even be the process of leaving a company and starting your own venture or company.",
                      //     style: GoogleFonts.montserrat(
                      //         fontSize: 15,
                      //         color: Colors.grey[800],
                      //         fontWeight: FontWeight.w600)),
                      box30,
                      loginButton(),
                      box20,
                    ])),
          ],
        ),
      ),
    );
  }

  Widget buildReview(review) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
              radius: 60, backgroundImage: NetworkImage(review["img"])),
          box10,
          Text(review["name"],
              style: GoogleFonts.montserrat(
                  fontSize: 17, fontWeight: FontWeight.w500)),
          box5,
          Text("${review["course"]} Student",
              style: GoogleFonts.montserrat(
                  fontSize: 13, fontWeight: FontWeight.w500)),
          box5,
          Text(review["city"],
              style: GoogleFonts.montserrat(
                fontSize: 13,
              )),
          Container(
              margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: MediaQuery.of(context).size.width / 3),
              height: 2,
              color: Colors.black),
          Text(review["review"],
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  fontSize: 15, fontWeight: FontWeight.w400))
        ],
      ),
    );
  }

  Widget loginButton() {
    return InkWell(
      onTap: () {
        try {
          launch(
              "https://www.google.com/search?q=coming+soon&rlz=1C1GTPM_enIN970IN970&oq=coming+soon&aqs=chrome.0.0i271j46i433i512j35i39i362l3j0i512l2j0i433i512l3...3.1613j0j15&sourceid=chrome&ie=UTF-8&shem=ssmd");
        } catch (e) {}
      },
      child: Center(
        child: Container(
            decoration: BoxDecoration(
                color: primaryColor,
                borderRadius:
                    BorderRadius.all(Radius.circular(loading ? 60 : 5))),
            child: loading
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.white)),
                  )
                : Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Text("Join for Free",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                    ),
                  )),
      ),
    );
  }
}
