import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smile_education/components/materi_menstruasi.dart';
import 'package:smile_education/pages/data_page.dart';
import 'package:smile_education/pages/materi/gejala_menstruasi_page.dart';
import 'package:smile_education/pages/materi/larangan_menstruasi_page.dart';
import 'package:smile_education/pages/materi/menstruasi_page.dart';
import 'package:smile_education/pages/materi/siklus_menstruasi_page.dart';
import 'package:smile_education/pages/quiz/soal_satu_page.dart';
import 'package:smile_education/theme/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void addNamaDialog(BuildContext context) {
    TextEditingController namaController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    AwesomeDialog(
      context: context,
      dialogType: DialogType.infoReverse,
      animType: AnimType.topSlide,
      showCloseIcon: false,
      body: Column(
        children: [
          Text("Nama?", style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold
          ),),
          Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: namaController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Masukkan Nama Anda',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama harus diisi';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
      btnOkText: 'Main',
      btnOkColor: kPrimaryColor,
      btnCancelText: "Batal",
      btnCancelOnPress: (){},
      btnOkOnPress: () async {
        if (formKey.currentState!.validate()) {
          try {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            await prefs.setString('nama', namaController.text);

            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SoalSatuPage())
            );
          } catch (e) {
            AwesomeDialog failedDialog = AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.topSlide,
                title: 'Gagal!',
                desc: 'Gagal memberikan nama',
                btnOkOnPress: (){}
            );

            failedDialog.show();
          }
        } else {
          AwesomeDialog failedDialog = AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.topSlide,
              title: 'Gagal!',
              desc: 'Nama tidak boleh kosong',
              btnOkOnPress: (){},
            btnOkColor: tErrorColor
          );

          failedDialog.show();
        }
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {


    Widget header() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/logo_unissula_login.png',
                height: 40,
              ),
              const SizedBox(width: 8,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Smile Education",
                    style: primaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: bold
                    ),
                  ),
                  Text(
                    "Mari belajar sambil bermain",
                    style: primaryTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  )
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DataPage())
              );
            },
            child: const Icon(
                Icons.person_outline
            ),
          )
          // Image.asset(
          //   'assets/ic_account.png',
          //   height: 30,
          // ),
        ],
      );
    }

    Widget quizBox() {
      return Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          padding: const EdgeInsets.all(18),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.80, -0.80),
              // Nilai X dan Y yang lebih rendah akan membuat gradien lebih condong ke top-left
              // end: Alignment(0.8, 2),
              // begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                // kPrimaryColor,
                Color(0xff046B5A),
                Color(0xff08D1B0),
              ],
              stops: [
                0.0,
                0.9
              ], // Sesuaikan dengan kebutuhan untuk mengatur distribusi warna
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Mari Bermain Quiz",
                      style: titleWhiteTextStyle.copyWith(
                          fontWeight: semiBold, fontSize: 20
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    GestureDetector(
                      onTap: (){
                        addNamaDialog(context);
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white, // Warna latar belakang container
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          boxShadow: [
                            BoxShadow(
                              color: kPrimaryColor, // Warna bayangan dengan transparansi
                              spreadRadius: 4, // Sebaran bayangan
                              blurRadius: 4, // Jarak blur bayangan
                              offset: Offset(2, 2), // Posisi bayangan (x: 2, y: 4)
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            'Play Now',
                            style: titleTextStyle.copyWith(
                              fontSize: 18
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              Image.asset(
                'assets/img_quis.png',
                width: MediaQuery.of(context).size.width * 0.34,
              ),
            ],
          ),
      );
    }

    Widget materiMens(){

      List<Widget> menuItems = [
        MateriMenstruasi(
          judul: 'Menstruasi',
          detail: 'Menstruasi adalah proses alami yang terjadi sebagai bagian dari siklus reproduksi Perempuan. Proses ini dimulai ketika lapisan dinding rahim (endometrium) meluruh dan keluar dari tubuh melalui vagina dalam bentuk darah',
          image: 'img_menstruasi.png',
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MenstruasiPage())
            );
          },
        ),

        MateriMenstruasi(
          judul: 'Gejala Menstruasi',
          detail: 'Gejala-gejala yang dialamai perempuan saat mengalamai mentruasi antara lain:',
          image: 'img_gejala.png',
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GejalaMenstruasiPage())
            );
          },
        ),

        MateriMenstruasi(
          judul: 'Siklus Menstruasi',
          detail: 'Menstruasi biasanya berlangsung selama 3-7 hari, tergantung pada kondisi tubuh masing-masing perempuan dan siklus menstruasi yang dialami. Beberapa perempuan mungkin mengalami siklus yang lebih pendek atau lebih panjang, namun secara umum, siklus normal berkisar antara 21-35 hari.',
          image: 'img_siklus.png',
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SiklusMenstruasiPage())
            );
          },
        ),

        MateriMenstruasi(
          judul: 'Larangan Menstruasi',
          detail: 'Hal-hal yang diperbolehkan dan yang tidak boleh dilakukan ketika mengalamai menstruasi antara lain:',
          image: 'img_larangan.png',
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LaranganMenstruasiPage())
            );
          },
        ),
      ];

      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Materi-materi", style: secondaryTextStyle,),
          const SizedBox(height: 10,),
          GridView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0, // Spasi antar item secara vertikal
              crossAxisSpacing: 10.0,
              childAspectRatio: 2 / 2,
              mainAxisExtent: MediaQuery.of(context).size.height / 3.4,
              ),
              children: menuItems,
          )
        ],
      );
    }

    DateTime? lastPressedAt;

    void onPopInvoked(bool result) {
      final now = DateTime.now();
      final doubleTap = lastPressedAt != null &&
          now.difference(lastPressedAt!) < const Duration(seconds: 1);
      if (doubleTap) {
        // Exit the app
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      } else {
        // Update the last pressed time
        lastPressedAt = now;
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(child: Text('Tekan kembali lagi untuk keluar')),
          ),
        );
      }
    }

    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: onPopInvoked,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 20, 18, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  header(),
                  quizBox(),
                  materiMens(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
