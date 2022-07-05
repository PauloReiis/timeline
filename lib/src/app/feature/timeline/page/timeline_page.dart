import 'package:flutter/material.dart';
import 'package:timeline/src/app/feature/timeline/controller/timeline_controller.dart';
import 'package:timeline/src/app/feature/timeline/widgets/post_elements_widget.dart';
import 'package:timeline/src/core/constants/timeline_constants.dart';
import 'package:provider/provider.dart';

class TimelinePage extends StatefulWidget {
  const TimelinePage({Key? key}) : super(key: key);

  @override
  State<TimelinePage> createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  late final TimelineController controller;

  @override
  void initState() {
    controller = context.read<TimelineController>();
    controller.init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(TimelineConstants.posts)),
      body: Consumer<TimelineController>(
        builder: (context, controller, child) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PostElementsWidget(),
                PostElementsWidget(),
                PostElementsWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
