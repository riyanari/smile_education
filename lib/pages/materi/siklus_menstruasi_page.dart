import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/theme.dart';

class SiklusMenstruasiPage extends StatelessWidget {
  const SiklusMenstruasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();

    // Fungsi untuk memutar audio
    void playSiklus() async {
      await audioPlayer.play(AssetSource('materi/siklus.mp3'));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          'Siklus Menstruasi',
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
                            onTap: playSiklus,
                            child: Image.asset(
                              'assets/ic_sound.png',
                              height: 30,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Expanded(  // Wrap the Text widget with Expanded to allow it to take available space
                            child: Text(
                              "Menstruasi biasanya berlangsung selama 3-7 hari, tergantung pada kondisi tubuh masing-masing perempuan dan siklus menstruasi yang dialami. Beberapa perempuan mungkin mengalami siklus yang lebih pendek atau lebih panjang, namun secara umum, siklus normal berkisar antara 21-35 hari.",
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
            ],
          ),
        ),
      ),
    );
  }
}
