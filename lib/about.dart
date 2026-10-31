import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  // WOW Pizza Theme Colors
  static const Color primaryRed = Color(0xFFE52529);
  static const Color darkColor = Color(0xFF252525);
  static const Color backgroundColor = Color(0xFFF8F8F8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'About Us',
          style: TextStyle(color: darkColor, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: darkColor),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HERO SECTION
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'OUR STORY',
                    style: TextStyle(
                      color: primaryRed,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'WOW ',
                          style: TextStyle(color: darkColor),
                        ),
                        TextSpan(
                          text: 'Pizza',
                          style: TextStyle(color: primaryRed),
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Bringing people together, one delicious slice at a time.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      'assets/images/pizzawow.jpg',
                      height: 210,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 210,
                          color: Colors.orange.shade100,
                          child: const Center(
                            child: Icon(
                              Icons.local_pizza,
                              size: 70,
                              color: primaryRed,
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'A Little About Us',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: darkColor,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'WOW Pizza was created with one simple idea: '
                    'great pizza makes every moment better. '
                    'We believe that food is more than just a meal. '
                    'It is a reason to gather, laugh, and create memories '
                    'with the people who matter most.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.7,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            // OUR PROMISE SECTION
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: PromiseItem(
                      icon: Icons.favorite,
                      title: 'Our Passion',
                      description: 'Made with love and passion in every slice.',
                    ),
                  ),
                  Expanded(
                    child: PromiseItem(
                      icon: Icons.eco,
                      title: 'Freshness',
                      description: 'Fresh ingredients for amazing flavours.',
                    ),
                  ),
                  Expanded(
                    child: PromiseItem(
                      icon: Icons.thumb_up,
                      title: 'Our Promise',
                      description: 'Quality and happiness in every bite.',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // JOY OF EVERY SLICE
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFFFFEEEE),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/pizzasotori.jpg',
                      height: 170,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 170,
                          color: Colors.orange.shade100,
                          child: const Icon(
                            Icons.local_pizza,
                            size: 65,
                            color: primaryRed,
                          ),
                        );
                      },
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    'The Joy of Every Slice',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: primaryRed,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'At WOW Pizza, every pizza tells a story. '
                    'Whether it is a family dinner, a celebration with '
                    'friends, or simply treating yourself, we make every '
                    'occasion more special with delicious pizza.',
                    style: TextStyle(
                      fontSize: 14,
                      height: 1.7,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // EXPERIENCE SECTION
            const Center(
              child: Column(
                children: [
                  Text(
                    'The WOW Experience',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: darkColor,
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Discover what makes every visit to WOW Pizza special.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  ExperienceCard(
                    icon: Icons.restaurant,
                    title: 'Freshly Prepared',
                    description:
                        'Every pizza is prepared with carefully selected '
                        'ingredients to bring you delicious flavours and '
                        'a satisfying experience.',
                  ),

                  const SizedBox(height: 12),

                  ExperienceCard(
                    icon: Icons.local_dining,
                    title: 'Something for Everyone',
                    description:
                        'From classic favourites to exciting new flavours, '
                        'there is always something delicious waiting '
                        'for everyone at WOW Pizza.',
                  ),

                  const SizedBox(height: 12),

                  ExperienceCard(
                    icon: Icons.delivery_dining,
                    title: 'Made for Every Moment',
                    description:
                        'Enjoy your favourite pizza during family gatherings, '
                        'parties, celebrations, or a relaxing day at home.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // FOOTER SECTION
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: darkColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      color: primaryRed,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.local_pizza,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),

                  const SizedBox(width: 15),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'WOW Pizza',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          'Good food. Great moments. '
                          'Unforgettable pizza.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          'Made with love, served with WOW!',
                          style: TextStyle(
                            color: Color(0xFFFF6B6B),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

// PROMISE ITEM WIDGET
class PromiseItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const PromiseItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: AboutPage.primaryRed, size: 28),

        const SizedBox(height: 10),

        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
        ),

        const SizedBox(height: 7),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.black54,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}

// EXPERIENCE CARD WIDGET
class ExperienceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const ExperienceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFFFEEEE),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: AboutPage.primaryRed, size: 25),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AboutPage.primaryRed,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    height: 1.6,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
