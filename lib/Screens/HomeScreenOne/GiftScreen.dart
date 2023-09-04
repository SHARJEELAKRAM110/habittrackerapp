import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habit_tracker/Widgets/CustomWidgets/CustomText.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart ' as stripe;

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  bool _isHovering = false;
  Map<String, dynamic>? paymentIntentData;

  Future<void> makePayment() async {
    try {
      paymentIntentData =
          await createPaymentIntent('1600', 'USD'); //json.decode(response.body);
      // print('Response body==>${response.body.toString()}');
      print("HHHHH");
      final googlePay = await stripe.PaymentSheetGooglePay(merchantCountryCode: 'US');

      await stripe.Stripe.instance
          .initPaymentSheet(
              paymentSheetParameters: stripe.SetupPaymentSheetParameters(
                  setupIntentClientSecret:
                      'sk_test_51NmCniHTlXUrikQZizBqvuXHtCPfQzrCtabvkj9J9VzwpQ6XP7kkDNiwrImBv9GDrEhhfvIZA403E8Yj3O3zZfGq00XNbMGt3l',
                  paymentIntentClientSecret:
                      paymentIntentData!['client_secret'],
                  //applePay: PaymentSheetApplePay.,
                  //googlePay: true,
                  //testEnv: true,
                  // merchantCountryCode: 'US',
                  style: ThemeMode.light,
                  googlePay: googlePay,
                  merchantDisplayName: 'Kashif'))
          .then((value) {});
      displayPaymentSheet(googlePay);
      print("kkkkkk");

      ///now finally display payment sheeet
    } catch (e, s) {
      print('Payment exception:$e$s');
    }
  }

  displayPaymentSheet(final pay) async {
    try {
      print('displayPaymentSheet');
      await stripe.Stripe.instance
          .presentPaymentSheet(

              //       parameters: PresentPaymentSheetParameters(
              // clientSecret: paymentIntentData!['client_secret'],
              // confirmPayment: true,
              //  )
              )
          .then((newValue) {
        print('payment intent' + paymentIntentData!['id'].toString());
        print(
            'payment intent' + paymentIntentData!['client_secret'].toString());
        print('payment intent' + paymentIntentData!['amount'].toString());
        print('payment intent' + paymentIntentData.toString());
        //orderPlaceApi(paymentIntentData!['id'].toString());
        // ScaffoldMessenger.of(context)
        //     .showSnackBar(const SnackBar(content: Text("paid successfully")));

        paymentIntentData = null;
      }).onError((error, stackTrace) {
        print('Exception/DISPLAYPAYMENTSHEET==> $error $stackTrace');
      });
    } on stripe.StripeException catch (e) {
      print('Exception/DISPLAYPAYMENTSHEET==> $e');
      showDialog(
          context: context,
          builder: (_) => const AlertDialog(
                content: Text("Cancelled "),
              ));
    } catch (e) {
      print('$e');
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount('20'),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      print(body);
      var response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization':
                'Bearer sk_test_51NmCniHTlXUrikQZizBqvuXHtCPfQzrCtabvkj9J9VzwpQ6XP7kkDNiwrImBv9GDrEhhfvIZA403E8Yj3O3zZfGq00XNbMGt3l',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      print('Create Intent reponse ===> ${response.body.toString()}');
      return jsonDecode(response.body);
    } catch (err) {
      print('err charging user: ${err.toString()}');
    }
  }

  calculateAmount(String amount) {
    final a = (int.parse(amount)) * 100;
    return a.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                // Add your button click action here
                print('Button clicked!');
              },
              onTapDown: (_) {
                setState(() {
                  _isHovering = true;
                });
              },
              onTapUp: (_) {
                setState(() {
                  _isHovering = false;
                });
              },
              child: Center(
                child: SizedBox(
                  height: 50.h,
                  width: 50.w,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isHovering
                            ? Colors.blueAccent
                            : Colors.yellow.withOpacity(0.4)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                    color: Colors.yellow.withOpacity(0.4),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(text: 'Realize '),
                  TextSpan(
                    text: 'your potential',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15.h,
                ),
                CustomText(
                  text: "Unlimited habits & journaling.",
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15.h,
                ),
                CustomText(
                  text: "Beat procrastination",
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15.h,
                ),
                CustomText(
                  text: "Unlock all audio lessons",
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15.h,
                ),
                CustomText(
                  text: "Mood & Habit statistics",
                  color: Colors.white,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.yellow.withOpacity(0.4),
                ),
                SizedBox(
                  width: 15.h,
                ),
                CustomText(
                  text: "Daily Motivation",
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                shape: Border.all(color: Colors.grey, width: 2),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "LifeTime",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          CustomText(
                            text: "Rs 1,600.00",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(
                          text: "Access to all future updates included"),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: double.infinity,
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "Monthly",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          CustomText(
                            text: "Rs 600.00",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 45.h,
              child: MaterialButton(
                onPressed: () {
                  makePayment();
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.green,
                child: CustomText(
                  text: "CONTINUE",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
