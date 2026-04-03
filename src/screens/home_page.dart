import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF0066CC),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Icon(Icons.security, color: Colors.white, size: 24),
            ),
          ),
        ),
        title: Text(
          'HealthyConnect',
          style: TextStyle(
            color: Color(0xFF0066CC),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.notifications, color: Colors.grey, size: 28),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            // Featured Card - Live Sync
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 280,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFB8D4E8),
                      Color(0xFF7BA8C8),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  children: [
                    // Background circles
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                    ),
                    // Stethoscope Icon
                    Center(
                      child: Icon(
                        Icons.medical_services,
                        size: 120,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    // Content at bottom
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color(0xFF0066CC),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Icon(Icons.show_chart, color: Colors.white),
                              ),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LIVE SYNC',
                                  style: TextStyle(
                                    color: Color(0xFF0066CC),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Theo dõi chỉ số thời gian thực',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 13,
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
              ),
            ),
            SizedBox(height: 40),
            // Title
            Text(
              'Chăm sóc sức khỏe\nthông minh',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16),
            // Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Người bạn đồng hành y tế cá nhân của bạn, hỗ trợ bởi AI và các chuyên gia hàng đầu.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: 40),
            // Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0066CC),
                  minimumSize: Size(double.infinity, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
                child: Text(
                  'Bắt đầu ngay',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Already have account
            GestureDetector(
              onTap: () {},
              child: Text(
                'Tôi đã có tài khoản',
                style: TextStyle(
                  color: Color(0xFF0066CC),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 30),
            // Bottom features
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildFeatureIcon(Icons.security, 'BẢO MẬT CAO'),
                  SizedBox(width: 30),
                  _buildFeatureIcon(Icons.health_and_safety, 'CHỨNG NHẬN Y TẾ'),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat AI',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.badge),
            label: 'Bác sĩ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Hộ số',
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.grey[400], size: 24),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}