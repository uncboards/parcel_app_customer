import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';

class TrackingPage extends StatelessWidget {
  TrackingPage({Key? key}) : super(key: key);

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
              child: TextFormField(
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
                cursorColor: kOrangeColor,
                decoration: InputDecoration(
                  hintText: '10001957099172',
                  hintStyle: greyTextStyle.copyWith(),
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 24,
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      print('scan');
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 8),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: kOrangeColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Icon(
                        Icons.flip,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 16,
                    top: 16,
                    bottom: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget historySection() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Column(
          children: [
            SizedBox(height: 12),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Shipment history',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/tracking-detail');
              },
              child: Container(
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
                              '011089150143379',
                              style: blackTextStyle.copyWith(
                                fontWeight: medium,
                              ),
                            ),
                            Text(
                              'COURIER sudah ditugaskan dan parcel akan segera diantar ke penerima.',
                              style: greyTextStyle.copyWith(
                                fontWeight: light,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
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
                historySection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
