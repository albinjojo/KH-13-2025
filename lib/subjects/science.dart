import 'package:flutter/material.dart';

class SciencePage extends StatelessWidget {
  const SciencePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Science'),
        backgroundColor: const Color(0xFFA435F0),
        actions: [
          IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Video Lessons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Video Lessons',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildVideoLessonCard(
                    'Introduction to Forces',
                    '12:30',
                    'Dr. Sarah Johnson',
                    'Learn about different types of forces in physics',
                  ),
                  _buildVideoLessonCard(
                    'Chemical Reactions',
                    '15:45',
                    'Prof. Michael Chen',
                    'Understanding basic chemical reactions',
                  ),
                  _buildVideoLessonCard(
                    'Cell Structure',
                    '18:20',
                    'Dr. Emily Brown',
                    'Exploring the basic structure of cells',
                  ),
                ],
              ),
            ),

            // Study Materials
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Study Materials',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildStudyMaterialCard(
                    'Chapter Notes',
                    'PDF',
                    Icons.picture_as_pdf,
                  ),
                  _buildStudyMaterialCard(
                    'Practice Questions',
                    'DOCX',
                    Icons.document_scanner,
                  ),
                  _buildStudyMaterialCard(
                    'Lab Experiments',
                    'PDF',
                    Icons.science,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color(0xFFA435F0),
        label: const Text('Start Quiz'),
        icon: const Icon(Icons.quiz),
      ),
    );
  }

  Widget _buildCurrentChapterCard() {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chapter 4: Forces and Motion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.play_circle_filled, color: Color(0xFFA435F0)),
              ],
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: 0.6,
              backgroundColor: Colors.grey.shade200,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFA435F0),
              ),
            ),
            const SizedBox(height: 8),
            Text('60% Complete', style: TextStyle(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoLessonCard(
    String title,
    String duration,
    String instructor,
    String description,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Icon(Icons.play_circle_filled, size: 40),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        instructor,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Text(
                        duration,
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(description, style: TextStyle(color: Colors.grey.shade600)),
          ],
        ),
      ),
    );
  }

  Widget _buildStudyMaterialCard(String title, String type, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFA435F0)),
        title: Text(title),
        subtitle: Text(type),
        trailing: const Icon(Icons.download),
        onTap: () {},
      ),
    );
  }
}
