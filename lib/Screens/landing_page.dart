import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CataLiftLandingPage extends StatelessWidget {
  const CataLiftLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0A125A),
      body: Stack(
        children: [
          // Subtle animated background shapes
          Positioned(
            top: -100,
            left: -80,
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.blue.shade900.withValues(alpha: 0.3), Colors.transparent],
                ),
              ),
            ).animate().fadeIn(duration: Duration(seconds: 1)),
          ),
          Positioned(
            bottom: -80,
            right: -60,
            child: AnimatedContainer(
              duration: Duration(seconds: 2),
              curve: Curves.easeInOut,
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.amber.shade400.withValues(alpha: 0.25), Colors.transparent],
                ),
              ),
            ).animate().fadeIn(duration: Duration(milliseconds: 1200), delay: Duration(milliseconds: 200)),
          ),

          // Main content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Animated Logo/Title
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'CATA',
                      style: GoogleFonts.poppins(
                        fontSize: 48,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Text(
                          'LIFT',
                          style: GoogleFonts.poppins(
                            fontSize: 48,
                            color: Colors.white,
                            //fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height:4,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                    .animate()
                    .slideY(begin: -1, end: 0, duration: 700.ms, curve: Curves.easeOut)
                    .fadeIn(duration: 600.ms),

                const SizedBox(height: 32),

                // Animated Hero Headline
                Text(
                  'Empowering Learners. Elevating Futures.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    color: Colors.white.withValues(alpha: 0.95),
                    fontWeight: FontWeight.w600,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 800.ms, delay: 300.ms)
                    .slideY(begin: 0.5, end: 0, duration: 800.ms, curve: Curves.easeOut),

                const SizedBox(height: 18),

                // Animated Subtitle
                Text(
                  'Join CataLift and unlock a world of mentorship, resources, and growth.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.urbanist(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                )
                    .animate()
                    .fadeIn(duration: 800.ms, delay: 600.ms),

                const SizedBox(height: 42),

                // Animated Hero Illustration (replace with your own asset/network image)
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?auto=format&fit=crop&w=600&q=80',
                    height: 180,
                  )
                      .animate()
                      .fadeIn(duration: 900.ms, delay: 800.ms)
                      .scale(begin: const Offset(0.8, 0.8), end: Offset(1, 1), duration: 900.ms, curve: Curves.easeOutBack),
                ),

                const SizedBox(height: 36),

                // Animated Call-to-Action Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade400,
                    foregroundColor: Colors.black87,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 6,
                  ),
                  onPressed: () {
                    Get.offAllNamed('/login');
                  },
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                )
                    .animate()
                    .fadeIn(duration: 800.ms, delay: Duration(seconds: 1))
                    .slideY(begin: 1, end: 0, duration: 800.ms, curve: Curves.easeOut)
                    .shimmer(delay: Duration(milliseconds: 1500), duration: Duration(milliseconds: 1500)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
