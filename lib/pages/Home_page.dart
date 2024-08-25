import 'package:chayeshop/Widget/HomeBottomBar.dart';
import 'package:chayeshop/Widget/item_widget.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tapController;

  @override
  void initState() {
    _tapController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tapController.addListener(_handleTapSelection);
    super.initState();
  }

  _handleTapSelection() {
    if (_tapController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "It's a great Day for Coffee",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              // Search bar
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xff404040),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Find your Coffee",
                      hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.5), fontSize: 20),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white.withOpacity(0.5),
                      )),
                ),
              ),
              TabBar(
                controller: _tapController,
                labelColor: Color(0xfff26716),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                tabAlignment: TabAlignment.start,
                dividerColor: Color(0xFF212325),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xfff26716),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle: TextStyle(fontSize: 18),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: const [
                  Tab(text: "Hot Coffee"),
                  Tab(text: "Cold Coffee"),
                  Tab(text: "Cappuccino"),
                  Tab(text: "Americano"),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  controller: _tapController,
                  children: [
                    ListView(
                      children: [ItemWidget()],
                    ),
                    ListView(
                      children: [ItemWidget()],
                    ),
                    ListView(
                      children: [ItemWidget()],
                    ),
                    ListView(
                      children: [ItemWidget()],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
