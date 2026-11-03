import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const _heroImage =
      'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'WOW Pizza',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Hot, fresh and wow-worthy',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: AspectRatio(
                      aspectRatio: 4 / 3,
                      child: Image.network(
                        _heroImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          color: theme.colorScheme.primaryContainer,
                          child: Icon(
                            Icons.local_pizza,
                            size: 96,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  const _NavButton(label: 'Menu', route: '/menu'),
                  const SizedBox(height: 12),
                  const _NavButton(label: 'About Us', route: '/about'),
                  const SizedBox(height: 12),
                  const _NavButton(label: 'Contact', route: '/contact'),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, '/people'),
                    child: const Text('Meet Our People'),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        tooltip: 'Twitter/X',
                        iconSize: 36,
                        icon: const Icon(Icons.close),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/twitter'),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        tooltip: 'Facebook',
                        iconSize: 36,
                        icon: const Icon(Icons.facebook),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/facebook'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({required this.label, required this.route});

  final String label;
  final String route;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: () => Navigator.pushNamed(context, route),
      child: Text(label),
    );
  }
}
