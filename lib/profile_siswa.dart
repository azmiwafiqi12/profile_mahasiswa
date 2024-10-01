import 'package:flutter/material.dart';

class ProfileSiswa extends StatelessWidget {
  const ProfileSiswa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E88E5), // Biru stabil
        title: Row(
          children: [
            Image.asset(
              'assets/kampus.png',
              height: 40,
              width: 40,
            ),
            SizedBox(width: 10),
            Text(
              'Kartu Profil Mahasiswa',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE3F2FD), // Biru sangat terang
              Color(0xFF90CAF9), // Biru terang
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Container(
            height: 380,
            width: 700,
            decoration: BoxDecoration(
              color: Colors.white, // Kartu berwarna putih untuk kontras
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 5),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Achmad Ulul Azmi Wafiqi',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF1E88E5), // Biru untuk nama
                          ),
                        ),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.perm_identity, label: 'NIM: 212221004'),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.school,
                            label: 'Program Studi: Informatika'),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.account_balance,
                            label: 'Fakultas: MIKOM'),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.calendar_today,
                            label: 'Angkatan: 2021'),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.email,
                            label: 'Email: azmiwafiqi2@gmail.com'),
                        SizedBox(height: 10),
                        _buildProfileRow(
                            icon: Icons.location_on,
                            label:
                                'Alamat: Jl.Kebon Jambu Rt03 Rw03 Kubangsari, Kesugihan'),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 120,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/RevoUPP.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Method helper untuk membangun baris profil dengan ikon dan teks
  Row _buildProfileRow({required IconData icon, required String label}) {
    return Row(
      children: [
        Icon(icon, color: Color(0xFF1E88E5)), // Warna biru serasi untuk ikon
        SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[800], // Warna teks abu-abu tua
          ),
        ),
      ],
    );
  }
}
