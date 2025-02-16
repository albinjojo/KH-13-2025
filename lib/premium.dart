import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  const PremiumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Premium Plans'),
        backgroundColor: const Color(0xFFA435F0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFFA435F0),
                    const Color(0xFFA435F0).withOpacity(0.8),
                  ],
                ),
              ),
              child: const Column(
                children: [
                  Text(
                    'Unlock Premium Features',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Choose the plan that works best for you',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),

            // Individual Plan
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildPlanCard(
                title: 'Individual Plan',
                price: '₹499',
                duration: 'per month',
                features: [
                  'Advanced AI Chatbot Support',
                  'Offline Downloads',
                  'Course Completion Certificate',
                  'Ad-free Experience',
                  'Priority Support',
                  'Access to All Courses',
                ],
                isPopular: false,
                onTap: () {
                  // Handle individual plan selection
                },
              ),
            ),

            // Community Plan
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildPlanCard(
                title: 'Community Plan',
                price: '₹1500',
                duration: 'per month',
                features: [
                  'Everything in Individual Plan',
                  'Group of up to 5 students',
                  'Dedicated Teacher Support',
                  'Live Group Sessions',
                  'Community Discussion Forums',
                  'Group Project Collaboration',
                  'Personalized Learning Path',
                  'Progress Analytics',
                ],
                isPopular: true,
                onTap: () {
                  // Handle community plan selection
                },
              ),
            ),

            // Additional Benefits
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Premium Benefits',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildBenefitItem(
                    Icons.school,
                    'Expert Teachers',
                    'Get support from experienced educators',
                  ),
                  _buildBenefitItem(
                    Icons.workspace_premium,
                    'Certification',
                    'Receive recognized certificates upon completion',
                  ),
                  _buildBenefitItem(
                    Icons.smart_toy,
                    'Advanced AI',
                    'Access to premium AI features for better learning',
                  ),
                  _buildBenefitItem(
                    Icons.group,
                    'Community',
                    'Learn and grow together with peers',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCard({
    required String title,
    required String price,
    required String duration,
    required List<String> features,
    required bool isPopular,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: isPopular ? const Color(0xFFA435F0) : Colors.grey.shade300,
          width: isPopular ? 2 : 1,
        ),
      ),
      child: Column(
        children: [
          if (isPopular)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: const BoxDecoration(
                color: Color(0xFFA435F0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: const Text(
                'Most Popular',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA435F0),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      duration,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ...features.map(
                  (feature) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.check_circle,
                          color: Color(0xFFA435F0),
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Expanded(child: Text(feature)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA435F0),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFA435F0).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFFA435F0), size: 24),
          ),
          const SizedBox(width: 16),
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
                Text(
                  description,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
