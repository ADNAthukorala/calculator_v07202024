import 'package:calculator_v07202024/constants.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
        child: LayoutBuilder(
          builder: (context, viewportConstraints) {
            // Get viewport height
            double viewportHeight = viewportConstraints.maxHeight;

            // Set result display height as a fraction of the viewport height
            double rsltDsplyHeight = viewportHeight * 0.35;

            // Set button pad height as a fraction of the viewport height
            double btnPadHeight = viewportHeight * 0.65;

            // Set button radius as a fraction of the viewport height
            double btnRadius = viewportHeight * 0.056;

            // Set button text size as a fraction of the viewport height
            double btnTxtSize = viewportHeight * 0.03;

            // Set result display text size as a fraction of the viewport height
            double rsltDsplyTxtSize = viewportHeight * 0.06;

            return Column(
              children: [
                /// Result display
                Container(
                  height: rsltDsplyHeight,
                  width: double.infinity,
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    '0',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: kRsltTxtClr,
                      fontSize: rsltDsplyTxtSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                /// Button pad
                Container(
                  height: btnPadHeight,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                      color: kDividerClr,
                      width: 2.0,
                    ),
                  )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /// (AC, +/-, %, ÷)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalculatorButton(
                              btnTxt: 'AC',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kAcBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '+/-',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '%',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '÷',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      /// (7, 8, 9, x)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalculatorButton(
                              btnTxt: '7',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '8',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '9',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: 'x',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      /// (4, 5, 6, -)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalculatorButton(
                              btnTxt: '4',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '5',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '6',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '-',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      /// (1, 2, 3, +)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalculatorButton(
                              btnTxt: '1',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '2',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '3',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '+',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kOprtrBtnClr,
                              btnTxtColor: kOprtrBtnTxtClr,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),

                      /// (⌫, 0, ., =)
                      Flexible(
                        fit: FlexFit.loose,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CalculatorButton(
                              btnTxt: '⌫',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '0',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '.',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kNmbrBtnClr,
                              btnTxtColor: kNmbrBtnTxtClr,
                              onPressed: () {},
                            ),
                            CalculatorButton(
                              btnTxt: '=',
                              btnRadius: btnRadius,
                              btnTxtSize: btnTxtSize,
                              btnColor: kEqualBtnClr,
                              btnTxtColor: kEqualBtnTxtClr,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// Calculator button widget
class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
    required this.btnRadius,
    required this.btnTxtSize,
    this.btnColor,
    required this.btnTxt,
    required this.onPressed,
    this.btnTxtColor,
  });

  final double btnRadius;
  final double btnTxtSize;
  final Color? btnColor;
  final Color? btnTxtColor;
  final String btnTxt;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          fixedSize: Size.fromRadius(btnRadius),
          backgroundColor: btnColor ?? kNmbrBtnClr,
        ),
        child: Text(
          btnTxt,
          style: TextStyle(
            color: btnTxtColor ?? kNmbrBtnTxtClr,
            fontSize: btnTxtSize,
          ),
        ),
      ),
    );
  }
}
