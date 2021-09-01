import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackingDetailPage extends StatefulWidget {
  TrackingDetailPage({Key? key}) : super(key: key);

  @override
  _TrackingDetailPageState createState() => _TrackingDetailPageState();
}

class _TrackingDetailPageState extends State<TrackingDetailPage> {
  String dropdownValue = '10001982410172';
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    Widget fieldSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                top: 4,
                bottom: 4,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                value: dropdownValue,
                isExpanded: true,
                icon: Icon(Icons.keyboard_arrow_down),
                iconSize: 24,
                elevation: 1,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                ),
                underline: Container(
                  height: 0,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>[
                  '10001982410172',
                  '10001982410152',
                  '10001982410142',
                  '10001982412172'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    Widget detailSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Text(
                      'I want to be notified',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        TimelineTile(
                          isFirst: true,
                          afterLineStyle: LineStyle(
                            thickness: 2,
                            color: kGreyColor,
                          ),
                          indicatorStyle: IndicatorStyle(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.only(
                              bottom: 2,
                              right: 16,
                            ),
                            indicator: Icon(
                              Icons.place_outlined,
                              size: 32,
                            ),
                          ),
                          endChild: Container(
                            padding: EdgeInsets.only(top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AAF JEANS',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  '1426-B Fillmore St Wonopringgo, Pekalongan, 94115, Indonesia',
                                  style: greyTextStyle.copyWith(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TimelineTile(
                          isLast: true,
                          beforeLineStyle: LineStyle(
                            thickness: 2,
                            color: kGreyColor,
                          ),
                          indicatorStyle: IndicatorStyle(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.only(
                              top: 2,
                              right: 16,
                            ),
                            indicator: Icon(
                              Icons.place_outlined,
                              size: 32,
                            ),
                          ),
                          endChild: Container(
                            padding: EdgeInsets.only(top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ADIKA SETIAWAN',
                                  style: blackTextStyle.copyWith(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                  ),
                                ),
                                Text(
                                  '1401 Irving St Pusponjolo, Semarang, 94122, Indonesia',
                                  style: greyTextStyle.copyWith(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Item',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                              Text(
                                'Document',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Service Type',
                                style: blackTextStyle.copyWith(
                                  fontWeight: medium,
                                ),
                              ),
                              Text(
                                'REGULAR',
                                style: greyTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget statusSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  '● Delivered',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: kBlueColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Icon(
                      Icons.inbox,
                      color: kWhiteColor,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Parcel sudah di-pickup oleh COURIER.',
                            style: blackTextStyle.copyWith(
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            'Wednesday, 18 August 2021 11:30',
                            style: greyTextStyle.copyWith(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TimelineTile(
              beforeLineStyle: LineStyle(
                thickness: 2,
                color: kGreyColor,
              ),
              indicatorStyle: IndicatorStyle(
                width: 40,
                height: 40,
                padding: EdgeInsets.only(
                  left: 16,
                  top: 2,
                  right: 16,
                ),
                indicator: Container(
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.inbox,
                    size: 24,
                    color: kWhiteColor,
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.only(
                  top: 24,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tugas pickup sudah diambil alih oleh COURIER dan segera di pickup.',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Wednesday, 18 August 2021 11:30',
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            TimelineTile(
              isLast: true,
              beforeLineStyle: LineStyle(
                thickness: 2,
                color: kGreyColor,
              ),
              indicatorStyle: IndicatorStyle(
                width: 40,
                height: 40,
                padding: EdgeInsets.only(
                  left: 16,
                  top: 2,
                  right: 16,
                ),
                indicator: Container(
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.inbox,
                    size: 24,
                    color: kWhiteColor,
                  ),
                ),
              ),
              endChild: Container(
                padding: EdgeInsets.only(
                  top: 24,
                  bottom: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tugas pickup sudah diambil alih oleh COURIER dan segera di pickup.',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Wednesday, 18 August 2021 11:30',
                      style: greyTextStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        child: AppBar(
          backgroundColor: kOrangeColor,
        ),
        preferredSize: Size(0, 0),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                fieldSection(),
                detailSection(),
                statusSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
