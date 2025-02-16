import 'package:flutter/material.dart';
import 'subjects/science.dart';
import 'subjects/maths.dart';
import 'subjects/history.dart';
import 'subjects/english.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xFFA435F0); // Purple color from homepage
    final secondaryColor = Color(0xFFE8D1F6); // Light purple from homepage

    return Scaffold(
      body: Column(
        children: [
          // Header Section
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [primaryColor, primaryColor.withOpacity(0.8)],
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const Text(
                      'My Courses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                // Search Bar
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'What are you looking for?',
                      border: InputBorder.none,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Courses Section
          Expanded(
            child: Container(
              color: Colors.grey[50], // Light background for the list
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  _buildCourseCard(
                    'Mathematics',
                    'English',
                    0,
                    'Start Learning',
                    primaryColor,
                    secondaryColor,
                    context,
                  ),
                  _buildCourseCard(
                    'History',
                    'English',
                    0,
                    'Start Learning',
                    primaryColor,
                    secondaryColor,
                    context,
                  ),
                  _buildCourseCard(
                    'English',
                    'English',
                    47,
                    'Resume Learning',
                    primaryColor,
                    secondaryColor,
                    context,
                  ),
                  _buildCourseCard(
                    'Science',
                    'English',
                    0,
                    'Start Learning',
                    primaryColor,
                    secondaryColor,
                    context,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(
    String title,
    String language,
    int progress,
    String buttonText,
    Color primaryColor,
    Color secondaryColor,
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey[200]!),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.volume_up, size: 16, color: primaryColor),
              const SizedBox(width: 4),
              Text(language),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Progress: $progress%'),
              const SizedBox(height: 4),
              LinearProgressIndicator(
                value: progress / 100,
                backgroundColor: secondaryColor.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                switch (title) {
                  case 'Mathematics':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MathsPage(),
                      ),
                    );
                    break;
                  case 'Science':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SciencePage(),
                      ),
                    );
                    break;
                  case 'History':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryPage(),
                      ),
                    );
                    break;
                  case 'English':
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EnglishPage(),
                      ),
                    );
                    break;
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 2,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
