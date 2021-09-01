import 'package:flutter/material.dart';
import 'package:parcell_app_customer/presentation/shared/theme.dart';
import 'package:showcaseview/showcaseview.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();
  GlobalKey _three = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      ShowCaseWidget.of(context)!.startShowCase([
        _one,
        _two,
        _three,
      ]);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget headerSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 56,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 120,
              height: 36,
              margin: EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo_adex.png'),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 24,
                right: 12,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                },
                icon: Icon(
                  Icons.notifications_outlined,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget bannerSection() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 28,
          left: 24,
          right: 24,
        ),
        child: Showcase(
          key: _one,
          description: 'You can find all of the ADEX main promos here',
          descTextStyle: blackTextStyle.copyWith(
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          child: Container(
            height: 120,
            decoration: BoxDecoration(
              color: kOrangeColor,
              boxShadow: [
                BoxShadow(
                  color: kShadowColor,
                  blurRadius: 8,
                  offset: Offset(0, 0),
                ),
              ],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/image_promo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      );
    }

    Widget trackingSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Track your shipment',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 16),
            Showcase(
              key: _two,
              description: 'Track all of your shipment with ADEX',
              descTextStyle: blackTextStyle.copyWith(
                fontSize: 16,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/tracking');
                },
                child: Container(
                  padding: EdgeInsets.all(8),
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 8,
                        ),
                        child: Text(
                          'Tracking number',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: kOrangeColor,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.flip,
                          color: kWhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
            )
          ],
        ),
      );
    }

    Widget pointSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Find your nearest drop point',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 16),
            Showcase(
              key: _three,
              description: 'Find your nearest drop point easily',
              descTextStyle: blackTextStyle.copyWith(
                fontSize: 16,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 16,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/drop-point');
                },
                child: Container(
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: kOrangeColor,
                    boxShadow: [
                      BoxShadow(
                        color: kShadowColor,
                        blurRadius: 8,
                        offset: Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage('assets/images/image_map.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment(1, -0.6),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Or you want to ask something?',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kShadowColor,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 240,
                        padding: EdgeInsets.only(top: 32),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Silahkan bertanya pada kami melalui:',
                                style: blackTextStyle.copyWith(),
                              ),
                              SizedBox(height: 12),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
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
                                        ),
                                        child: Column(
                                          children: [
                                            Icon(Icons.whatshot),
                                            SizedBox(height: 12),
                                            Text(
                                              'Whatsapp',
                                              style: blackTextStyle.copyWith(),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: Container(
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
                                        ),
                                        child: Column(
                                          children: [
                                            Icon(Icons.mail),
                                            SizedBox(height: 12),
                                            Text(
                                              'Email',
                                              style: blackTextStyle.copyWith(),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: Container(
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
                                        ),
                                        child: Column(
                                          children: [
                                            Icon(Icons.call),
                                            SizedBox(height: 12),
                                            Text(
                                              'Telepon',
                                              style: blackTextStyle.copyWith(),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: kWhiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.help_outline,
                      color: kOrangeColor,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Ask ADEX',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 112),
          ],
        ),
      );
    }

    return SafeArea(
      child: Stack(
        children: [
          ListView(
            children: [
              headerSection(),
              bannerSection(),
              trackingSection(),
              pointSection(),
            ],
          ),
        ],
      ),
    );
  }
}
