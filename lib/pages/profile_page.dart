import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flashcard_app/configs/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ngocnhat,
      appBar: AppBar(
        backgroundColor: ngocdam,
        title: const Text('Thông tin cá nhân'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: const Icon(
                Icons.person,
                size: 70,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 20),

            // Tên
            Text(
              'Đoàn Quang Minh',
              style: GoogleFonts.notoSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 10),


            _buildInfoRow(Icons.perm_identity, 'Mã sinh viên', '23010392'),
            _buildInfoRow(Icons.email, 'Email', '23010392@st.phenikaa-uni.edu.vn'),
            _buildInfoRow(Icons.group, 'Số lượng thành viên nhóm', '1'),

            const SizedBox(height: 40),


            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
              label: const Text('Quay lại'),
              style: ElevatedButton.styleFrom(
                backgroundColor: ngocdam,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                textStyle: GoogleFonts.notoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey[700]),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              '$label: $value',
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
