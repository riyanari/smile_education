import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/theme.dart';

class GejalaMenstruasiPage extends StatelessWidget {
  const GejalaMenstruasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    // Fungsi untuk memutar audio
    void playGejala() async {
      await audioPlayer.play(AssetSource('materi/gejala.mp3'));
    }
    void playGejala1() async {
      await audioPlayer.play(AssetSource('materi/gejala1.mp3'));
    }
    void playGejala2() async {
      await audioPlayer.play(AssetSource('materi/gejala2.mp3'));
    }
    void playGejala3() async {
      await audioPlayer.play(AssetSource('materi/gejala3.mp3'));
    }
    void playGejala4() async {
      await audioPlayer.play(AssetSource('materi/gejala4.mp3'));
    }
    void playGejala5() async {
      await audioPlayer.play(AssetSource('materi/gejala5.mp3'));
    }
    void playGejala6() async {
      await audioPlayer.play(AssetSource('materi/gejala6.mp3'));
    }
    void playGejala7() async {
      await audioPlayer.play(AssetSource('materi/gejala7.mp3'));
    }

    void playGejala8() async {
      await audioPlayer.play(AssetSource('materi/gejala8.mp3'));
    }
    void playGejala9() async {
      await audioPlayer.play(AssetSource('materi/gejala9.mp3'));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          'Gejala Menstruasi',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                      onTap: playGejala,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Gejala-gejala yang dialami perempuan saat mengalami mentruasi antara lain:",
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
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala1,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kram perut",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Nyeri di bagian bawah perut yang disebabkan oleh kontraksi rahim untuk meluruhkan lapisan dinding rahim. Intensitasnya bervariasi, dari ringan hingga berat, tergantung individu.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "2",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala2,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perubahan suasana hati",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Perasaan cepat marah, mudah tersinggung, atau lebih sensitif secara emosional karena perubahan hormon yang terjadi selama siklus menstruasi.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala3,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pendarahan vagina",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Darah yang keluar dari vagina, yang biasanya berlangsung selama 3-7 hari. Darah ini berasal dari lapisan dinding rahim yang meluruh karena tidak ada pembuahan.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "4",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala4,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lemas atau kelelahan",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Penurunan energi dan rasa lelah yang sering terjadi akibat perubahan hormon serta kehilangan darah yang dialami perempuan selama menstruasi.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "5",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala5,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nyeri punggung",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Beberapa perempuan mengalami nyeri di bagian punggung bawah, yang terjadi akibat ketegangan otot karena kontraksi rahim.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "6",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala6,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payudara terasa nyeri",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Nyeri atau rasa sensitif di sekitar payudara yang disebabkan oleh perubahan hormon estrogen dan progesteron.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "7",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala7,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sakit kepala",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Beberapa perempuan mengalami sakit kepala ringan hingga berat akibat perubahan hormon atau retensi air selama menstruasi.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "8",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala8,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perut kembung",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Banyak perempuan mengalami perut terasa kembung akibat retensi air atau gas dalam sistem pencernaan, yang dipengaruhi oleh hormon.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: kPrimaryColor, // Warna latar belakang container
                              borderRadius: BorderRadius.circular(constraints.maxWidth / 2), // Setengah dari ukuran tinggi/lebar
                            ),
                            child: Center(
                              child: Text(
                                "9",
                                style: whiteTextStyle.copyWith(
                                  fontSize: fontSize, // Font size dinamis
                                  fontWeight: bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 14,),
                  Expanded(
                    flex: 5,
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
                            onTap: playGejala9,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Jerawat",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 18,
                                    fontWeight: bold,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                                const SizedBox(height: 8,),
                                Text(
                                  "Perubahan hormon selama menstruasi dapat menyebabkan munculnya jerawat atau masalah kulit lainnya pada beberapa perempuan.",
                                  style: primaryTextStyle.copyWith(
                                    fontSize: 14,
                                    fontWeight: regular,
                                  ),
                                  maxLines: null,  // No limit to the number of lines
                                  overflow: TextOverflow.visible,  // Ensure text is fully shown
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
