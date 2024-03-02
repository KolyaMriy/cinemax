import 'package:flutter/material.dart';
import 'package:ui_kit/theme/color_scheme.dart';
import 'package:ui_kit/theme/theme_context_extension.dart';

class GenreList extends StatefulWidget {
  const GenreList({super.key});

  @override
  State<GenreList> createState() => _GenreListState();
}

class _GenreListState extends State<GenreList> {
  var currentGenre = 0;
  final listGenre = [
    'Action',
    'Adventure'
        'Comedy'
        'Horror',
    'Drama'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          itemCount: listGenre.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentGenre = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: currentGenre == index
                        ? PrimaryColor.soft.withOpacity(0.7)
                        : Colors.transparent,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: Center(
                      child: IntrinsicWidth(
                        stepWidth: 80,
                        child: Text(
                          listGenre[index],
                          textAlign: TextAlign.center,
                          style: context.textStyle.h5.copyWith(
                            color: currentGenre == index
                                ? PrimaryColor.blueAccent
                                : TextColor.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
