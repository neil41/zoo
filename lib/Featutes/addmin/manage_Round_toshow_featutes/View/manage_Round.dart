import 'package:flutter/material.dart';
import 'package:managethezoo/Featutes/addmin/manage_Round_toshow_featutes/Models/Round_model.dart';
import 'package:managethezoo/Featutes/addmin/manage_Round_toshow_featutes/View/component/manage_time.dart';

class Round extends StatefulWidget {
  const Round({super.key});

  @override
  State<Round> createState() => _RoundState();
}

class _RoundState extends State<Round> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            TabBar(
              indicatorWeight: 7,
              controller: tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicatorColor: const Color.fromARGB(255, 4, 204, 17),
              //     dividerColor: Colors.transparent,
              tabs: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.shortestSide * 0.04)),
                  width: double.infinity,
                  child: const Tab(
                    text: 'Round 1',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent[400],
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.shortestSide * 0.04)),
                  width: double.infinity,
                  child: const Tab(
                    text: 'Round 2',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.shortestSide * 0.04)),
                  width: double.infinity,
                  child: const Tab(
                    text: 'Round 3',
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * 0.78378,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  ManageTime(
                    Adata: RoundData.Round1,
                  ),
                  ManageTime(
                    Adata: RoundData.Round2,
                  ),
                  ManageTime(
                    Adata: RoundData.Round3,
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
