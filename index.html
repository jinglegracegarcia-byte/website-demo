import 'dart:math' as math;
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  String _activePage = 'Home';

  late AnimationController _entranceController;
  late AnimationController _floatController;

  @override
  void initState() {
    super.initState();

    _entranceController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..forward();

    _floatController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _entranceController.dispose();
    _floatController.dispose();
    super.dispose();
  }

  bool get isMobile => MediaQuery.of(context).size.width < 768;

  bool get isTablet =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildNavBar(),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _activePage == 'Home'
                    ? _buildHomePage()
                    : _activePage == 'About'
                        ? _buildAboutPage()
                        : _buildContactPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// NAVBAR
  ////////////////////////////////////////////////////////////

  Widget _buildNavBar() {
    return Container(
      height: 75,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F4F4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                'assets/logo.png',
                fit: BoxFit.contain,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.event,
                  color: Color(0xFFE60000),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 28,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          if (!isMobile) ...[
            _navButton('Home'),
            const SizedBox(width: 24),
            _navButton('About'),
            const SizedBox(width: 24),
            _navButton('Contact'),
          ],
          if (isMobile)
            PopupMenuButton<String>(
              icon: const Icon(Icons.menu),
              onSelected: (value) {
                setState(() {
                  _activePage = value;
                });
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'Home',
                  child: Text('Home'),
                ),
                const PopupMenuItem(
                  value: 'About',
                  child: Text('About'),
                ),
                const PopupMenuItem(
                  value: 'Contact',
                  child: Text('Contact'),
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _navButton(String label) {
    final active = _activePage == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          _activePage = label;
        });
      },
      child: Text(
        label,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: active ? const Color(0xFFE60000) : Colors.black,
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// HOME PAGE
  ////////////////////////////////////////////////////////////

  Widget _buildHomePage() {
    return SingleChildScrollView(
      key: const ValueKey('home'),
      child: Column(
        children: [
          _buildHeroSection(),
          const SizedBox(height: 60),
          _buildFeaturesSection(),
          const SizedBox(height: 70),
          _buildFooter(),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// HERO SECTION
  ////////////////////////////////////////////////////////////

  Widget _buildHeroSection() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: isMobile ? 40 : 60,
      ),
      child: Column(
        children: [
          FadeTransition(
            opacity: _entranceController,
            child: Text(
              'A place to design your\nmemories.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 34 : 54,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(height: 40),
          _buildFannedImages(),
          const SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 10 : 80,
            ),
            child: Text(
              'Artists can design their style, and customers can discover and book what they like.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 15 : 18,
                height: 1.6,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 35),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 18,
            runSpacing: 18,
            children: [
              ////////////////////////////////////////////////////////////
              /// PLAY STORE BUTTON
              ////////////////////////////////////////////////////////////

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFB71C1C),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 38,
                      height: 38,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.play_arrow,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Available on the',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          'Play Store',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              ////////////////////////////////////////////////////////////
              /// READ MORE
              ////////////////////////////////////////////////////////////

              GestureDetector(
                onTap: () {
                  setState(() {
                    _activePage = 'About';
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 34,
                    vertical: 14,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text(
                    'Read More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// RESPONSIVE FANNED IMAGES
  ////////////////////////////////////////////////////////////

  Widget _buildFannedImages() {
    final width = MediaQuery.of(context).size.width;

    final cardWidth = isMobile ? 85.0 : 140.0;
    final cardHeight = isMobile ? 130.0 : 210.0;

    final spacing = isMobile ? 45.0 : 90.0;

    final items = [
      {
        'image': 'assets/bgdisco.jpg',
        'angle': -18.0,
      },
      {
        'image': 'assets/bgbday.jpg',
        'angle': -10.0,
      },
      {
        'image': 'assets/bgwedding.jpg',
        'angle': -3.0,
      },
      {
        'image': 'assets/bggrad.jpg',
        'angle': 5.0,
      },
      {
        'image': 'assets/bgprom.jpg',
        'angle': 14.0,
      },
    ];

    return SizedBox(
      height: isMobile ? 180 : 320,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(items.length, (index) {
          final item = items[index];

          final angle = (item['angle'] as double) * math.pi / 180;

          final offset = (index - (items.length / 2)) * spacing;

          return AnimatedBuilder(
            animation: _floatController,
            builder: (context, child) {
              final floatY = math.sin(
                    (_floatController.value + index) * math.pi,
                  ) *
                  10;

              return Positioned(
                left: (width / 2) + offset - (cardWidth / 2),
                top: 20 + floatY,
                child: Transform.rotate(
                  angle: angle,
                  child: child,
                ),
              );
            },
            child: _AnimatedCard(
              image: item['image'] as String,
              width: cardWidth,
              height: cardHeight,
            ),
          );
        }),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// FEATURES
  ////////////////////////////////////////////////////////////

  Widget _buildFeaturesSection() {
    final features = [
      {
        'icon': Icons.brush,
        'title': 'Design',
        'desc':
            'Artists create stunning event decorations tailored to your style.',
      },
      {
        'icon': Icons.search,
        'title': 'Discover',
        'desc': 'Browse hundreds of unique event designs for any occasion.',
      },
      {
        'icon': Icons.calendar_today,
        'title': 'Book',
        'desc': 'Easily book your favorite event style with just a few taps.',
      },
    ];

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 60,
      ),
      child: Column(
        children: [
          Text(
            'How it works',
            style: TextStyle(
              fontSize: isMobile ? 28 : 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),
          isMobile
              ? Column(
                  children: features.map((f) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: _HoverFeatureCard(
                        icon: f['icon'] as IconData,
                        title: f['title'] as String,
                        desc: f['desc'] as String,
                      ),
                    );
                  }).toList(),
                )
              : Row(
                  children: features.map((f) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: _HoverFeatureCard(
                          icon: f['icon'] as IconData,
                          title: f['title'] as String,
                          desc: f['desc'] as String,
                        ),
                      ),
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// ABOUT PAGE
  ////////////////////////////////////////////////////////////

  Widget _buildAboutPage() {
    return SingleChildScrollView(
      key: const ValueKey('about'),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 70,
          vertical: 60,
        ),
        child: Column(
          children: [
            Text(
              'About Eventostyle',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 34 : 50,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFB71C1C),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Eventostyle is an event planning and booking application designed to help users easily organize and manage events.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 16 : 22,
                height: 1.7,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 50),
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _aboutCard(
                  Icons.people,
                  'For Customers',
                  'Find and book professional event decorators.',
                ),
                _aboutCard(
                  Icons.palette,
                  'For Artists',
                  'Showcase your decoration designs.',
                ),
                _aboutCard(
                  Icons.verified,
                  'Our Mission',
                  'To make every event unforgettable.',
                ),
              ],
            ),
            const SizedBox(height: 60),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _aboutCard(
    IconData icon,
    String title,
    String desc,
  ) {
    return Container(
      width: isMobile ? double.infinity : 320,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 14,
          ),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: const Color(0xFFFFEBEE),
            child: Icon(
              icon,
              color: const Color(0xFFE60000),
            ),
          ),
          const SizedBox(height: 18),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            desc,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey[700],
              height: 1.6,
            ),
          )
        ],
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// CONTACT PAGE
  ////////////////////////////////////////////////////////////

  Widget _buildContactPage() {
    return SingleChildScrollView(
      key: const ValueKey('contact'),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: isMobile ? 34 : 46,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFB71C1C),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "We'd love to hear from you.",
              style: TextStyle(
                fontSize: isMobile ? 15 : 18,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 40),
            Container(
              width: isMobile ? double.infinity : 500,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    blurRadius: 16,
                  ),
                ],
              ),
              child: Column(
                children: [
                  _contactField('Name'),
                  const SizedBox(height: 18),
                  _contactField('Email'),
                  const SizedBox(height: 18),
                  _contactField('Message', maxLines: 5),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE60000),
                        padding: const EdgeInsets.symmetric(
                          vertical: 16,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: const Text(
                        'Send Message',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 60),
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  Widget _contactField(
    String hint, {
    int maxLines = 1,
  }) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
  /// FOOTER
  ////////////////////////////////////////////////////////////

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 60,
        vertical: 34,
      ),
      color: const Color(0xFF1A1A1A),
      child: Column(
        children: [
          isMobile
              ? Column(
                  children: [
                    const Text(
                      'Eventostyle',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eventostyle',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'A place to design your memories.',
                          style: TextStyle(
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        _footerLink('Home'),
                        _footerLink('About'),
                        _footerLink('Contact'),
                      ],
                    )
                  ],
                ),
          const SizedBox(height: 24),
          const Divider(color: Colors.white24),
          const SizedBox(height: 16),
          const Text(
            '© 2025 Eventostyle. All rights reserved.',
            style: TextStyle(
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }

  Widget _footerLink(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _activePage = label;
          });
        },
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// ANIMATED CARD
////////////////////////////////////////////////////////////

class _AnimatedCard extends StatefulWidget {
  final String image;
  final double width;
  final double height;

  const _AnimatedCard({
    required this.image,
    required this.width,
    required this.height,
  });

  @override
  State<_AnimatedCard> createState() => _AnimatedCardState();
}

class _AnimatedCardState extends State<_AnimatedCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 220),
    );
  }

  // ✅ FIX: dispose controller to prevent memory leak
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final scale = 1 + (_controller.value * 0.08);

          return Transform.scale(
            scale: scale,
            child: child,
          );
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.18),
                blurRadius: 16,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// FEATURE CARD
////////////////////////////////////////////////////////////

class _HoverFeatureCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String desc;

  const _HoverFeatureCard({
    required this.icon,
    required this.title,
    required this.desc,
  });

  @override
  State<_HoverFeatureCard> createState() => _HoverFeatureCardState();
}

class _HoverFeatureCardState extends State<_HoverFeatureCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  // ✅ FIX: dispose controller to prevent memory leak
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _controller.forward(),
      onExit: (_) => _controller.reverse(),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, -8 * _controller.value),
            child: child,
          );
        },
        child: Container(
          padding: const EdgeInsets.all(26),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 14,
              ),
            ],
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundColor: const Color(0xFFFFEBEE),
                child: Icon(
                  widget.icon,
                  size: 34,
                  color: const Color(0xFFE60000),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                widget.title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
