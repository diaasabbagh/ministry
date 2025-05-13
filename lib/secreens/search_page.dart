import 'package:flutter/material.dart';
import 'package:flutter_application_eyman/constant/color.dart';
import 'package:flutter_application_eyman/constant/image.dart';
import 'package:flutter_application_eyman/secreens/result_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: Stack(
        children: [
          SizedBox.expand(
              child: Opacity(
            opacity: 0.4, // لتقليل حدة الصورة
            child: Image.asset(
              AppImageAsset.s,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          )),
          SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(AppImageAsset.logo),
                        radius: 24,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Ministry of Education',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColor.purple,
                        ),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.school, color: AppColor.purple, size: 20),
                    ],
                  ),
                ),
                const Spacer(),
                // النموذج الرئيسي
                Center(
                  child: Card(
                    color: AppColor.backgroundcolor,
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            'Basic Education | 2023 - 2024',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: AppColor.title,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // نوع الشهادة
                          DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.school),
                              labelText: "Certificate Type",
                              border: OutlineInputBorder(),
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'basic',
                                  child: Text('Basic Education')),
                              DropdownMenuItem(
                                  value: 'high', child: Text('High School')),
                            ],
                            onChanged: (_) {},
                          ),
                          const SizedBox(height: 12),
                          // المحافظة
                          DropdownButtonFormField<String>(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.location_city),
                              labelText: "Governorate",
                              border: OutlineInputBorder(),
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'damascus', child: Text('Damascus')),
                              DropdownMenuItem(
                                  value: 'aleppo', child: Text('Aleppo')),
                            ],
                            onChanged: (_) {},
                          ),
                          const SizedBox(height: 12),
                          // رقم الاكتتاب
                          const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.confirmation_number),
                              labelText: 'Registration Number',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          const SizedBox(height: 20),
                          // زر البحث
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const ResultPage(),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.search,
                                color: AppColor.backgroundcolor,
                              ),
                              label: const Text(
                                'Search',
                                style:
                                    TextStyle(color: AppColor.backgroundcolor),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColor.purple,
                                textStyle: const TextStyle(fontSize: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
