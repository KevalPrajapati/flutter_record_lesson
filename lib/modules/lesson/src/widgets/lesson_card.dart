import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_record_lesson/core/widgets/BorderContainer.dart';
import 'package:flutter_record_lesson/modules/play_lesson/index.dart';
import 'package:flutter_record_lesson/modules/record_lesson/models/my_event.dart';

import 'category_header.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;

  LessonCard(this.lesson);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PlayLessonPage(
              lessonId: lesson.id,
            ),
          ),
        );
      },
      child: BorderContainer(
        child: Container(
          child: Column(
            children: [
              CategoryHeader(lesson),
              Container(
                height: MediaQuery.of(context).size.height / 5.5,
                child: lesson.images == null
                    ? Container()
                    : CachedNetworkImage(
                        imageUrl: lesson.images[0],
                      ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "${lesson.name ?? "---"}",
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
