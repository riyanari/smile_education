import 'package:flutter/material.dart';
import 'package:smile_education/theme/theme.dart';

class MateriMenstruasi extends StatelessWidget {
  final String judul;
  final String detail;
  final String image;
  final Function() onPressed;
  const MateriMenstruasi({
    super.key,
    required this.judul,
    required this.detail,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              width: 264,
              decoration: const BoxDecoration(
                color: kBoxGreenColor, // Warna latar belakang container
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: kWhiteColor, // Warna latar belakang container
                    borderRadius: BorderRadius.circular(110), // Setengah dari tinggi/width untuk lingkaran
                  ),
                  child: Image.asset(
                    'assets/$image',
                    height: 100, // Agar gambar memenuhi container
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              judul,
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: semiBold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              detail,
              style: secondaryTextStyle.copyWith(
                fontSize: 10,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Detail",
                  style: primaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
                const Icon(
                  Icons.arrow_right_alt,
                  color: kPrimaryColor,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
