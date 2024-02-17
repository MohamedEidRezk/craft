import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
      child: Column(children: [
        Stack(
          children: [
            Image.asset(
              "assets/images/Rectangle 999.png",
              width: 334,
              height: 201,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Container(
                width: 60,
                height: 24,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFE5D1B8),
                ),
                child: const Center(
                  child: Text("Offline",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.black)),
                ),
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 16,
          ),
          child: Column(
            children: [
              Text("One-to-one Sewing Workshop",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0xFF7FB04F))),
              SizedBox(height: 11),
              Row(children: [
                Icon(Icons.calendar_month, color: Color(0xFF7FB04F)),
                SizedBox(
                  width: 14,
                ),
                Text("5 Nov",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
              ]),
              SizedBox(height: 10),
              Row(children: [
                Icon(Iconsax.clock, color: Color(0xFF7FB04F)),
                SizedBox(
                  width: 14,
                ),
                Text("01:00 PM",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
              ]),
              SizedBox(height: 10),
              Row(children: [
                Icon(Icons.location_on_outlined, color: Color(0xFF7FB04F)),
                SizedBox(
                  width: 14,
                ),
                Text("Zagazig",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
              ]),
              SizedBox(height: 10),
              Row(children: [
                Icon(Iconsax.ticket, color: Color(0xFF7FB04F)),
                SizedBox(
                  width: 14,
                ),
                Text("EGP 99.00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    )),
              ]),
              SizedBox(height: 11),
            ],
          ),
        ),
      ]),
    );
  }
}
