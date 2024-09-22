// ignore: file_names
import 'package:flutter/material.dart';
import '../colors.dart';

class BuildHistorySection extends StatefulWidget {
  const BuildHistorySection({super.key});

  @override
  State<BuildHistorySection> createState() => _BuildHistorySectionState();
}

class _BuildHistorySectionState extends State<BuildHistorySection> {
  bool isOfferingHelp =
      true; // True for "Offering help", False for "Asking for help"

  // Sample data - replace with your actual data
  final offeringHelpList = [
    {
      'item': 'Pads',
      'date': '20/08/2024 12:40',
      'distance': '85m',
      'position': '3 Floor, XX Library',
      'status': 'Sent out'
    },
    {
      'item': 'wet wipe',
      'date': '20/08/2024 12:50',
      'distance': '100m',
      'position': 'N113 CSIT bldg',
      'status': 'Still available'
    },
    {
      'item': 'wet wipe2',
      'date': '20/08/2024 12:50',
      'distance': '100m',
      'position': 'N113 CSIT bldg',
      'status': 'Still available'
    },
  ];

  final askingForHelpList = [
    {
      'item': 'Tissues',
      'date': '21/08/2024 10:30',
      'distance': '50m',
      'position': '2 Floor, YY Building',
      'status': 'Received'
    },
    {
      'item': 'Bandage',
      'date': '21/08/2024 11:45',
      'distance': '120m',
      'position': 'Health Center',
      'status': 'Waiting'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.blush, // Set your desired background color here
        child: Column(
          children: [
            const SizedBox(height: 16),
            SizedBox(
              width: 360,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xfffffcfc),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text('History',
                    style: TextStyle(color: Color(0xff897494)),
                    textAlign: TextAlign.start),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfffffcfc),
                                foregroundColor: isOfferingHelp
                                    ? const Color(0xFF897494)
                                    : const Color(0xff582c87),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadowColor: Colors.transparent),
                            onPressed: () =>
                                setState(() => isOfferingHelp = false),
                            child: const Text(
                              'Asking for help',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xfffffcfc),
                                foregroundColor: isOfferingHelp
                                    ? const Color(0xff582c87)
                                    : const Color(0xFF897494),
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                shadowColor: Colors.transparent),
                            onPressed: () =>
                                setState(() => isOfferingHelp = true),
                            child: const Text(
                              'Offering help',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _buildOfferList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOfferList() {
    final offers = isOfferingHelp ? offeringHelpList : askingForHelpList;

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: offers.length,
        separatorBuilder: (context, index) => const Divider(
          indent: 16,
          endIndent: 16,
          height: 1,
          thickness: 0.5,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          final offer = offers[index];
          return _buildOfferItem(offer);
        },
      ),
    );
  }

  Widget _buildOfferItem(Map<String, String> offer) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${isOfferingHelp ? "Offering" : "Asking for"} ${offer['item']}',
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Posted on ${offer['date']}'),
              Text('Distance: ${offer['distance']}'),
            ],
          ),
          const SizedBox(height: 8),
          Text('Position ${offer['position']}'),
          const SizedBox(height: 8),
          const Text('Description'),
          const SizedBox(height: 16),
          Row(children: [
            SizedBox(
              width: 120,
              height: 30,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.salmon,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  offer['status']!,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              width: 100,
            ),
            SizedBox(
              height: 45,
              width: 45,
              child: IconButton(
                onPressed: () {
                  _deleteOffer(offer);  // Call the delete function here
                },
                icon: Image.asset(
                  'assets/delete.png',
                  color: AppColors.buttonColor,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 45,
              width: 45,
              child: IconButton(
                icon: Image.asset('assets/editing.png',
                    color: AppColors.buttonColor),
                onPressed: () {
                  // TODO: Implement edit functionality
                },
              ),
            ),
          ])
        ],
      ),
    );
  }

  void _deleteOffer(Map<String, String> offer) {
    setState(() {
      if (isOfferingHelp) {
        offeringHelpList.removeWhere((item) => item == offer);
      } else {
        askingForHelpList.removeWhere((item) => item == offer);
      }
    });
  }
}
