// ignore_for_file: file_names

import '../model/history.dart';

class HistoryData{
  static List<History> offeringHelpList = [
    const History(
      item: 'Pads',
      date: '20/08/2024 12:40',
      distance: 85,
      position: '3 Floor, XX Library',
      status: Status.sentOut,
      type: Type.offeringHelp
    ),
    const History(
      item: 'Wet Wipe',
      date: '20/08/2024 12:50',
      distance: 100,
      position: 'N113 CSIT bldg',
      status: Status.stillAvailable,
      type: Type.offeringHelp
    ),
    const History(
      item: 'Wet Wipe2',
      date: '20/08/2024 12:50',
      distance: 100,
      position: 'N113 CSIT bldg',
      status: Status.stillAvailable,
      type: Type.offeringHelp
    )
  ];

  static List<History> askingForHelpList = [
    const History(
      item: 'Tissues',
      date: '21/08/2024 10:30',
      distance: 50,
      position: '2 Floor, YY Building',
      status: Status.received,
      type: Type.askingForHelp
    ),
    const History(
      item: 'Bandage',
      date: '21/08/2024 11:45',
      distance: 120,
      position: 'Health Center',
      status: Status.stillAvailable,
      type: Type.askingForHelp
    )
  ];
}

