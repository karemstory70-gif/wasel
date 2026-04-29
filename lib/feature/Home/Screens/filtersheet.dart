import 'package:flutter/material.dart';

class FilterSheet extends StatefulWidget {
  const FilterSheet({super.key});

  @override
  State<FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<FilterSheet> {
  // ✅ المتغيرات اللي بتخزى الاختيارات
  int selectedDeliveryTime = 0; // 0 = 10-15 min
  int selectedPricing = 1; // 1 = $$
  int selectedRating = 4; // 4 نجوم

  bool offerDelivery = true;
  bool offerPickUp = false;
  bool offerOffer = false;
  bool onlinePayment = false;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewPadding.bottom;

    return Container(
      height: MediaQuery.of(context).size.height * 0.82,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: Column(
        children: [
          // ── الهاندل ──
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 4),
            child: Container(
              width: 42,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFF3A3F55),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),

          // ── الهيدر ──
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            child: Row(
              children: [
                const Text(
                  'Filter your search',
                  style: TextStyle(
                    color: Color(0xFF181C2E),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xFFECF0F4),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFF8A8FA8),
                      size: 22,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),
          ),
          // ── المحتوى القابل للتمرير ──
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _SectionTitle(title: 'OFFERS'),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      _ToggleChip(
                        label: 'Delivery',
                        isSelected: offerDelivery,
                        onTap: () =>
                            setState(() => offerDelivery = !offerDelivery),
                      ),
                      _ToggleChip(
                        label: 'Pick Up',
                        isSelected: offerPickUp,
                        onTap: () => setState(() => offerPickUp = !offerPickUp),
                      ),
                      _ToggleChip(
                        label: 'Offer',
                        isSelected: offerOffer,
                        onTap: () => setState(() => offerOffer = !offerOffer),
                      ),
                    ],
                  ),

                  // ──── Online Payment ────
                  const SizedBox(height: 18),
                  _SwitchTile(
                    label: 'Online payment available',
                    value: onlinePayment,
                    onChanged: (v) => setState(() => onlinePayment = v),
                  ),

                  const SizedBox(height: 24),

                  // ──── DELIVERY TIME ────
                  _SectionTitle(title: 'DELIVER TIME'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _SelectableChip(
                        label: '10 - 15 min',
                        isSelected: selectedDeliveryTime == 0,
                        onTap: () => setState(() => selectedDeliveryTime = 0),
                      ),
                      const SizedBox(width: 10),
                      _SelectableChip(
                        label: '20 min',
                        isSelected: selectedDeliveryTime == 1,
                        onTap: () => setState(() => selectedDeliveryTime = 1),
                      ),
                      const SizedBox(width: 10),
                      _SelectableChip(
                        label: '30 min',
                        isSelected: selectedDeliveryTime == 2,
                        onTap: () => setState(() => selectedDeliveryTime = 2),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ──── PRICING ────
                  _SectionTitle(title: 'PRICING'),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      _SelectableChip(
                        label: '\$',
                        isSelected: selectedPricing == 0,
                        onTap: () => setState(() => selectedPricing = 0),
                      ),
                      const SizedBox(width: 10),
                      _SelectableChip(
                        label: '\$\$',
                        isSelected: selectedPricing == 1,
                        onTap: () => setState(() => selectedPricing = 1),
                      ),
                      const SizedBox(width: 10),
                      _SelectableChip(
                        label: '\$\$\$',
                        isSelected: selectedPricing == 2,
                        onTap: () => setState(() => selectedPricing = 2),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ──── RATING ────
                  _SectionTitle(title: 'RATING'),
                  const SizedBox(height: 12),
                  _StarRating(
                    rating: selectedRating,
                    onChanged: (r) => setState(() => selectedRating = r),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // ── زر الفلتر ──
          Container(
            padding: EdgeInsets.fromLTRB(24, 16, 24, 16 + bottomInset),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: Color(0xFF2A2E42))),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // هنا تقدر تطبق الفلتر
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFF7A2F),
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 0.5,
                  ),
                ),
                child: const Text('FILTER'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ============================================
// ويدجتات مساعدة
// ============================================

/// عنوان القسم
class _SectionTitle extends StatelessWidget {
  final String title;
  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color(0xFF32343E),
        fontWeight: FontWeight.w700,
        fontSize: 13,
        letterSpacing: 1.2,
      ),
    );
  }
}

/// تشيب التوج/الإلغاء (للأوفيرز)
class _ToggleChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _ToggleChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF7A2F) : const Color(0xFFEDEDED),
          borderRadius: BorderRadius.circular(33),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFFF7A2F)
                : const Color.fromARGB(127, 53, 59, 82),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF8A8FA8),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

/// تشيب اختيار واحد بس (للوقت والسعر)
class _SelectableChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _SelectableChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFF7A2F) : const Color(0xFFEDEDED),
          borderRadius: BorderRadius.circular(33),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFFF7A2F)
                : const Color.fromARGB(127, 53, 59, 82),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xFF464E57),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

/// سويتش الأونلاين بايمنت
class _SwitchTile extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _SwitchTile({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFFC8CBDA),
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ),
        Switch(
          value: value,
          onChanged: onChanged,
          activeColor: const Color(0xFFFF7A2F),
          activeTrackColor: const Color(0xFFFF7A2F).withOpacity(0.35),
          inactiveThumbColor: const Color(0xFF5A5F78),
          inactiveTrackColor: const Color(0xFF2A2E42),
          splashRadius: 20,
        ),
      ],
    );
  }
}

/// نجوم التقييم
class _StarRating extends StatelessWidget {
  final int rating;
  final ValueChanged<int> onChanged;

  const _StarRating({required this.rating, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        final isFilled = index < rating;
        return GestureDetector(
          onTap: () => onChanged(index + 1),
          child: Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFFFFFFFF),
                border: Border.all(
                  color: const Color.fromARGB(127, 53, 59, 82),
                ),
              ),
              child: Icon(
                isFilled ? Icons.star_rounded : Icons.star_border_rounded,
                color: isFilled
                    ? const Color(0xFFFFC857)
                    : const Color(0xFF3A3F55),
                size: 30,
              ),
            ),
          ),
        );
      }),
    );
  }
}
