import 'package:flutter/material.dart';

class TodayTab extends StatelessWidget {
  const TodayTab({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          collapsedHeight: 0,
          toolbarHeight: 0,
          // backgroundColor: Colors.yellow,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              padding: const EdgeInsets.only(top: 8),
              height: 420,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Chapters',
                    style: TextStyle(
                        color: Color(0xFF4E4E4E),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: '1',
                      style: TextStyle(
                          color: Color(0xFF343434),
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                            text: '/2',
                            style: TextStyle(
                                color: Color(0xFF343434),
                                fontSize: 16,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      height: 250,
                      width: 250,
                      child: const CircularProgressIndicator(
                        value: .7,
                        strokeWidth: 34,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Container(
              color: const Color(0xFFF2F3F7),
              height: 40,
              child: const Center(
                child: Text(
                  'Chapter Lessons 3/4',
                  style: TextStyle(
                      color: Color(0xFF656669),
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          pinned: true,
          expandedHeight: 420,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => Container(
              height: 80,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              margin: const EdgeInsets.only(top: 16),
              decoration: BoxDecoration(
                color: index > 0
                    ? const Color(0xDF0AB990)
                    : const Color(0xFFDFDFDF),
                gradient: index > 0
                    ? const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFF1DAC70), Color(0xFF0AB98F)])
                    : null,
                border: Border.all(
                  width: 1,
                  color:
                      index > 0 ? Colors.transparent : const Color(0xFF626262),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'blood honder $index',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: index > 0 ? Colors.white : Colors.black,
                    ),
                  ),
                  Text(
                    'Lesson brief description or what mainly concerns\nThis is an example of incomplete lesson',
                    style: TextStyle(
                      color: index > 0
                          ? const Color(0xFFF1F1F1)
                          : const Color(0xFF3C3C3C),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
