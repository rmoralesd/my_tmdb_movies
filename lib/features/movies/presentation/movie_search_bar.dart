import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final moviesSearchTextProvider = StateProvider<String>((ref) {
  return '';
});

class MoviesSearchBar extends ConsumerStatefulWidget {
  const MoviesSearchBar({super.key});

  @override
  ConsumerState<MoviesSearchBar> createState() => _MoviesSearchBarState();
}

class _MoviesSearchBarState extends ConsumerState<MoviesSearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: const BorderRadius.all(Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Row(
            children: [
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search movies',
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    isDense: true,
                  ),
                  onChanged: (text) =>
                      ref.read(moviesSearchTextProvider.notifier).state = text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
