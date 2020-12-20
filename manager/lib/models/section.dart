import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:manager/screens/admin_screen.dart';
import 'package:manager/screens/account_screen.dart';
import 'package:manager/screens/customer_analytics_screen.dart';
import 'package:manager/screens/life_cycle_screen.dart';
import 'package:manager/screens/live_reports_screen.dart';
import 'package:manager/screens/setting_screen.dart';
import 'package:meta/meta.dart';

class Section {
  Section({
    @required this.title,
    @required this.icon,
    @required this.implementation,
    this.subsections,
  });

  final String title;
  final dynamic icon;
  final Function implementation;
  final List<Section> subsections;
}

final List<Section> upperSections = <Section>[
  Section(
    title: 'Live Reports',
    icon: FontAwesomeIcons.clock,
    implementation: () => LiveReportsScreen(),
  ),
  Section(
    title: 'Life Cycle',
    icon: FontAwesomeIcons
        .exchangeAlt, //peopleArrows retweet syncAlt waveSquare infinity
    implementation: () => CustomerLifeCycleScreen(),
    subsections: <Section>[
      Section(
        title: 'Aquisition',
        icon: FontAwesomeIcons.hubspot,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Engagement',
        icon: FontAwesomeIcons.tag,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Monetization',
        icon: FontAwesomeIcons.poundSign,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Retention',
        icon: FontAwesomeIcons.magnet,
        implementation: () => AdminScreen(),
      ),
    ],
  ),
  Section(
    title: 'Customers',
    icon: FontAwesomeIcons.user,
    implementation: () => CustomerAnalyticsScreen(),
    subsections: <Section>[
      Section(
        title: 'Advertisement',
        icon: FontAwesomeIcons.peopleArrows,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Customer Base',
        icon: FontAwesomeIcons.chartBar,
        implementation: () => AdminScreen(),
      ),
    ],
  ),
  Section(
    title: 'Admin',
    icon: FontAwesomeIcons.userTie,
    implementation: () => AdminScreen(),
    subsections: <Section>[
      Section(
        title: 'Local Events',
        icon: FontAwesomeIcons.users,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Staff',
        icon: FontAwesomeIcons.peopleCarry,
        implementation: () => AdminScreen(),
      ),
      Section(
        title: 'Stock',
        icon: FontAwesomeIcons.boxOpen,
        implementation: () => AdminScreen(),
      ),
    ],
  ),
];

final List<Section> lowerSections = <Section>[
  Section(
    title: 'Account',
    icon: FontAwesomeIcons.addressCard,
    implementation: () => AcccountScreen(),
    subsections: <Section>[],
  ),
  Section(
    title: 'Settings',
    icon: FontAwesomeIcons.cogs,
    implementation: () => SettingsScreen(),
    subsections: <Section>[],
  ),
];

/*
Live reports    exchangeAlt
  realtime        
Life cycle
  acquisition   hubspot  
  Engagement
  Monetization
  Retention

Customers
  advertisement
  customer base

Admin
  local events
  staff
  stock

Settings










*/
