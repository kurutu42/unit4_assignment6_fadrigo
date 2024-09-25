import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignment'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, // Changed AppBar color
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueAccent], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Profile section
            Row(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 3.0,
                    ), // Added border
                    image: const DecorationImage(
                      image: AssetImage('assets/profile.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Text(
                  'Kurt David S. Fadrigo',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Changed text color
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Info Rows
            _buildInfoRow(Icons.email, 'Email', 'kurtdavid.fadrigo@wvsu.edu.ph'),
            _buildInfoRow(Icons.phone, 'Phone', '09166748241'),
            _buildInfoRow(Icons.home, 'Address', 'Sto. Niño Sur, Arevalo, Iloilo City'),
            _buildInfoRow(Icons.work, 'Occupation', 'Student'),
            _buildInfoRow(Icons.book, 'Course And Section', 'BSIT-3B'),

            const SizedBox(height: 24),

            // Biography section with gray background
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Gray background color
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'My Biography',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Highly motivated and detail-oriented individual with a strong passion for technology and innovation, I am Kurt David Fadrigo, a third-year student of Bachelor of Science in Information Technology (BSIT) at West Visayas State University. Residing in Sto. Niño Sur, Arevalo, Iloilo City, I am a driven and ambitious individual who is eager to apply my skills and knowledge in a dynamic and challenging environment. Apart from my academic pursuits, I am an avid gamer and a skilled guitarist, which has honed my critical thinking, problem-solving, and creative skills. I am excited to leverage my technical expertise and personal strengths to make a meaningful contribution to a reputable organization.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build information row
  Widget _buildInfoRow(IconData icon, String label, String data) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8), // Added container background color
        borderRadius: BorderRadius.circular(10.0), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow effect
            blurRadius: 4,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.deepPurple), // Icon color
          const SizedBox(width: 16),
          Text(
            '$label:',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(data),
        ],
      ),
    );
  }
}
