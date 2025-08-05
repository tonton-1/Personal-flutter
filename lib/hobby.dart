import 'package:flutter/material.dart';

class HobbyPage extends StatelessWidget {
  const HobbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ส่วนหัว - ดูเป็นธรรมชาติมากขึ้น
          Container(
            margin: EdgeInsets.only(bottom: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "งานอดิเรก",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF2D3748),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  width: 45,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Color(0xFF4299E1),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          ),

          // งานอดิเรกในรูปแบบ Grid แบบไม่สม่ำเสมอ
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 16,
              childAspectRatio: 1.1,
              children: [
                _buildHobbyCard(
                  "ฟังเพลง",
                  Icons.headphones,
                  Color(0xFFE53E3E),
                  Color(0xFFFED7D7),
                ),
                _buildHobbyCard(
                  "ดูหนัง",
                  Icons.movie_creation,
                  Color(0xFF3182CE),
                  Color(0xFFBEE3F8),
                ),
                _buildHobbyCard(
                  "อ่านหนังสือ",
                  Icons.menu_book,
                  Color(0xFF38A169),
                  Color(0xFFC6F6D5),
                ),
                _buildHobbyCard(
                  "เล่นเกม",
                  Icons.videogame_asset,
                  Color(0xFFD69E2E),
                  Color(0xFFFAF089),
                ),
                _buildHobbyCard(
                  "ถ่ายรูป",
                  Icons.camera,
                  Color(0xFF805AD5),
                  Color(0xFFE9D8FD),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHobbyCard(
    String title,
    IconData icon,
    Color iconColor,
    Color bgColor,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Color(0xFFE2E8F0), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF000000).withOpacity(0.06),
            blurRadius: 12,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Icon(icon, color: iconColor, size: 26),
          ),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D3748),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
