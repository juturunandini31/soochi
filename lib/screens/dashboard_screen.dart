import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _DashboardTile(
            icon: Icons.location_on,
            label: 'Edit Address',
            onTap: () {
              Navigator.pushNamed(context, '/edit-address');
            },
          ),
          _DashboardTile(
            icon: Icons.person,
            label: 'Profile',
            onTap: () {
              // Add Profile Navigation
            },
          ),
          _DashboardTile(
            icon: Icons.settings,
            label: 'Settings',
            onTap: () {
              // Add Settings Navigation
            },
          ),
          _DashboardTile(
            icon: Icons.logout,
            label: 'Logout',
            onTap: () {
              Navigator.pushReplacementNamed(context, '/signin');
            },
          ),
        ],
      ),
    );
  }
}

class _DashboardTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _DashboardTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.blue),
            const SizedBox(height: 12),
            Text(label, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
