import 'package:audioplayers/audioplayers.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smile_education/pages/quiz/soal_sembilan_page.dart';
import 'package:smile_education/theme/theme.dart';

import '../home_page.dart';

class SoalDelapanPage extends StatefulWidget {
  const SoalDelapanPage({super.key});

  @override
  State<SoalDelapanPage> createState() => _SoalDelapanPageState();
}

class _SoalDelapanPageState extends State<SoalDelapanPage> {
  String nama = '';
  String totalPoin = '';
  String? selectedAnswer;
  final AudioPlayer _audioPlayer = AudioPlayer();

  // Fungsi untuk memutar audio
  void _playSoal8() async {
    await _audioPlayer.play(AssetSource('kuis/soal8.mp3'));
  }

  void _play8A() async {
    await _audioPlayer.play(AssetSource('kuis/8A.mp3'));
  }

  void _play8B() async {
    await _audioPlayer.play(AssetSource('kuis/8B.mp3'));
  }

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
    setState(() {
      totalPoin = (point1+point2+point3+point4+point5+point6+point7).toString();
    });
  }


  Future<void> _savePoints(int point) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('point8', point);
  }

  void _selectAnswer(String label) {
    setState(() {
      selectedAnswer = label;
    });
  }

  void _cekJawaban() {
    if (selectedAnswer == null) {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.warning,
        animType: AnimType.scale,
        title: 'Pilih jawaban terlebih dahulu!',
        desc: 'Anda belum memilih jawaban.',
        btnOkOnPress: () {},
      ).show();
      return;
    }

    int points = selectedAnswer == "A" ? 10 : 0; // Misalnya, label B adalah jawaban benar
    _savePoints(points); // Simpan poin ke SharedPreferences

    AwesomeDialog(
      context: context,
      dialogType: selectedAnswer == "A" ? DialogType.success : DialogType.error,
      animType: AnimType.scale,
      title: selectedAnswer == "A" ? 'Jawaban Benar!' : 'Jawaban Salah!',
      titleTextStyle: selectedAnswer == "A" ? primaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: bold
      ) : errorTextStyle.copyWith(
          fontSize: 16,
          fontWeight: bold
      ),
      desc: selectedAnswer == "A"
          ? 'Jawaban Anda benar, silahkan lanjut ke pertanyaan selanjutnya.'
          : 'Jawaban Anda salah, silahkan  lanjut ke pertanyaan selanjutnya.',
      descTextStyle: secondaryTextStyle,
      btnOkColor: selectedAnswer == "A" ? kPrimaryColor : tErrorColor,
      btnOkOnPress: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SoalSembilanPage())
        );
      },
      dismissOnTouchOutside: false
    ).show();
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

    Widget header(){
      return Text(
        "Halo $nama, Pilihlah jawaban yang paling benar!",
        style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold
        ),
      );
    }

    Widget answerContainer(String answer, String label) {
      bool isSelected = selectedAnswer == label; // Check if this answer is selected
      return Container(
        decoration: BoxDecoration(
          color: isSelected ? kBoxGreenColor : kWhiteColor, // Change color if selected
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: kPrimaryColor,
            width: 2,
          ),
        ),
        child: GestureDetector(
          onTap: () => _selectAnswer(label), // Handle tap
          child: IntrinsicHeight(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 12, 4, 10),
                  child: Center(
                    child: Text(
                      label,
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semiBold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: kPrimaryColor,
                  thickness: 2,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: Text(
                      answer,
                      style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                        height: 1.25,
                      ),
                      maxLines: null,
                      overflow: TextOverflow.visible,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18.0, 8, 10, 8),
                  child: GestureDetector(
                    onTap: (){
                      if (label == "A") {
                        _play8A(); // Mainkan audio untuk jawaban A
                      } else if (label == "B") {
                        _play8B(); // Mainkan audio untuk jawaban B
                      }
                    },
                    child: Image.asset(
                      'assets/ic_sound.png',
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget soal(){
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: kPrimaryColor, // Warna latar belakang container
                  borderRadius: BorderRadius.circular(60), // Setengah dari tinggi/width untuk lingkaran
                ),
                child: Center(
                  child: Text(
                    "8",
                    style: whiteTextStyle.copyWith(
                        fontSize: 31,
                        fontWeight: bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  'assets/img_soal200.png',
                  fit: BoxFit.fitHeight,
                  // width: MediaQuery.of(context).size.width * 0.34,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: kWhiteColor, // Warna latar belakang container
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: kPrimaryColor, // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: _playSoal8,
                        child: Image.asset(
                          'assets/ic_sound.png',
                          height: 30,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                        child: Text(
                          "Apa yang dilarang dilakukan saat menstruasi?",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                          maxLines: null,  // No limit to the number of lines
                          overflow: TextOverflow.visible,  // Ensure text is fully shown
                        ),
                      ),
                    ],
                  ),

                ),
              )
            ],
          ),
          const SizedBox(height: 30,),
          answerContainer("Sholat dan berpuasa", "A"),
          const SizedBox(height: 14,),
          answerContainer("Boleh melakukan aktivitas sosial, seperti belajar atau bersosialisasi", "B"),
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
                header(),
                Expanded(child: soal()),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Poin Anda: ",
                          style: primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        ),
                        Text(
                          totalPoin,
                          style: totalPoin == '0'
                              ? errorTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          )
                              : primaryTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: semiBold,
                          ),
                        )

                      ],
                    ),
                    GestureDetector(
                      onTap: _cekJawaban, // Trigger jawaban check when tapped
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                        decoration: BoxDecoration(
                          color: kPrimaryColor, // Warna latar belakang container
                          borderRadius: BorderRadius.circular(10), // Setengah dari tinggi/width untuk lingkaran
                        ),
                        child: Center(
                          child: Text(
                            "Cek Jawaban",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
