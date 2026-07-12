import 'package:flutter/material.dart';


class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // تحديد الألوان المستخدمة في التصميم
    const Color backColor = Color(0xff516375); // لون الخلفية الداكن
    const Color cardColor = Colors.white; // لون البطاقة البيضاء
    const Color avatarColor = Color(0xff99a8b8); // لون الأفاتار (الرمادي)
    const Color textColorPrimary = Colors.black; // لون النص الأساسي (الاسم)
    const Color textColorSecondary = Colors.grey; // لون النص الثانوي (جاري الاتصال)
    const Color activeIconColor = Color(0xff516375); // لون الأيقونات المفعلة
    const Color deactiveIconColor = Colors.grey; // لون الأيقونات غير المفعلة
    const Color circleColorEndCall = Color(0xffff3b30); // لون زر إنهاء المكالمة
    const Color circleColorEndCallOut = Color(0x33ff3b30); // لون حلقة زر إنهاء المكالمة الخارجية

    return Scaffold(
      backgroundColor: backColor, // تعيين لون الخلفية
      body: Stack(
        // استخدام Stack لوضع البطاقة البيضاء فوق الخلفية الداكنة
        children: [
          // البطاقة البيضاء السفلية
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            // تحديد ارتفاع البطاقة (تقريباً نصف الشاشة أو أكثر قليلاً)
            height: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              decoration: BoxDecoration(
                color: cardColor, // لون البطاقة
                // إضافة حواف مستديرة للأعلى
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              padding: const EdgeInsets.all(20.0), // حشوة داخلية
              child: Column(
                // محاذاة العناصر في المنتصف عمودياً
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // الأفاتار (الصورة الشخصية)
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: avatarColor, // لون الأفاتار
                      shape: BoxShape.circle, // جعل الشكل دائري
                    ),
                  ),
                  const SizedBox(height: 20), // مسافة عمودية
                  // اسم الشخص
                  const Text(
                    'Robert Fox',
                    style: TextStyle(
                      color: textColorPrimary, // لون الاسم
                      fontWeight: FontWeight.bold, // خط عريض
                      fontSize: 22, // حجم الخط
                    ),
                  ),
                  const SizedBox(height: 8), // مسافة عمودية
                  // حالة الاتصال
                  const Text(
                    'Connecting........',
                    style: TextStyle(
                      color: textColorSecondary, // لون النص الثانوي
                      fontSize: 16, // حجم الخط
                    ),
                  ),
                  const SizedBox(height: 40), // مسافة عمودية
                  // صف أزرار التحكم
                  Row(
                    // توزيع الأزرار بشكل متساوي في الصف
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // زر الميكروفون
                      _buildControlButton(
                        icon: Icons.mic_off,
                        color: activeIconColor,
                        onTap: () {},
                      ),
                      // زر إنهاء المكالمة
                      _buildEndCallButton(
                        icon: Icons.call_end,
                        color: circleColorEndCall,
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      // زر المكبر الصوت
                      _buildControlButton(
                        icon: Icons.volume_up,
                        color: activeIconColor,
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // دالة مساعدة لإنشاء أزرار التحكم (ميكروفون ومكبر صوت)
  Widget _buildControlButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey[200], // لون الخلفية للأزرار الرمادية
          shape: BoxShape.circle, // جعل الشكل دائري
        ),
        child: Icon(
          icon,
          color: color, // لون الأيقونة
          size: 30, // حجم الأيقونة
        ),
      ),
    );
  }

  // دالة مساعدة لإنشاء زر إنهاء المكالمة (أحمر)
  Widget _buildEndCallButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: const BoxDecoration(
          color: Color(0x33ff3b30), // اللون الخارجي الفاتح (شفاف جزئياً)
          shape: BoxShape.circle, // جعل الشكل دائري
        ),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: color, // اللون الأساسي لزر إنهاء المكالمة (أحمر)
            shape: BoxShape.circle, // جعل الشكل دائري
          ),
          child: Icon(
            icon,
            color: Colors.white, // لون الأيقونة (أبيض)
            size: 35, // حجم الأيقونة
          ),
        ),
      ),
    );
  }
}