import 'package:flutter/material.dart';

import '../theme/theme.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget headerProfile() {
      return Column(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      kPrimaryColor,
                      kPrimaryColor.withOpacity(0.58),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(
                    ((MediaQuery.of(context).size.width - 142) / 2),
                    (120 - (142 / 2))),
                // menyesuaikan container secara horizontal
                child: Container(
                  height: 142,
                  width: 142,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                        color: const Color(0xffd9d9d9),
                        width: 8), // opsional border putih
                  ),
                  child: ClipOval(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/logo_unissula_login.png',
                        height: 100,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget bodyProfile() {

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            TextFormField(
              initialValue: "Khusnul Hatimah", // Menampilkan data statis
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Name Harus diisi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Nama",
                labelStyle: secondaryTextStyle, // Mengatur warna label
                filled: true,
                fillColor: Colors.white,
                enabled: false,
                prefixIcon: const Icon(Icons.person, color: kPrimaryColor, size: 20,), // Mengatur warna ikon
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: kPrimaryColor, // Mengatur warna teks input
              ),
              readOnly: true, // Membuat field tidak dapat diedit
            ),
            const SizedBox(height: 18,),
            TextFormField(
              initialValue: "Universitas Islam Sultan Agung Semarang", // Menampilkan data statis
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Univ Harus diisi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Universitas",
                labelStyle: secondaryTextStyle, // Mengatur warna label
                filled: true,
                fillColor: Colors.white,
                enabled: false,
                prefixIcon: const Icon(Icons.school, color: kPrimaryColor, size: 20,), // Mengatur warna ikon
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: kPrimaryColor, // Mengatur warna teks input
              ),
              readOnly: true, // Membuat field tidak dapat diedit
              maxLines: null,
            ),
            const SizedBox(height: 18,),
            TextFormField(
              initialValue: "khusnulcomel25@gmail.com", // Menampilkan data statis
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email Harus diisi';
                }
                return null;
              },
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: secondaryTextStyle, // Mengatur warna label
                filled: true,
                fillColor: Colors.white,
                enabled: false,
                prefixIcon: const Icon(Icons.email, color: kPrimaryColor, size: 20,), // Mengatur warna ikon
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kPrimaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                color: kPrimaryColor, // Mengatur warna teks input
              ),
              readOnly: true, // Membuat field tidak dapat diedit
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.close, color: kWhiteColor,
          ),
          onPressed: () {
            // Add your onPressed code here!
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Data Pembuat',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                headerProfile(),
                const SizedBox(height: 70,),
                bodyProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
