import 'package:eventostyle/setting_screen.dart';
import 'package:eventostyle/profile_screen.dart';
import 'package:eventostyle/design_list_screen.dart';
import 'package:eventostyle/feedback_screen.dart';
import 'package:eventostyle/booking_history_screen.dart';
import 'package:eventostyle/favorites_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'favorites_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static int _lastSelectedIndex = 0;

  int _selectedIndex = _lastSelectedIndex;

  late TextEditingController _searchController;
  List<Map<String, String>> _filteredDecorations = [];

  // ✅ Replace this with your real website URL
  static const String _websiteUrl =
      ' https://jinglegracegarcia-byte.github.io/website-demo/';
      

  final List<Map<String, String>> _decorations = [
    {
      "title": "Disco Party",
      "category": "Disco",
      "description": "Designed to dazzle. Styled to celebrate.",
      "image": "assets/bgdisco.jpg",
    },
    {
      "title": "Elegant Wedding",
      "category": "Wedding",
      "description": "Your dream wedding, styled perfectly.",
      "image": "assets/bgwedding.jpg",
    },
    {
      "title": "Birthday",
      "category": "Birthday",
      "description": "Turning giggles into celebrations.",
      "image": "assets/bgbday.jpg",
    },
    {
      "title": "Graduation",
      "category": "Graduation",
      "description": "Celebrate every hard-earned victory.",
      "image": "assets/bggrad.jpg",
    },
    {
      "title": "Prom Night",
      "category": "Prom Night",
      "description": "A night of sparkle and memories.",
      "image": "assets/bgprom.jpg",
    },
    {
      "title": "Meeting Conference",
      "category": "Meetings",
      "description": "We design spaces where decisions happen.",
      "image": "assets/bgmeet.jpg",
    },
  ];

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _filteredDecorations = _decorations;
    _searchController.addListener(_filterDecorations);
  }

  void _filterDecorations() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredDecorations = _decorations.where((item) {
        return item["title"]!.toLowerCase().contains(query) ||
            item["category"]!.toLowerCase().contains(query) ||
            item["description"]!.toLowerCase().contains(query);
      }).toList();
    });
  }

  // ✅ Opens URL in the device browser
  Future<void> _launchWebsite() async {
    final Uri uri = Uri.parse(_websiteUrl);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Could not open the website. Please try again.'),
            backgroundColor: Color(0xFFC62828),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _lastSelectedIndex = index;
    });

    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const BookingHistoryScreen()),
        );
        break;

      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                FavoritesScreen(favorites: FavoritesManager.favorites),
          ),
        );
        break;

      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _headerSection(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                child: Text(
                  "Decorations",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              _bannerCard(context),
              _decorationsGrid(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _customBottomNavBar(),
    );
  }

  Widget _bannerCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFC62828),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Visit our website for more inspiration!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  // ✅ Now opens the real website in the browser
                  onPressed: _launchWebsite,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFFC62828),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Go to Landing Page →'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.open_in_new, color: Colors.white70, size: 28),
        ],
      ),
    );
  }

  Widget _headerSection() {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28)),
        image: DecorationImage(
          image: AssetImage("assets/disco6.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(28),
          ),
          color: Colors.black.withOpacity(0.4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SizedBox(
                height: 48,
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: "Search for decorations...",
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SettingsScreen()),
                );
              },
              child: _circleIcon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circleIcon(IconData icon) {
    return CircleAvatar(
      radius: 18,
      backgroundColor: Colors.white,
      child: Icon(icon, color: const Color(0xFFE60000)),
    );
  }

  Widget _decorationsGrid() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: _filteredDecorations.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 10,
          childAspectRatio: 0.68,
        ),
        itemBuilder: (context, index) {
          final item = _filteredDecorations[index];

          return DecorationCard(
            title: item["title"]!,
            description: item["description"]!,
            image: item["image"]!,
            category: item["category"]!,
          );
        },
      ),
    );
  }

  Widget _customBottomNavBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home, "Home", 0),
          _navItem(Icons.calendar_today, "My Bookings", 1),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FeedbackScreen()),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: const BoxDecoration(
                color: Color(0xFFE60000),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          ),
          _navItem(Icons.favorite, "Favorites", 3),
          _navItem(Icons.person_outline, "Profile", 4),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final selected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedScale(
            scale: selected ? 1.1 : 1.0,
            duration: const Duration(milliseconds: 200),
            child: Icon(
              icon,
              size: 26,
              color: selected ? const Color(0xFFE60000) : Colors.grey,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              color: selected ? const Color(0xFFE60000) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////
/// DECORATION CARD
////////////////////////////////////////////////////////////

class DecorationCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final String category;

  const DecorationCard({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DesignListScreen(category: category),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey[300]!, width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                height: 125,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(fontSize: 11, color: Colors.grey[600]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE60000),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "See More",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
