import 'package:flutter/material.dart';
import 'adiyapage.dart';

void main() {
  runApp(EducationApp());
}

class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('B-tech Guru'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'B-tech Guru',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ),
            buildListTile(context, Icons.home, 'Home', HomePage()),
            buildListTile(context, Icons.school, 'Courses', CoursesPage()),
            buildListTile(context, Icons.notifications, 'Notification',
                NotificationPage()),
            buildListTile(context, Icons.settings, 'Settings', SettingsPage()),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Welcome to the B-tech Guru',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('JNTU Kakinada'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdityaPage(
                                universityName: 'adity',
                              )),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('Aditya university'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdityaPage(
                                universityName: 'adity',
                              )),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('Aditya university'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdityaPage(
                                universityName: 'adity',
                              )),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text('Aditya university'),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdityaPage(
                                universityName: 'adity',
                              )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(
      BuildContext context, IconData icon, String title, Widget destination) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }

  ListTile buildCourseListTile(BuildContext context, String course) {
    return ListTile(
      leading: const Icon(Icons.school),
      title: Text(course),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CourseDetailPage(course: course)),
        );
      },
    );
  }
}

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: const Center(
        child: Text(
          'List of Courses',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Text(
          'List of Notifications',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(
        child: Text(
          'Settings Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class CourseDetailPage extends StatelessWidget {
  final String course;

  CourseDetailPage({required this.course});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$course Details'),
      ),
      body: Center(
        child: Text(
          'Details of $course',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
