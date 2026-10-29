import 'package:flutter/material.dart';

class Pizza {
  const Pizza({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  final String name;
  final String description;
  final double price;
  final String imageUrl;
}

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.pizza});

  final Pizza pizza;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: colors.surfaceContainerLowest,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: 136,
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: Image.network(
                pizza.imageUrl,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => ColoredBox(
                  color: colors.secondaryContainer,
                  child: Icon(
                    Icons.local_pizza_outlined,
                    size: 44,
                    color: colors.onSecondaryContainer,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pizza.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      pizza.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: colors.onSurfaceVariant,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      'RM ${pizza.price.toStringAsFixed(2)}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: colors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
