import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wizdom_app/components/appbar_list_item.dart';
import 'package:wizdom_app/components/custom_button.dart';
import 'package:wizdom_app/utils/enums/appbar_action.dart';
import 'package:wizdom_app/utils/enums/bottom_nav_items.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  BottomNavItems currentItem = BottomNavItems.home;

  @override
  Widget build(BuildContext context) {
    final json = [
      {
        "value": "13",
        "action": "stories",
      },
      {
        "value": "2",
        "action": "streak",
      },
      {
        "value": "711",
        "action": "coins",
      },
      {
        "action": "gift",
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: json
              .where((e) =>
                  e['action'] != null &&
                  AppbarAction.values
                      .map((action) => action.name)
                      .contains(e['action']))
              .map(
            (e) {
              return Flexible(
                flex: 1,
                child: AppbarListItem(
                  action: AppbarAction.values.byName(e['action'] ?? 'coins'),
                  value: e['value'],
                  onPressed: () {
                    _showDialog(e['action']!);
                  },
                ),
              );
            },
          ).toList(),
        ),
      ),
      body: Column(
        children: [
          Divider(
            height: 1,
          ),
          Expanded(
            child: currentItem.screen ??
                Center(
                  child: Text(currentItem.value),
                ),
          ),
        ],
      ),
      bottomNavigationBar: _bottomBar(context),
    );
  }

  Widget _bottomBar(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: _updateCurrentIndex,
      type: BottomNavigationBarType.fixed,
      currentIndex: BottomNavItems.values.indexOf(currentItem),
      items: BottomNavItems.values.map(
        (e) {
          return BottomNavigationBarItem(
            icon: Container(
              decoration: currentItem != e
                  ? null
                  : BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(
                          width: 2,
                          color: Theme.of(context).colorScheme.primary),
                      color: Theme.of(context)
                          .colorScheme
                          .primaryFixedDim
                          .withValues(alpha: 0.1),
                    ),
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(e.icon),
            ),
            label: e.value,
          );
        },
      ).toList(),
    );
  }

  void _showDialog(String action) {
    ScaffoldMessenger.of(context).clearSnackBars();
    if (action != AppbarAction.gift.name) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Pending...')));
      return;
    }
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 22,
            children: [
              Image.asset('assets/images/gift.png'),
              Text(
                'Here is a special gift just for you!',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                textAlign: TextAlign.center,
              ),
              CustomButton(btnText: 'SHOW ME'),
            ],
          ),
        ),
      ),
    );
  }

  void _updateCurrentIndex(value) {
    currentItem = BottomNavItems.values[value];
    setState(() {});
  }
}
