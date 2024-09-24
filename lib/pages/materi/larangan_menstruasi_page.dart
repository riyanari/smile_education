import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/theme.dart';

class LaranganMenstruasiPage extends StatelessWidget {
  const LaranganMenstruasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    // Fungsi untuk memutar audio
    void playAnjuran() async {
      await audioPlayer.play(AssetSource('materi/anjuran.mp3'));
    }
    void playAnjuran1() async {
      await audioPlayer.play(AssetSource('materi/anjuran1.mp3'));
    }
    void playAnjuran2() async {
      await audioPlayer.play(AssetSource('materi/anjuran2.mp3'));
    }
    void playAnjuran3() async {
      await audioPlayer.play(AssetSource('materi/anjuran3.mp3'));
    }
    void playAnjuran4() async {
      await audioPlayer.play(AssetSource('materi/anjuran4.mp3'));
    }
    void playAnjuran5() async {
      await audioPlayer.play(AssetSource('materi/anjuran5.mp3'));
    }
    void playAnjuran6() async {
      await audioPlayer.play(AssetSource('materi/anjuran6.mp3'));
    }

    void playLarangan() async {
      await audioPlayer.play(AssetSource('materi/larangan.mp3'));
    }
    void playLarangan1() async {
      await audioPlayer.play(AssetSource('materi/larangan1.mp3'));
    }
    void playLarangan2() async {
      await audioPlayer.play(AssetSource('materi/larangan2.mp3'));
    }
    void playLarangan3() async {
      await audioPlayer.play(AssetSource('materi/larangan3.mp3'));
    }
    void playLarangan4() async {
      await audioPlayer.play(AssetSource('materi/larangan4.mp3'));
    }
    void playLarangan5() async {
      await audioPlayer.play(AssetSource('materi/larangan5.mp3'));
    }
    void playLarangan6() async {
      await audioPlayer.play(AssetSource('materi/larangan6.mp3'));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          'Larangan Menstruasi',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
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
                      onTap: playAnjuran,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Hal yang boleh dilakukan dan dianjurkan saat menstruasi antara lain:",
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
                    flex: 6,
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
                            onTap: playAnjuran1,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Boleh beraktivitas harian seperti biasa",
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
                    flex: 6,
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
                            onTap: playAnjuran2,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Boleh membaca buku dan belajar, termasuk membaca Al-Qur'an tanpa menyentuh mushaf",
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
                    flex: 6,
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
                            onTap: playAnjuran3,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Boleh makan dan minum dengan wajar",
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
                    flex: 6,
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
                            onTap: playAnjuran4,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Dianjurkan menjaga kebersihan diri dengan mandi dan membersihkan tubuh",
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
                    flex: 6,
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
                            onTap: playAnjuran5,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Boleh melakukan aktivitas sosial, seperti belajar atau bersosialisasi",
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
                    flex: 6,
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
                            onTap: playAnjuran6,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Dianjurkan berdzikir dan berdoa tanpa menyentuh mushaf",
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
              const SizedBox(height: 30,),
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
                      onTap: playLarangan,
                      child: Image.asset(
                        'assets/ic_sound.png',
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                      child: Text(
                        "Hal yang tidak boleh dilakukan saat menstruasi antara lain:",
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
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan1,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh melaksanakan sholat",
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan2,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh berpuasa wajib selama bulan Ramadhan dan berpuasa sunnah.",
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan3,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh melakukan tawaf di sekitar Ka'bah",
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan4,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh melakukan hubungan suami-istri selama masa menstruasi",
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan5,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh memasuki masjid untuk berdiam diri atau iktikaf (menunggu dan berdoa di dalam masjid)",
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
                    flex: 1,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        // Menghitung fontSize berdasarkan ukuran container
                        double fontSize = constraints.maxWidth * 0.50; // Sesuaikan rasio fontSize

                        return AspectRatio(
                          aspectRatio: 1, // Rasio 1:1 untuk memastikan lingkaran
                          child: Container(
                            decoration: BoxDecoration(
                              color: tErrorColor, // Warna latar belakang container
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
                    flex: 6,
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
                            onTap: playLarangan6,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Tidak boleh menyentuh atau membaca mushaf Al-Qur'an secara langsung, kecuali jika menggunakan sarung tangan atau media digital.",
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
            ],
          ),
        ),
      ),
    );
  }
}
