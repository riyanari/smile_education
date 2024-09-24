import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smile_education/theme/theme.dart';

import '../home_page.dart';

class FinishSoalPage extends StatefulWidget {
  const FinishSoalPage({super.key});

  @override
  State<FinishSoalPage> createState() => _FinishSoalPageState();
}

class _FinishSoalPageState extends State<FinishSoalPage> {
  String nama = '';
  String totalPoin = '';
  String? selectedAnswer;

  @override
  void initState() {
    super.initState();
    _getNamaFromSharedPrefs();
    _getTotalPoinFromSharedPrefs();
  }

  Future<void> _getNamaFromSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nama = prefs.getString('nama') ?? 'User'; // Jika tidak ada, tampilkan 'User'
    });
  }

  Future<void> _getTotalPoinFromSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int point1 = prefs.getInt('point1') ?? 0;
    int point2 = prefs.getInt('point2') ?? 0;
    int point3 = prefs.getInt('point3') ?? 0;
    int point4 = prefs.getInt('point4') ?? 0;
    int point5 = prefs.getInt('point5') ?? 0;
    int point6 = prefs.getInt('point6') ?? 0;
    int point7 = prefs.getInt('point7') ?? 0;
    int point8 = prefs.getInt('point8') ?? 0;
    int point9 = prefs.getInt('point9') ?? 0;
    int point10 = prefs.getInt('point10') ?? 0;
    setState(() {
      totalPoin = (point1+point2+point3+point4+point5+point6+point7+point8+point9+point10).toString();
    });
  }

  void _showExitConfirmationDialog() {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.question,
      title: 'Yakin ingin berhenti main quiz?',
      titleTextStyle: primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: bold
      ),
      desc: 'Jika Anda keluar, progress quiz akan hilang.',
      descTextStyle: secondaryTextStyle,
      btnCancelText: 'Tidak',
      btnOkText: 'Ya',
      btnOkOnPress: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
              (Route<dynamic> route) => false,
        );
      },
      btnCancelOnPress: () {},
    ).show();
  }

  @override
  Widget build(BuildContext context) {

    // Widget header(){
    //   return Text(
    //     "Selamat $nama, Anda telah menyelesaikan kuis, silahkan lihat hasil yang Anda dapat! ",
    //     style: primaryTextStyle.copyWith(
    //         fontSize: 16,
    //         fontWeight: bold
    //     ),
    //   );
    // }

    Widget imageBody(){
      return Container(
        margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
        height: 300,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kBoxGreenColor, // Warna latar belakang container
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(30),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: kWhiteColor, // Warna latar belakang container
              borderRadius: BorderRadius.circular(200), // Setengah dari tinggi/width untuk lingkaran
            ),
            child: Image.asset(
              'assets/img_sad.png',
            ),
          ),
        ),
      );
    }

    Widget nilaiAkhir(){
      return Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(24,295,24,30),
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          decoration: const BoxDecoration(
            color: kBoxMensColor, // Warna latar belakang container
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor, // Warna bayangan dengan transparansi
                spreadRadius: 0, // Sebaran bayangan
                blurRadius: 4, // Jarak blur bayangan
                offset: Offset(0, 4), // Posisi bayangan (x: 2, y: 4)
              ),
            ],
          ),
        child: Column(
          children: [
            Text(
              int.parse(totalPoin) <= 50
                  ? "Maaf $nama, Anda hanya mendapatkan nilai:"
                  : "Selamat $nama, Anda mendapatkan nilai:",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: int.parse(totalPoin) <= 50
                    ? tErrorColor
                    : kPrimaryColor, // Warna latar belakang container
                  borderRadius: BorderRadius.circular(60), // Setengah dari tinggi/width untuk lingkaran
                ),
                child: Center(
                  child: Text(
                    totalPoin,
                    style: whiteTextStyle.copyWith(
                        fontSize: 31,
                        fontWeight: bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Text(
              int.parse(totalPoin) <= 99
                  ? "Silahkan baca kembali materi-materi yang tersedia"
                  : "Pertahankan kemampuan Anda",
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget body(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selamat $nama, \nAnda telah menyelesaikan kuis!!!",
            style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold
            ),
          ),
          Stack(
            children: [
              imageBody(),
              nilaiAkhir()
            ],
          ),
        ],
      );
    }

    return PopScope(
      canPop: false,
      onPopInvoked: ((didPop) {
        if (didPop) {
          return;
        }
        _showExitConfirmationDialog();
      }),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.fromLTRB(18.0, 30, 18, 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // header(),
                body(),
                GestureDetector(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                          (Route<dynamic> route) => false,
                    );
                  }, // Trigger jawaban check when tapped
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                    decoration: BoxDecoration(
                      color: kPrimaryColor, // Warna latar belakang container
                      borderRadius: BorderRadius.circular(10), // Setengah dari tinggi/width untuk lingkaran
                    ),
                    child: Center(
                      child: Text(
                        "Finish",
                        style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: regular
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
