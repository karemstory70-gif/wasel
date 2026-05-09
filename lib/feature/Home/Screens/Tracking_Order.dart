import 'package:flutter/material.dart';
import 'package:wasel/feature/Home/Screens/Delivery_Man_Call_Screen.dart';
import 'package:wasel/feature/Home/Screens/Delivery_Man_Message_Screen.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget buildStep({
    required String title,
    required bool isActive,
    required bool isDone,
  }) {
    return Row(
      crossAxisAlignment:
      CrossAxisAlignment.start,

      children: [

        Container(
          width: 18,
          height: 18,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: isActive
                ? const Color(0xffFF7A1A)
                : Colors.grey.shade300,
          ),

          child: isDone
              ? const Icon(
            Icons.check,
            size: 12,
            color: Colors.white,
          )
              : null,
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Padding(
            padding:
            const EdgeInsets.only(top: 1),

            child: Text(
              title,

              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,

                color: isActive
                    ? const Color(0xffFF7A1A)
                    : const Color(0xffB0B0C3),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLine() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8,
        top: 4,
        bottom: 4,
      ),

      child: Container(
        width: 2,
        height: 26,
        color: Colors.grey.shade300,
      ),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9DEE3),

      body: Stack(
        children: [

          /// TRACK LINE
          Positioned.fill(
            child: CustomPaint(
              painter: DeliveryTrackPainter(),
            ),
          ),

          /// APP BAR
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              child: Row(
                children: [

                  Container(
                    width: 48,
                    height: 48,
                    decoration: const BoxDecoration(
                      color: Color(0xff1E1E2D),
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),

                  const SizedBox(width: 14),

                  const Text(
                    "Track Order",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1E1E2D),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// BOTTOM CARD
          DraggableScrollableSheet(
            initialChildSize: 0.23,
            minChildSize: 0.23,
            maxChildSize: 0.90,

            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.only(
                  top: 12,
                  left: 22,
                  right: 22,
                ),

                decoration: const BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(32),
                  ),
                ),

                child: SingleChildScrollView(
                  controller: scrollController,

                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      /// HANDLE
                      Center(
                        child: Container(
                          width: 60,
                          height: 5,

                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius:
                            BorderRadius.circular(50),
                          ),
                        ),
                      ),

                      const SizedBox(height: 26),

                      /// RESTAURANT INFO
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          ClipRRect(
                            borderRadius:
                            BorderRadius.circular(18),

                            child: Image.network(
                              "https://images.unsplash.com/photo-1504674900247-0877df9cc836",
                              width: 72,
                              height: 72,
                              fit: BoxFit.cover,
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,

                              children: [

                                const Text(
                                  "Uttora Coffee House",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight:
                                    FontWeight.w700,
                                    color:
                                    Color(0xff1E1E2D),
                                  ),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  "Orderd At 06 Sept, 10:00pm",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color:
                                    Colors.grey.shade500,
                                  ),
                                ),

                                const SizedBox(height: 14),

                                const Text(
                                  "2x Burger",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w600,
                                    color:
                                    Color(0xff5B5B73),
                                  ),
                                ),

                                const SizedBox(height: 4),

                                const Text(
                                  "4x Sandwich",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight:
                                    FontWeight.w600,
                                    color:
                                    Color(0xff5B5B73),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 36),

                      /// DELIVERY TIME
                      const Center(
                        child: Column(
                          children: [

                            Text(
                              "20 min",
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight:
                                FontWeight.w800,
                                color:
                                Color(0xff1E1E2D),
                              ),
                            ),

                            SizedBox(height: 4),

                            Text(
                              "ESTIMATED DELIVERY TIME",
                              style: TextStyle(
                                letterSpacing: 1.2,
                                fontSize: 13,
                                fontWeight:
                                FontWeight.w500,
                                color:
                                Color(0xffA4A4BF),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 34),

                      buildStep(
                        title:
                        "Your order has been received",
                        isActive: true,
                        isDone: false,
                      ),

                      buildLine(),

                      buildStep(
                        title:
                        "The restaurant is preparing your food",
                        isActive: false,
                        isDone: false,
                      ),

                      buildLine(),

                      buildStep(
                        title:
                        "Your order has been picked up for delivery",
                        isActive: false,
                        isDone: true,
                      ),

                      buildLine(),

                      buildStep(
                        title: "Order arriving soon!",
                        isActive: false,
                        isDone: true,
                      ),

                      const SizedBox(height: 32),

                      /// COURIER CARD
                      Container(
                        padding: const EdgeInsets.all(18),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.circular(28),

                          border: Border.all(
                            color: Colors.grey.shade200,
                          ),
                        ),

                        child: Row(
                          children: [

                            CircleAvatar(
                              radius: 28,
                              backgroundImage:
                              NetworkImage(
                                "https://i.pravatar.cc/300",
                              ),
                            ),

                            const SizedBox(width: 14),

                            const Expanded(
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,

                                children: [

                                  Text(
                                    "Robert F.",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight:
                                      FontWeight.w700,
                                      color:
                                      Color(0xff1E1E2D),
                                    ),
                                  ),

                                  SizedBox(height: 2),

                                  Text(
                                    "Courier",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                      Color(0xffA4A4BF),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              width: 56,
                              height: 56,

                              decoration: const BoxDecoration(
                                color: Color(0xffFF7A1A),
                                shape: BoxShape.circle,
                              ),

                              child: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CallScreen()));
                                },
                              icon: Icon(Icons.call,), 
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(width: 12),

                            Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color:
                                  const Color(0xffFF7A1A),
                                ),
                              ),

                              child: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=>Chat_Message_Screen()));
                                },
                                icon: Icon(Icons.chat_bubble,),
                                color: Color(0xffFF7A1A),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DeliveryTrackPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    /// TRACK PAINT
    final trackPaint = Paint()
      ..color = const Color(0xffF59E0B)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    /// PATH
    final path = Path();

    /// START
    path.moveTo(
      size.width * 0.72,
      size.height * 0.28,
    );

    /// CURVES
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.34,
      size.width * 0.62,
      size.height * 0.38,
    );

    path.lineTo(
      size.width * 0.38,
      size.height * 0.47,
    );

    path.lineTo(
      size.width * 0.38,
      size.height * 0.53,
    );

    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.60,
      size.width * 0.31,
      size.height * 0.67,
    );

    path.lineTo(
      size.width * 0.28,
      size.height * 0.72,
    );

    /// DRAW PATH
    canvas.drawPath(path, trackPaint);

    /// TOP POINT
    final topCirclePaint = Paint()
      ..color = const Color(0xffF59E0B)
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
      Offset(
        size.width * 0.72,
        size.height * 0.28,
      ),
      10,
      topCirclePaint,
    );

    /// WHITE INNER
    canvas.drawCircle(
      Offset(
        size.width * 0.72,
        size.height * 0.28,
      ),
      4,
      Paint()..color = Colors.white,
    );

    /// BOTTOM BIG LOCATION
    final bottomOffset = Offset(
      size.width * 0.28,
      size.height * 0.72,
    );

    canvas.drawCircle(
      bottomOffset,
      28,
      Paint()..color = const Color(0xffFF4B3A),
    );

    /// LOCATION ICON
    TextPainter(
      text: const TextSpan(
        text: '📍',
        style: TextStyle(fontSize: 24),
      ),
      textDirection: TextDirection.ltr,
    )
      ..layout()
      ..paint(
        canvas,
        Offset(
          bottomOffset.dx - 12,
          bottomOffset.dy - 16,
        ),
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}