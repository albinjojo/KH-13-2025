import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'chatbot.dart';
import 'subjects/science.dart';
import 'subjects/maths.dart';
import 'premium.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.account_circle),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Welcome Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Text('Welcome, ', style: TextStyle(fontSize: 20)),
                    Text(
                      'Kevin',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFA435F0),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 232, 209, 246),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: const [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text('250 points'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Promotional Banner
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 209, 246),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Enroll in Career Programs',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      spacing: 8,
                      children: [
                        Chip(label: Text('English')),
                        Chip(label: Text('Mathematics')),
                        Chip(label: Text('Science')),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.work),
                          label: const Text('Career Programs'),
                        ),
                        OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.live_tv),
                          label: const Text('Class'),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFA435F0),
                        ),
                        child: const Text(
                          'Know More',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Courses Section
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'My Courses',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Dashboard(),
                          ),
                        );
                      },
                      child: const Text('View all'),
                    ),
                  ],
                ),
              ),

              // Course Cards
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    _buildCourseCard(context, 'Mathematics'),
                    const SizedBox(width: 16),
                    _buildCourseCard(context, 'Science'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFFA435F0),
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatbotScreen(),
              ), //navigate to chatbotpage
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Dashboard(),
              ), //navigate to dashboardpage
            );
          }
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PremiumPage()),
            );
          }
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Premium'),
        ],
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, String title) {
    String imageUrl = '';
    String courseTitle = '';
    String subjectText = '';
    IconData subjectIcon = Icons.school;

    // Set course-specific content
    if (title == 'Mathematics') {
      imageUrl = 'assets/icons/maths.png';
      courseTitle = 'Mathematics';
      subjectText = 'Mathematics';
      subjectIcon = Icons.calculate;
    } else {
      imageUrl = 'assets/icons/science.png';
      courseTitle = 'Science';
      subjectText = 'Science';
      subjectIcon = Icons.science;
    }

    return Container(
      width: 280,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                print('Error loading image: $error');
                return Container(
                  height: 120,
                  color: Colors.grey[200],
                  child: const Center(
                    child: Icon(Icons.image, size: 40, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: GestureDetector(
              onTap: () {
                if (title == 'Mathematics') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MathsPage()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SciencePage(),
                    ),
                  );
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                      color: Color(0xFFA435F0),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(subjectIcon, size: 18, color: Colors.grey[700]),
                      const SizedBox(width: 4),
                      Text(
                        subjectText,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
