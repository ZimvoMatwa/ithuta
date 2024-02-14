import 'package:flutter/material.dart';
import 'package:ithuta/features/home/presentation/components/tab_bar_button.dart';
import 'package:ithuta/features/home/presentation/pages/today_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  bool select(int index) => index == tabController.index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(),
      ),
      body: Container(
        // margin: const EdgeInsets.only(bottom: 16),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Module Name'),
            Container(
              height: 38,
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(8),
              color: Color(0xFF3C3C3C),
              child: Text(
                'selected module name',
                style: TextStyle(color: Color(0xFFDFDFDF)),
              ),
            ),
            Container(
              height: 29,
              child: TabBar(
                physics: const NeverScrollableScrollPhysics(),
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                labelPadding: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                indicator: null,
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0.0001,
                onTap: (value) => setState(() {}),
                tabs: [
                  TabBarButton(
                    title: 'Today',
                    isSelected: select(0),
                  ),
                  TabBarButton(
                    title: 'This Week',
                    isSelected: select(1),
                  ),
                  TabBarButton(
                    title: 'Monthly',
                    isSelected: select(2),
                  )
                ],
                controller: tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  TodayTab(),
                  Icon(Icons.snowboarding),
                  Icon(Icons.snooze),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
