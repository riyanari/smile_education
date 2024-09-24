import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/theme.dart';

class MenstruasiPage extends StatelessWidget {
  const MenstruasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    // Fungsi untuk memutar audio
    void playMens1() async {
      await audioPlayer.play(AssetSource('materi/mens1.mp3'));
    }
    void playMens2() async {
      await audioPlayer.play(AssetSource('materi/mens2.mp3'));
    }
    void playMens3() async {
      await audioPlayer.play(AssetSource('materi/mens3.mp3'));
    }
    void playMens4() async {
      await audioPlayer.play(AssetSource('materi/mens4.mp3'));
    }

    void playMens5() async {
      await audioPlayer.play(AssetSource('materi/mens5.mp3'));
    }
    void playMens6() async {
      await audioPlayer.play(AssetSource('materi/mens6.mp3'));
    }
    void playMens7() async {
      await audioPlayer.play(AssetSource('materi/mens7.mp3'));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          'Menstruasi',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img_mens1000.png',
                      fit: BoxFit.fitHeight,
                      // width: MediaQuery.of(context).size.width * 0.34,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 2,
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
                            onTap: playMens1,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Menstruasi adalah proses alami yang terjadi sebagai bagian dari siklus reproduksi Perempuan. Proses ini dimulai ketika lapisan dinding rahim (endometrium) meluruh dan keluar dari tubuh melalui vagina dalam bentuk darah. Menstruasi merupakan tanda bahwa sistem reproduksi perempuan berfungsi secara normal.",
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
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
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    flex: 2,
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
                            onTap: playMens2,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Menstruasi merupakan tanda bahwa sistem reproduksi perempuan berfungsi secara normal. Umumnya, menstruasi pertama kali muncul pada masa pubertas, yaitu sekitar usia 9-16 tahun, dan berlanjut hingga menopause",
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
                              ),
                              maxLines: null,  // No limit to the number of lines
                              overflow: TextOverflow.visible,  // Ensure text is fully shown
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/img_siklus1000.png',
                      fit: BoxFit.fitHeight,
                      // width: MediaQuery.of(context).size.width * 0.34,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
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
                      onTap: playMens3,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Selama menstruasi, perempuan mungkin mengalami berbagai gejala, baik secara fisik maupun emosional.",
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        maxLines: null,  // No limit to the number of lines
                        overflow: TextOverflow.visible,  // Ensure text is fully shown
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    flex: 1,
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
                            onTap: playMens4,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Gejala fisik seperti kram perut, lemas, dan kelelahan sering dialami.",
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
                              ),
                              maxLines: null,  // No limit to the number of lines
                              overflow: TextOverflow.visible,  // Ensure text is fully shown
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 1,
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
                            onTap: playMens5,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Secara emosional, perempuan bisa mengalami perubahan suasana hati, menjadi lebih sensitif atau mudah marah.",
                              style: primaryTextStyle.copyWith(
                                fontSize: 14,
                                fontWeight: regular,
                              ),
                              maxLines: null,  // No limit to the number of lines
                              overflow: TextOverflow.visible,  // Ensure text is fully shown
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Container(
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
                      onTap: playMens6,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Oleh karena itu, penting bagi remaja putri untuk memahami perubahan yang terjadi pada tubuh mereka selama menstruasi dan belajar untuk mengelolanya dengan baik, baik dari aspek kesehatan fisik maupun emosional.",
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        maxLines: null,  // No limit to the number of lines
                        overflow: TextOverflow.visible,  // Ensure text is fully shown
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
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
                      onTap: playMens7,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Menstruasi juga diatur dalam ajaran agama, khususnya dalam Islam. Ada beberapa hal yang boleh dan tidak boleh dilakukan oleh perempuan yang sedang menstruasi, yang terkait dengan ibadah dan keseharian. Oleh sebab itu, pemahaman tentang menstruasi sangat penting untuk menjaga kesehatan reproduksi dan menjalankan aktivitas sehari-hari sesuai dengan nilai agama.",
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                        maxLines: null,  // No limit to the number of lines
                        overflow: TextOverflow.visible,  // Ensure text is fully shown
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
