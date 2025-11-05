import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flashcard_app/configs/constants.dart'; // Bạn có thể dùng nếu ngocnhat/ngocdam đã được định nghĩa
import '../l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);
    final primaryColor = theme.primaryColor;
    final backgroundColor = theme.colorScheme.background;
    final onBackgroundColor = theme.colorScheme.onBackground;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,


        title: Text(AppLocalizations.of(context)?.personalInformation ?? 'Thông tin cá nhân'),
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

              child: Image.asset('assets/images/avata.png'),
            ),
            const SizedBox(height: 20),
            Text(
              'Đoàn Quang Minh',
              style: GoogleFonts.notoSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: onBackgroundColor,
              ),
            ),
            const SizedBox(height: 10),

            _buildInfoRow(
                context,
                Icons.perm_identity,
                AppLocalizations.of(context)?.studentId ?? 'Mã sinh viên',
                '23010392'),
            _buildInfoRow(
                context,
                Icons.email,
                AppLocalizations.of(context)?.email ?? 'Email',
                '23010392@st.phenikaa-uni.edu.vn'),
            _buildInfoRow(
                context,
                Icons.group,
                AppLocalizations.of(context)?.groupSize ?? 'Số lượng nhóm',
                '1'),
            _buildInfoRow(
                context,
                Icons.class_,
                AppLocalizations.of(context)?.className ?? 'Tên lớp học',
                'Lập trình cho thiết bị di động-1-1-25(N04)'),
            _buildInfoRow(
                context,
                Icons.perm_contact_cal_outlined,
                AppLocalizations.of(context)?.teacher ?? 'Giảng viên',
                'Nguyen Xuan Que'),

            const SizedBox(height: 40),

            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),


              label: Text(AppLocalizations.of(context)?.back ?? 'Quay lại'),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: theme.colorScheme.onPrimary,
                padding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
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


  Widget _buildInfoRow(
      BuildContext context, IconData icon, String label, String value) {
    final onBackgroundColor = Theme.of(context).colorScheme.onBackground;

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
                color: onBackgroundColor.withOpacity(0.9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}