import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Pageinter extends StatelessWidget {
  const Pageinter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5fcfb),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 237.7, middle: 0.4991),
            Pin(size: 64.2, start: 68.3),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 63.7, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(1.0, -0.319),
                  child: SizedBox(
                    width: 166.0,
                    height: 52.0,
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 30,
                          color: const Color(0xff04736c),
                          letterSpacing: 7.5,
                          height: 1.3076923076923077,
                        ),
                        children: [
                          TextSpan(
                            text: 'RCFAE\n',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextSpan(
                            text: 'ADHESION digitale ',
                            style: TextStyle(
                              fontSize: 13,
                              letterSpacing: -0.13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.0, end: 16.0),
            Pin(size: 388.0, start: 9.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.15), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 29.0, end: 24.0),
            Pin(size: 166.0, middle: 0.3211),
            child: SvgPicture.string(
              _svg_wo3294,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Align(
            alignment: Alignment(0.382, -0.369),
            child: SizedBox(
              width: 194.0,
              height: 35.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: const Color(0xff0b6a64),
                    height: 1.4,
                  ),
                  children: [
                    TextSpan(
                      text: 'Total  Recensement\n',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'Vous avez jusqu\'à présent recensé  ',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
              ),
            ),
          ),
          Container(),
          Align(
            alignment: Alignment(-0.032, -0.25),
            child: SizedBox(
              width: 137.0,
              height: 56.0,
              child: Text(
                '2520',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 40,
                  color: const Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 22.0, end: 56.0),
            Pin(size: 20.0, middle: 0.2835),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x1afeb558),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 166.0, middle: 0.6737),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffd8eeeb),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x0f000000),
                    offset: Offset(0, 3),
                    blurRadius: 15,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, start: 49.0),
            Pin(size: 90.0, middle: 0.3328),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff2e6dc),
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 57.9, start: 4.6),
                  Pin(start: 1.8, end: 7.6),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 11.5, 0.0, 0.0),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment(-1.0, -0.022),
                              child: SizedBox(
                                width: 1.0,
                                height: 15.0,
                                child: SvgPicture.string(
                                  _svg_i3cni4,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: SizedBox(
                                width: 39.0,
                                height: 14.0,
                                child: SvgPicture.string(
                                  _svg_o89l5m,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 13.0,
                                height: 51.0,
                                child: SvgPicture.string(
                                  _svg_bbcq7,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 14.0,
                                height: 54.0,
                                child: SvgPicture.string(
                                  _svg_k9vpr5,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5.9, 0.0, 5.9, 5.0),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              color: const Color(0xfff7f1eb),
                              margin: EdgeInsets.fromLTRB(0.0, 13.6, 0.0, 0.0),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.3, end: 6.3),
                              Pin(size: 15.2, middle: 0.4111),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 1.2, start: 0.0),
                                    child: Transform.rotate(
                                      angle: 3.1416,
                                      child: Container(
                                        color: const Color(0xfff2e6dc),
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: 3.1416,
                                    child: Container(
                                      color: const Color(0xfff2e6dc),
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 2.2, 0.0, 0.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(start: 6.3, end: 6.3),
                              Pin(size: 15.2, middle: 0.7031),
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromPins(
                                    Pin(start: 0.0, end: 0.0),
                                    Pin(size: 1.2, start: 0.0),
                                    child: Transform.rotate(
                                      angle: 3.1416,
                                      child: Container(
                                        color: const Color(0xfff2e6dc),
                                      ),
                                    ),
                                  ),
                                  Transform.rotate(
                                    angle: 3.1416,
                                    child: Container(
                                      color: const Color(0xfff2e6dc),
                                      margin: EdgeInsets.fromLTRB(
                                          0.0, 2.2, 0.0, 0.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.062, -1.0),
                              child: SizedBox(
                                width: 30.0,
                                height: 17.0,
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          1.1, 1.1, 0.0, 0.0),
                                      child: SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_cq7thh,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 1.0, 1.0),
                                      child: SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_kzr7m6,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.536, 0.278),
                  child: Container(
                    width: 30.0,
                    height: 22.0,
                    color: const Color(0xff8b865c),
                  ),
                ),
                Align(
                  alignment: Alignment(0.34, 0.384),
                  child: SizedBox(
                    width: 21.0,
                    height: 10.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(size: 9.9, start: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            color: const Color(0xffffffff),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 9.9, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            color: const Color(0xffe6d0be),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 12.1, end: 7.6),
                  Pin(size: 12.1, middle: 0.695),
                  child: SvgPicture.string(
                    _svg_v8hv9,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 33.9, end: 10.2),
                  Pin(size: 29.1, middle: 0.3862),
                  child: Container(
                    color: const Color(0xffefbc73),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 43.5, end: 13.3),
                  Pin(size: 41.1, start: 11.5),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 23.0,
                          height: 9.0,
                          child: SvgPicture.string(
                            _svg_okj6mu,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 2.9, 1.1, 5.9),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                width: 23.0,
                                height: 15.0,
                                child: Stack(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: SizedBox(
                                            width: 11.0,
                                            height: 8.0,
                                            child: SvgPicture.string(
                                              _svg_wb5de,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0.0, 0.0, 7.3, 0.0),
                                          child: Stack(
                                            children: <Widget>[
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.0, 0.6, 0.0, 0.0),
                                                child: SizedBox.expand(
                                                    child: SvgPicture.string(
                                                  _svg_iw350,
                                                  allowDrawingOutsideViewBox:
                                                      true,
                                                  fit: BoxFit.fill,
                                                )),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment(-0.331, -1.0),
                                                child: SizedBox(
                                                  width: 3.0,
                                                  height: 2.0,
                                                  child: SvgPicture.string(
                                                    _svg_u6y76w,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                  ),
                                                ),
                                              ),
                                              Pinned.fromPins(
                                                Pin(size: 5.3, start: 1.2),
                                                Pin(size: 3.3, start: 1.6),
                                                child: Stack(
                                                  children: <Widget>[
                                                    Pinned.fromPins(
                                                      Pin(size: 2.6, end: 0.6),
                                                      Pin(size: 1.0, end: 0.0),
                                                      child: SvgPicture.string(
                                                        _svg_w53k8k,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: SizedBox(
                                                        width: 2.0,
                                                        height: 1.0,
                                                        child:
                                                            SvgPicture.string(
                                                          _svg_yl5xvb,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                        ),
                                                      ),
                                                    ),
                                                    Pinned.fromPins(
                                                      Pin(
                                                          size: 1.4,
                                                          start: 0.7),
                                                      Pin(
                                                          size: 1.0,
                                                          start: 0.4),
                                                      child: SvgPicture.string(
                                                        _svg_p8ulz8,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: SizedBox(
                                                        width: 1.0,
                                                        height: 1.0,
                                                        child:
                                                            SvgPicture.string(
                                                          _svg_gzzaj4,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: SizedBox(
                                                        width: 1.0,
                                                        height: 1.0,
                                                        child:
                                                            SvgPicture.string(
                                                          _svg_fqqphk,
                                                          allowDrawingOutsideViewBox:
                                                              true,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 27.0, end: 0.0),
                              Pin(size: 25.2, end: 0.8),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_iu64i,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  Pinned.fromPins(
                                    Pin(size: 1.4, middle: 0.5915),
                                    Pin(size: 4.6, start: 2.8),
                                    child: SvgPicture.string(
                                      _svg_x1gwzk,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 24.6, end: 4.1),
                              Pin(size: 17.6, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: SizedBox(
                                      width: 10.0,
                                      height: 14.0,
                                      child: SvgPicture.string(
                                        _svg_fhcaoj,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SizedBox(
                                      width: 20.0,
                                      height: 11.0,
                                      child: Stack(
                                        children: <Widget>[
                                          SizedBox.expand(
                                              child: SvgPicture.string(
                                            _svg_u83ehp,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          )),
                                          Pinned.fromPins(
                                            Pin(size: 3.7, start: 1.0),
                                            Pin(size: 2.4, middle: 0.3362),
                                            child: SvgPicture.string(
                                              _svg_l4dwua,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 2.9, start: 1.6),
                                            Pin(size: 2.8, end: 1.0),
                                            child: Stack(
                                              children: <Widget>[
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: SizedBox(
                                                    width: 1.0,
                                                    height: 1.0,
                                                    child: SvgPicture.string(
                                                      _svg_vjr7ws,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                    ),
                                                  ),
                                                ),
                                                Pinned.fromPins(
                                                  Pin(start: 0.5, end: 1.2),
                                                  Pin(
                                                      size: 1.0,
                                                      middle: 0.5807),
                                                  child: SvgPicture.string(
                                                    _svg_c50rou,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: SizedBox(
                                                    width: 1.0,
                                                    height: 1.0,
                                                    child: SvgPicture.string(
                                                      _svg_hp5wa1,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment(0.304, -0.214),
                              child: SizedBox(
                                width: 5.0,
                                height: 14.0,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.0),
                                      Pin(size: 2.3, start: 0.0),
                                      child: SvgPicture.string(
                                        _svg_oxhdrt,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          0.9, 1.3, 0.9, 0.0),
                                      child: SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_hc8vsb,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.139, -1.0),
                        child: SizedBox(
                          width: 10.0,
                          height: 11.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 7.0, end: 0.0),
                                Pin(size: 6.8, end: 0.7),
                                child: SvgPicture.string(
                                  _svg_z0xet,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 2.8, 0.0),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(start: 1.3, end: 0.8),
                                      Pin(size: 7.5, end: 0.7),
                                      child: SvgPicture.string(
                                        _svg_y8oksw,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(-0.386, 0.519),
                                      child: SizedBox(
                                        width: 1.0,
                                        height: 1.0,
                                        child: SvgPicture.string(
                                          _svg_gmbhr,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(-0.149, 0.218),
                                      child: SizedBox(
                                        width: 2.0,
                                        height: 2.0,
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(size: 1.0, end: -0.1),
                                              Pin(start: 0.0, end: 0.8),
                                              child: SvgPicture.string(
                                                _svg_xc7,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Stack(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    SizedBox.expand(
                                                        child:
                                                            SvgPicture.string(
                                                      _svg_tz2mi,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    )),
                                                    SizedBox.expand(
                                                        child:
                                                            SvgPicture.string(
                                                      _svg_cclmj,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(start: 0.0, end: 0.2),
                                      Pin(size: 6.0, start: 0.0),
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromPins(
                                            Pin(start: 0.9, end: 0.0),
                                            Pin(size: 5.0, end: 0.0),
                                            child: SvgPicture.string(
                                              _svg_iz4h8,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 1.1, middle: 0.3634),
                                            Pin(size: 1.2, start: 0.8),
                                            child: SvgPicture.string(
                                              _svg_qpkxkt,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(-0.456, -0.45),
                                            child: SizedBox(
                                              width: 1.0,
                                              height: 1.0,
                                              child: SvgPicture.string(
                                                _svg_ujtpi4,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 1.6, start: 0.6),
                                            Pin(size: 1.5, middle: 0.403),
                                            child: SvgPicture.string(
                                              _svg_cbis,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: SizedBox(
                                              width: 1.0,
                                              height: 1.0,
                                              child: SvgPicture.string(
                                                _svg_na9tcu,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                              width: 1.0,
                                              height: 1.0,
                                              child: SvgPicture.string(
                                                _svg_vdukga,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.25, -1.0),
                                            child: SizedBox(
                                              width: 1.0,
                                              height: 2.0,
                                              child: SvgPicture.string(
                                                _svg_oti02u,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment(0.524, -0.919),
                                            child: SizedBox(
                                              width: 1.0,
                                              height: 1.0,
                                              child: SvgPicture.string(
                                                _svg_qrut7j,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Pinned.fromPins(
                                            Pin(size: 1.8, start: 0.0),
                                            Pin(size: 1.6, end: 0.7),
                                            child: SvgPicture.string(
                                              _svg_t2exy,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(1.0, -0.184),
                                      child: SizedBox(
                                        width: 2.0,
                                        height: 2.0,
                                        child: SvgPicture.string(
                                          _svg_ksdc3e,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 4.2, end: 0.7),
                                      Pin(size: 5.7, end: 0.0),
                                      child: SvgPicture.string(
                                        _svg_vkqgay,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.108, 0.617),
                                      child: SizedBox(
                                        width: 1.0,
                                        height: 1.0,
                                        child: SvgPicture.string(
                                          _svg_a1c878,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.342, -0.499),
                                      child: SizedBox(
                                        width: 1.0,
                                        height: 1.0,
                                        child: SvgPicture.string(
                                          _svg_u0nop,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(-0.536, -0.257),
                  child: SizedBox(
                    width: 30.0,
                    height: 11.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: const Color(0xffffffff),
                        ),
                        Pinned.fromPins(
                          Pin(start: 2.7, end: 1.9),
                          Pin(size: 5.5, middle: 0.4725),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(size: 1.0, start: 0.0),
                                child: SvgPicture.string(
                                  _svg_jfh2j,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 17.0,
                                  height: 1.0,
                                  child: SvgPicture.string(
                                    _svg_ghwai5,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 6.0,
                                  height: 1.0,
                                  child: SvgPicture.string(
                                    _svg_c4ptyv,
                                    allowDrawingOutsideViewBox: true,
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 7.1, end: 0.0),
                                Pin(size: 1.0, end: -0.9),
                                child: SvgPicture.string(
                                  _svg_ne7ae,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 14.0, start: 0.0),
                                Pin(size: 1.0, end: -0.9),
                                child: SvgPicture.string(
                                  _svg_evc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 41.8, start: 6.4),
                  Pin(size: 39.5, middle: 0.5222),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 17.7, middle: 0.392),
                        Pin(size: 10.2, end: 0.6),
                        child: SvgPicture.string(
                          _svg_xeyxey,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 11.3, 0.0, 0.0),
                        child: Stack(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 20.0,
                                height: 15.0,
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: SizedBox(
                                        width: 11.0,
                                        height: 8.0,
                                        child: SvgPicture.string(
                                          _svg_h9xdh,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 11.9, end: 0.0),
                                      Pin(start: 0.0, end: 0.0),
                                      child: Stack(
                                        children: <Widget>[
                                          SizedBox.expand(
                                              child: SvgPicture.string(
                                            _svg_ythhct,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          )),
                                          Align(
                                            alignment: Alignment(0.453, -0.61),
                                            child: SizedBox(
                                              width: 2.0,
                                              height: 2.0,
                                              child: SvgPicture.string(
                                                _svg_tb,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment(-0.999, -0.111),
                              child: SizedBox(
                                width: 10.0,
                                height: 10.0,
                                child: SvgPicture.string(
                                  _svg_ic9k1t,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 23.7, start: 5.3),
                              Pin(size: 16.6, middle: 0.3728),
                              child: SvgPicture.string(
                                _svg_cbarhy,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 17.4, start: 1.7),
                              Pin(size: 17.4, end: 0.0),
                              child: Stack(
                                children: <Widget>[
                                  Transform.rotate(
                                    angle: -0.7857,
                                    child: Container(
                                      color: const Color(0xffd87355),
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 1.8, vertical: 3.3),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment(0.366, -0.406),
                                    child: SizedBox(
                                      width: 4.0,
                                      height: 4.0,
                                      child: Stack(
                                        children: <Widget>[
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              width: 3.0,
                                              height: 3.0,
                                              child: SvgPicture.string(
                                                _svg_h4abnu,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                              width: 3.0,
                                              height: 3.0,
                                              child: SvgPicture.string(
                                                _svg_n60o52,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(1.0),
                                            child: SizedBox.expand(
                                                child: SvgPicture.string(
                                              _svg_jphjc,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 15.7, start: 0.0),
                              Pin(size: 11.6, end: 1.7),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox.expand(
                                      child: SvgPicture.string(
                                    _svg_h9xyfu,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  )),
                                  Align(
                                    alignment: Alignment(-0.261, -1.0),
                                    child: SizedBox(
                                      width: 1.0,
                                      height: 1.0,
                                      child: SvgPicture.string(
                                        _svg_tx3lvn,
                                        allowDrawingOutsideViewBox: true,
                                      ),
                                    ),
                                  ),
                                  Pinned.fromPins(
                                    Pin(size: 2.9, end: 1.1),
                                    Pin(size: 3.2, end: 0.8),
                                    child: Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(size: 1.0, end: -0.6),
                                          Pin(size: 1.0, start: 0.0),
                                          child: SvgPicture.string(
                                            _svg_g8eh7r,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                            width: 1.0,
                                            height: 1.0,
                                            child: SvgPicture.string(
                                              _svg_arft6q,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            width: 1.0,
                                            height: 1.0,
                                            child: SvgPicture.string(
                                              _svg_gj34v7,
                                              allowDrawingOutsideViewBox: true,
                                            ),
                                          ),
                                        ),
                                        Pinned.fromPins(
                                          Pin(size: 1.0, start: 0.0),
                                          Pin(size: 1.0, end: -0.5),
                                          child: SvgPicture.string(
                                            _svg_j1xrc3,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.526, -1.0),
                        child: SizedBox(
                          width: 15.0,
                          height: 18.0,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 5.5, end: 0.8),
                                Pin(size: 2.3, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffe2a18d),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 3.1, end: 2.0),
                                Pin(size: 6.4, end: 0.8),
                                child: Container(
                                  color: const Color(0xffe2a18d),
                                ),
                              ),
                              Align(
                                alignment: Alignment(1.0, 0.355),
                                child: SizedBox(
                                  width: 6.0,
                                  height: 6.0,
                                  child: Stack(
                                    children: <Widget>[
                                      SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_v2u8h,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      )),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: SizedBox(
                                          width: 1.0,
                                          height: 1.0,
                                          child: SvgPicture.string(
                                            _svg_g6v64b,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 2.3, end: 0.8),
                                        Pin(size: 1.0, middle: 0.4889),
                                        child: Stack(
                                          children: <Widget>[
                                            Pinned.fromPins(
                                              Pin(size: 1.0, start: 0.0),
                                              Pin(start: 0.1, end: -0.2),
                                              child: SvgPicture.string(
                                                _svg_r7vn2,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            Stack(
                                              children: <Widget>[
                                                Stack(
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0.7,
                                                              -0.5,
                                                              -0.1,
                                                              -0.3),
                                                      child: SizedBox.expand(
                                                          child:
                                                              SvgPicture.string(
                                                        _svg_ks6ksj,
                                                        allowDrawingOutsideViewBox:
                                                            true,
                                                        fit: BoxFit.fill,
                                                      )),
                                                    ),
                                                    SizedBox.expand(
                                                        child:
                                                            SvgPicture.string(
                                                      _svg_wuxbux,
                                                      allowDrawingOutsideViewBox:
                                                          true,
                                                      fit: BoxFit.fill,
                                                    )),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 1.0, end: 0.6),
                                        Pin(size: 1.0, middle: 0.8182),
                                        child: SvgPicture.string(
                                          _svg_zya1u,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 2.6, end: 0.7),
                                        Pin(size: 1.0, end: -0.7),
                                        child: SvgPicture.string(
                                          _svg_wyj7nl,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 5.2, end: 1.1),
                                Pin(size: 5.6, middle: 0.6248),
                                child: Stack(
                                  children: <Widget>[
                                    SizedBox.expand(
                                        child: SvgPicture.string(
                                      _svg_i45v47,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    )),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 10.0,
                                  height: 11.0,
                                  child: Stack(
                                    children: <Widget>[
                                      SizedBox.expand(
                                          child: SvgPicture.string(
                                        _svg_im5dsv,
                                        allowDrawingOutsideViewBox: true,
                                        fit: BoxFit.fill,
                                      )),
                                      Pinned.fromPins(
                                        Pin(size: 1.0, end: 0.6),
                                        Pin(size: 1.9, end: 1.0),
                                        child: Stack(
                                          children: <Widget>[
                                            SizedBox.expand(
                                                child: SvgPicture.string(
                                              _svg_j1qxhx,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            )),
                                            Pinned.fromPins(
                                              Pin(start: 0.0, end: 0.0),
                                              Pin(size: 1.0, end: -0.3),
                                              child: SvgPicture.string(
                                                _svg_pswhml,
                                                allowDrawingOutsideViewBox:
                                                    true,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(start: 0.2, end: 1.1),
                                        Pin(size: 2.1, end: 0.7),
                                        child: SvgPicture.string(
                                          _svg_stce73,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 2.5, end: 1.3),
                                        Pin(size: 1.5, end: 0.0),
                                        child: SvgPicture.string(
                                          _svg_dpupg4,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 30.6, end: 5.1),
                  Pin(size: 26.8, end: 2.2),
                  child: Stack(
                    children: <Widget>[
                      Transform.rotate(
                        angle: -0.0082,
                        child: Container(
                          color: const Color(0xff84524d),
                          margin: EdgeInsets.fromLTRB(0.1, 5.0, 0.1, 0.1),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          width: 10.0,
                          height: 7.0,
                          child: SvgPicture.string(
                            _svg_jj4a82,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 1.8, end: 2.2),
                        Pin(size: 10.5, middle: 0.4146),
                        child: SvgPicture.string(
                          _svg_mvoykw,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.001, 0.29),
                        child: Transform.rotate(
                          angle: -0.0082,
                          child: Container(
                            width: 4.0,
                            height: 2.0,
                            color: const Color(0xffefbc73),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 21.3, middle: 0.4303),
                  Pin(size: 11.8, end: 9.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 11.8, start: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: Stack(
                          children: <Widget>[
                            Transform.rotate(
                              angle: 3.1416,
                              child: Container(
                                color: const Color(0x66ffffff),
                                margin: EdgeInsets.fromLTRB(0.0, 0.0, 1.0, 1.0),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.9, 0.9, 0.0, 0.0),
                              child: SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_ze6xt6,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 8.7, start: 1.8),
                        Pin(start: 1.9, end: 1.6),
                        child: SvgPicture.string(
                          _svg_u1x9ah,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment(1.0, -0.346),
                        child: SizedBox(
                          width: 8.0,
                          height: 1.0,
                          child: SvgPicture.string(
                            _svg_bqw481,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(1.0, 0.171),
                        child: SizedBox(
                          width: 8.0,
                          height: 1.0,
                          child: SvgPicture.string(
                            _svg_jr6c7,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(1.0, 0.688),
                        child: SizedBox(
                          width: 8.0,
                          height: 1.0,
                          child: SvgPicture.string(
                            _svg_fetinl,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 23.5, start: 5.6),
                  Pin(size: 11.6, middle: 0.197),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.8, 0.0, 0.0, 0.8),
                        child: SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_y4c99,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.7, 0.7, 0.0),
                        child: SizedBox.expand(
                            child: SvgPicture.string(
                          _svg_dqveah,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        )),
                      ),
                      Pinned.fromPins(
                        Pin(size: 2.9, end: 1.4),
                        Pin(size: 2.8, middle: 0.2441),
                        child: SvgPicture.string(
                          _svg_zmvan,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.449, -0.512),
                        child: SizedBox(
                          width: 3.0,
                          height: 3.0,
                          child: SvgPicture.string(
                            _svg_gl495t,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.039, -0.512),
                        child: SizedBox(
                          width: 3.0,
                          height: 3.0,
                          child: SvgPicture.string(
                            _svg_q0aaxn,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment(-0.372, -0.512),
                        child: SizedBox(
                          width: 3.0,
                          height: 3.0,
                          child: SvgPicture.string(
                            _svg_du5n9q,
                            allowDrawingOutsideViewBox: true,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 2.9, start: 2.2),
                        Pin(size: 2.8, middle: 0.2441),
                        child: SvgPicture.string(
                          _svg_qktgmp,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 9.6, start: 7.7),
                  Pin(size: 17.1, end: 5.5),
                  child: Stack(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 5.4, end: 0.0),
                            Pin(start: 1.9, end: 0.3),
                            child: Stack(
                              children: <Widget>[
                                SizedBox.expand(
                                    child: SvgPicture.string(
                                  _svg_eauvms,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                                Pinned.fromPins(
                                  Pin(size: 3.1, end: 0.8),
                                  Pin(size: 8.3, middle: 0.377),
                                  child: SvgPicture.string(
                                    _svg_wcvd2c,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 2.4, middle: 0.4941),
                            Pin(start: 0.0, end: 0.0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox.expand(
                                    child: SvgPicture.string(
                                  _svg_cxexs6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                                Pinned.fromPins(
                                  Pin(size: 1.0, middle: 0.6731),
                                  Pin(size: 9.6, start: 1.4),
                                  child: SvgPicture.string(
                                    _svg_godu7d,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 4.3, start: 0.0),
                            Pin(start: 0.5, end: 0.0),
                            child: Stack(
                              children: <Widget>[
                                SizedBox.expand(
                                    child: SvgPicture.string(
                                  _svg_kf6tsf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                )),
                                Pinned.fromPins(
                                  Pin(start: 0.6, end: 1.2),
                                  Pin(size: 9.5, start: 2.0),
                                  child: SvgPicture.string(
                                    _svg_btuw9,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.3),
                        Pin(size: 5.4, end: 0.0),
                        child: SvgPicture.string(
                          _svg_wm071n,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 94.0, start: 49.0),
            Pin(size: 94.0, middle: 0.6542),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xff08857d),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 207.0, end: 51.0),
            Pin(size: 49.0, middle: 0.6448),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  color: const Color(0xff0b6a64),
                  height: 1.4,
                ),
                children: [
                  TextSpan(
                    text: 'Nouvelle inscription\n',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Cliquez sur commencer pour ajouter\nun nouvelle adhérent',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Container(),
          Align(
            alignment: Alignment(-0.597, 0.295),
            child: SizedBox(
              width: 56.0,
              height: 58.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(size: 28.2, end: 1.0),
                    Pin(size: 32.8, middle: 0.478),
                    child: SvgPicture.string(
                      _svg_ffp3p,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 40.8, start: 1.0),
                    Pin(start: 1.0, end: 1.0),
                    child: SvgPicture.string(
                      _svg_fhzbc1,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 17.9, middle: 0.621),
                    Pin(size: 47.6, start: 1.0),
                    child: SvgPicture.string(
                      _svg_jikonl,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.507, 0.17),
                    child: SizedBox(
                      width: 20.0,
                      height: 26.0,
                      child: SvgPicture.string(
                        _svg_p5w32w,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 7.8, middle: 0.6998),
                    Pin(size: 7.8, start: 1.0),
                    child: SvgPicture.string(
                      _svg_qxchjf,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 38.9, end: 1.0),
                    Pin(size: 13.6, middle: 0.2174),
                    child: SvgPicture.string(
                      _svg_iancd0,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.306, 0.172),
                    child: SizedBox(
                      width: 9.0,
                      height: 2.0,
                      child: SvgPicture.string(
                        _svg_xpzqwi,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 7.8, start: 6.8),
                    Pin(size: 7.8, middle: 0.5962),
                    child: SvgPicture.string(
                      _svg_zejmpt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment(-0.346, 0.586),
                    child: SizedBox(
                      width: 6.0,
                      height: 2.0,
                      child: SvgPicture.string(
                        _svg_mqh83i,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 7.8, start: 6.8),
                    Pin(size: 7.8, middle: 0.8269),
                    child: SvgPicture.string(
                      _svg_eiba6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 7.8, start: 6.8),
                    Pin(size: 19.5, start: 6.8),
                    child: SvgPicture.string(
                      _svg_uhuzua,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.113, 0.471),
                    child: SizedBox(
                      width: 7.0,
                      height: 8.0,
                      child: SvgPicture.string(
                        _svg_pghhpi,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                  ),
                  SizedBox.expand(
                      child: SvgPicture.string(
                    _svg_xzhg3k,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  )),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 44.0, end: 43.0),
            Pin(size: 20.0, end: 23.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 15,
                  color: const Color(0xff0e9583),
                  letterSpacing: -0.15,
                  height: 2,
                ),
                children: [
                  TextSpan(
                    text: 'Développé par',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: ' ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  TextSpan(
                    text: 'Propulse Group',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_wo3294 =
    '<svg viewBox="29.0 183.0 361.0 166.0" ><path transform="translate(29.0, 183.0)" d="M 15 0 L 346 0 C 354.2842712402344 0 361 6.715728759765625 361 15 L 361 151 C 361 159.2842712402344 354.2842712402344 166 346 166 L 15 166 C 6.715728759765625 166 0 159.2842712402344 0 151 L 0 15 C 0 6.715728759765625 6.715728759765625 0 15 0 Z" fill="#ffffff" fill-opacity="0.51" stroke="none" stroke-width="1" stroke-opacity="0.51" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i3cni4 =
    '<svg viewBox="0.0 26.6 1.0 14.8" ><path transform="translate(-424.9, -1102.13)" d="M 424.9482727050781 1143.477416992188 C 424.919189453125 1143.477416992188 424.9000244140625 1143.458618164062 424.9000244140625 1143.4296875 L 424.9000244140625 1128.748168945312 C 424.9000244140625 1128.719116210938 424.919189453125 1128.699951171875 424.9482727050781 1128.699951171875 C 424.9769897460938 1128.699951171875 424.9962158203125 1128.719116210938 424.9962158203125 1128.748168945312 L 424.9962158203125 1143.4296875 C 424.9962158203125 1143.458618164062 424.9769897460938 1143.477416992188 424.9482727050781 1143.477416992188 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o89l5m =
    '<svg viewBox="19.1 55.5 38.8 13.6" ><path transform="translate(-802.9, -1674.6)" d="M 860.7776489257812 1743.6943359375 L 822.048095703125 1743.6943359375 C 822.0192260742188 1743.6943359375 822 1743.67529296875 822 1743.646484375 C 822 1743.617431640625 822.0192260742188 1743.59814453125 822.048095703125 1743.59814453125 L 860.734130859375 1743.59814453125 L 860.734130859375 1730.148193359375 C 860.734130859375 1730.119140625 860.75341796875 1730.10009765625 860.7822265625 1730.10009765625 C 860.8111572265625 1730.10009765625 860.830322265625 1730.119140625 860.830322265625 1730.148193359375 L 860.830322265625 1743.646484375 C 860.82568359375 1743.67529296875 860.8062744140625 1743.6943359375 860.7776489257812 1743.6943359375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bbcq7 =
    '<svg viewBox="44.8 0.0 13.1 50.7" ><path transform="translate(-1311.4, -576.3)" d="M 1369.279663085938 626.95458984375 C 1369.250854492188 626.95458984375 1369.2314453125 626.935302734375 1369.2314453125 626.906494140625 L 1369.2314453125 576.3961791992188 L 1356.248046875 576.3961791992188 C 1356.21923828125 576.3961791992188 1356.199951171875 576.376953125 1356.199951171875 576.3480834960938 C 1356.199951171875 576.3191528320312 1356.21923828125 576.300048828125 1356.248046875 576.300048828125 L 1369.279663085938 576.300048828125 C 1369.308715820312 576.300048828125 1369.327758789062 576.3191528320312 1369.327758789062 576.3480834960938 L 1369.327758789062 626.906494140625 C 1369.327758789062 626.9306640625 1369.308715820312 626.95458984375 1369.279663085938 626.95458984375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k9vpr5 =
    '<svg viewBox="0.0 0.0 14.0 53.6" ><path transform="translate(-424.9, -576.3)" d="M 424.9482727050781 629.907958984375 C 424.919189453125 629.907958984375 424.9000244140625 629.8890991210938 424.9000244140625 629.8599853515625 L 424.9000244140625 576.34814453125 C 424.9000244140625 576.3191528320312 424.919189453125 576.300048828125 424.9482727050781 576.300048828125 L 438.8311462402344 576.300048828125 C 438.8601684570312 576.300048828125 438.87939453125 576.3191528320312 438.87939453125 576.34814453125 C 438.87939453125 576.376953125 438.8601684570312 576.3960571289062 438.8311462402344 576.3960571289062 L 424.9962158203125 576.3960571289062 L 424.9962158203125 629.8648071289062 C 424.9962158203125 629.8890991210938 424.9769897460938 629.907958984375 424.9482727050781 629.907958984375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cq7thh =
    '<svg viewBox="1.1 1.1 28.4 15.7" ><path transform="translate(-752.68, -359.58)" d="M 753.800048828125 367.4780883789062 L 753.800048828125 376.4063110351562 L 782.2298583984375 376.4063110351562 L 782.2298583984375 367.4780883789062 L 774.798095703125 367.4780883789062 L 774.798095703125 367.4780883789062 C 774.798095703125 363.7353515625 771.7625732421875 360.7000427246094 768.02001953125 360.7000427246094 C 764.27734375 360.7000427246094 761.2418212890625 363.7353515625 761.2418212890625 367.4780883789062 L 761.2418212890625 367.4780883789062 L 753.800048828125 367.4780883789062 Z M 773.0084228515625 367.4780883789062 L 763.016845703125 367.4780883789062 L 763.016845703125 367.4780883789062 C 763.016845703125 364.7215576171875 765.2537841796875 362.4846801757812 768.0150146484375 362.4846801757812 C 770.7713623046875 362.4846801757812 773.0084228515625 364.7167358398438 773.0084228515625 367.4780883789062 L 773.0084228515625 367.4780883789062 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kzr7m6 =
    '<svg viewBox="0.0 0.0 28.5 15.8" ><path transform="translate(-730.5, -337.5)" d="M 758.9781494140625 353.3024291992188 L 730.5480346679688 353.3024291992188 C 730.5193481445312 353.3024291992188 730.4998779296875 353.2832641601562 730.4998779296875 353.2543029785156 L 730.4998779296875 344.3260803222656 C 730.4998779296875 344.2971801757812 730.5193481445312 344.2779541015625 730.5480346679688 344.2779541015625 L 737.9370727539062 344.2779541015625 C 737.9609985351562 340.535400390625 741.015625 337.5 744.7631225585938 337.5 C 748.510498046875 337.5 751.5651245117188 340.535400390625 751.58935546875 344.2779541015625 L 758.9781494140625 344.2779541015625 C 759.007080078125 344.2779541015625 759.0263671875 344.2971801757812 759.0263671875 344.3260803222656 L 759.0263671875 353.2543029785156 C 759.0263671875 353.2832641601562 759.007080078125 353.3024291992188 758.9781494140625 353.3024291992188 Z M 730.6010131835938 353.2062377929688 L 758.9349365234375 353.2062377929688 L 758.9349365234375 344.3742065429688 L 751.5458984375 344.3742065429688 C 751.5169067382812 344.3742065429688 751.4977416992188 344.3548583984375 751.4977416992188 344.3260803222656 C 751.4977416992188 340.6172180175781 748.476806640625 337.5962219238281 744.7678833007812 337.5962219238281 C 741.0591430664062 337.5962219238281 738.0380249023438 340.6123046875 738.0380249023438 344.3260803222656 C 738.0380249023438 344.3548583984375 738.0188598632812 344.3742065429688 737.9899291992188 344.3742065429688 L 730.6010131835938 344.3742065429688 L 730.6010131835938 353.2062377929688 Z M 749.7611694335938 344.3742065429688 L 739.77001953125 344.3742065429688 C 739.7410888671875 344.3742065429688 739.7217407226562 344.3548583984375 739.7217407226562 344.3260803222656 C 739.7217407226562 341.5456237792969 741.9827270507812 339.28466796875 744.7678833007812 339.28466796875 C 747.5484619140625 339.28466796875 749.814208984375 341.5456237792969 749.814208984375 344.3260803222656 C 749.8093872070312 344.3500671386719 749.7853393554688 344.3742065429688 749.7611694335938 344.3742065429688 Z M 739.8179931640625 344.2779541015625 L 749.7132568359375 344.2779541015625 C 749.689208984375 341.574462890625 747.4763793945312 339.3809204101562 744.7678833007812 339.3809204101562 C 742.0548706054688 339.3809204101562 739.8421630859375 341.5697631835938 739.8179931640625 344.2779541015625 Z" fill="#d3bba3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v8hv9 =
    '<svg viewBox="70.2 54.0 12.1 12.1" ><path transform="translate(-1719.24, -1370.78)" d="M 1794.431640625 1436.884643554688 C 1794.427490234375 1436.884643554688 1794.417358398438 1436.884643554688 1794.412841796875 1436.8798828125 L 1792.007202148438 1435.9033203125 C 1791.997680664062 1435.8984375 1791.988037109375 1435.888793945312 1791.983154296875 1435.87890625 C 1791.978393554688 1435.86962890625 1791.978393554688 1435.855224609375 1791.983154296875 1435.840576171875 L 1792.435668945312 1434.734252929688 C 1792.12744140625 1434.493774414062 1791.853393554688 1434.219970703125 1791.608520507812 1433.916748046875 L 1790.506225585938 1434.383056640625 C 1790.482177734375 1434.392822265625 1790.45361328125 1434.383056640625 1790.443969726562 1434.359252929688 L 1789.4384765625 1431.9677734375 C 1789.433715820312 1431.95849609375 1789.433715820312 1431.944091796875 1789.4384765625 1431.930053710938 C 1789.443359375 1431.920288085938 1789.452758789062 1431.910400390625 1789.462280273438 1431.90576171875 L 1790.564453125 1431.439331054688 C 1790.516357421875 1431.054443359375 1790.516357421875 1430.66455078125 1790.55908203125 1430.27978515625 L 1789.452758789062 1429.827514648438 C 1789.443359375 1429.822509765625 1789.433715820312 1429.813354492188 1789.428955078125 1429.803833007812 C 1789.42431640625 1429.7939453125 1789.42431640625 1429.779418945312 1789.428955078125 1429.764892578125 L 1790.405639648438 1427.364868164062 C 1790.415161132812 1427.340454101562 1790.443969726562 1427.325927734375 1790.468017578125 1427.340454101562 L 1791.57470703125 1427.792602539062 C 1791.815063476562 1427.484985351562 1792.089233398438 1427.210693359375 1792.39208984375 1426.965209960938 L 1791.92578125 1425.86376953125 C 1791.920776367188 1425.854370117188 1791.920776367188 1425.83984375 1791.92578125 1425.825317382812 C 1791.930297851562 1425.8154296875 1791.940185546875 1425.80615234375 1791.949829101562 1425.801147460938 L 1794.340209960938 1424.795776367188 C 1794.36474609375 1424.786010742188 1794.393310546875 1424.795776367188 1794.40283203125 1424.820068359375 L 1794.869873046875 1425.921752929688 C 1795.254638671875 1425.873657226562 1795.64404296875 1425.873657226562 1796.033569335938 1425.9169921875 L 1796.48583984375 1424.810302734375 C 1796.495239257812 1424.786010742188 1796.5244140625 1424.771728515625 1796.548461914062 1424.786010742188 L 1798.953979492188 1425.762573242188 C 1798.963500976562 1425.767456054688 1798.973022460938 1425.777099609375 1798.977416992188 1425.78662109375 C 1798.982543945312 1425.796508789062 1798.982543945312 1425.810913085938 1798.977416992188 1425.825317382812 L 1798.525390625 1426.932006835938 C 1798.833618164062 1427.172729492188 1799.107788085938 1427.44677734375 1799.352905273438 1427.749633789062 L 1800.454467773438 1427.283081054688 C 1800.478881835938 1427.272827148438 1800.507446289062 1427.283081054688 1800.517211914062 1427.306884765625 L 1801.522338867188 1429.69775390625 C 1801.527221679688 1429.707641601562 1801.527221679688 1429.722045898438 1801.522338867188 1429.736450195312 C 1801.517700195312 1429.745849609375 1801.508178710938 1429.755004882812 1801.498168945312 1429.760498046875 L 1800.397094726562 1430.226928710938 C 1800.444702148438 1430.611694335938 1800.444702148438 1431.0009765625 1800.401489257812 1431.386474609375 L 1801.508178710938 1431.83837890625 C 1801.517700195312 1431.843139648438 1801.527221679688 1431.852905273438 1801.532348632812 1431.8623046875 C 1801.536743164062 1431.872192382812 1801.536743164062 1431.886352539062 1801.532348632812 1431.901000976562 L 1800.555541992188 1434.30126953125 C 1800.546020507812 1434.325317382812 1800.517211914062 1434.339965820312 1800.492797851562 1434.325317382812 L 1799.386840820312 1433.87353515625 C 1799.145874023438 1434.18115234375 1798.872192382812 1434.45556640625 1798.56884765625 1434.700439453125 L 1799.035522460938 1435.802368164062 C 1799.040405273438 1435.811889648438 1799.040405273438 1435.82666015625 1799.035522460938 1435.840576171875 C 1799.030395507812 1435.850341796875 1799.020629882812 1435.859985351562 1799.011352539062 1435.864990234375 L 1796.620361328125 1436.8701171875 C 1796.596557617188 1436.8798828125 1796.567749023438 1436.8701171875 1796.557983398438 1436.845703125 L 1796.091186523438 1435.744384765625 C 1795.706665039062 1435.79248046875 1795.317138671875 1435.79248046875 1794.927124023438 1435.749145507812 L 1794.47509765625 1436.855590820312 C 1794.47021484375 1436.874877929688 1794.451293945312 1436.884643554688 1794.431640625 1436.884643554688 Z M 1792.093994140625 1435.830932617188 L 1794.407592773438 1436.77392578125 L 1794.85546875 1435.677124023438 C 1794.864868164062 1435.658081054688 1794.884155273438 1435.643432617188 1794.903076171875 1435.648193359375 C 1795.307250976562 1435.6962890625 1795.711059570312 1435.6962890625 1796.11572265625 1435.643432617188 C 1796.134887695312 1435.638671875 1796.158935546875 1435.6533203125 1796.168334960938 1435.672241210938 L 1796.63037109375 1436.764282226562 L 1798.934204101562 1435.797241210938 L 1798.472534179688 1434.705444335938 C 1798.463134765625 1434.6865234375 1798.472534179688 1434.662109375 1798.487060546875 1434.647583007812 C 1798.804565429688 1434.3974609375 1799.093139648438 1434.109008789062 1799.338500976562 1433.786499023438 C 1799.352905273438 1433.767456054688 1799.376586914062 1433.7626953125 1799.396606445312 1433.772583007812 L 1800.492797851562 1434.219970703125 L 1801.435913085938 1431.90576171875 L 1800.338989257812 1431.458374023438 C 1800.319702148438 1431.448974609375 1800.305786132812 1431.429443359375 1800.310180664062 1431.41015625 C 1800.358276367188 1431.00634765625 1800.358276367188 1430.601928710938 1800.305786132812 1430.197875976562 C 1800.300659179688 1430.1787109375 1800.314819335938 1430.155029296875 1800.334350585938 1430.145263671875 L 1801.426391601562 1429.683227539062 L 1800.454467773438 1427.384033203125 L 1799.362426757812 1427.845458984375 C 1799.343383789062 1427.855346679688 1799.319458007812 1427.8505859375 1799.304809570312 1427.8310546875 C 1799.054565429688 1427.513549804688 1798.765869140625 1427.224975585938 1798.444091796875 1426.979614257812 C 1798.424438476562 1426.965209960938 1798.419677734375 1426.94140625 1798.429443359375 1426.921752929688 L 1798.876586914062 1425.825317382812 L 1796.56298828125 1424.882568359375 L 1796.11572265625 1425.979125976562 C 1796.105712890625 1425.998413085938 1796.086669921875 1426.012817382812 1796.067138671875 1426.008178710938 C 1795.663208007812 1425.9599609375 1795.259155273438 1425.9599609375 1794.85546875 1426.012817382812 C 1794.836059570312 1426.017578125 1794.81201171875 1426.003173828125 1794.802124023438 1425.983764648438 L 1794.340209960938 1424.891723632812 L 1792.036376953125 1425.859008789062 L 1792.498046875 1426.950561523438 C 1792.507568359375 1426.97021484375 1792.498046875 1426.994262695312 1792.483520507812 1427.008422851562 C 1792.166137695312 1427.2587890625 1791.87744140625 1427.547729492188 1791.632568359375 1427.869873046875 C 1791.617919921875 1427.888916015625 1791.593872070312 1427.8935546875 1791.57470703125 1427.884155273438 L 1790.477661132812 1427.436889648438 L 1789.535034179688 1429.7509765625 L 1790.631469726562 1430.197875976562 C 1790.650512695312 1430.207885742188 1790.665161132812 1430.226928710938 1790.660278320312 1430.246215820312 C 1790.6123046875 1430.650024414062 1790.6123046875 1431.054443359375 1790.665161132812 1431.458374023438 C 1790.670166015625 1431.4775390625 1790.655639648438 1431.501831054688 1790.636352539062 1431.51123046875 L 1789.544189453125 1431.97314453125 L 1790.516357421875 1434.272827148438 L 1791.608520507812 1433.810791015625 C 1791.627075195312 1433.801025390625 1791.651123046875 1433.805786132812 1791.665771484375 1433.825439453125 C 1791.915771484375 1434.142700195312 1792.204711914062 1434.431762695312 1792.52685546875 1434.676635742188 C 1792.546142578125 1434.691284179688 1792.550903320312 1434.714965820312 1792.541015625 1434.734252929688 L 1792.093994140625 1435.830932617188 Z M 1795.4853515625 1433.574829101562 C 1794.412841796875 1433.574829101562 1793.387939453125 1432.944458007812 1792.950317382812 1431.896240234375 C 1792.666381835938 1431.218017578125 1792.661865234375 1430.472534179688 1792.935668945312 1429.7939453125 C 1793.214599609375 1429.11572265625 1793.7392578125 1428.581909179688 1794.412841796875 1428.297973632812 C 1795.807373046875 1427.710693359375 1797.424072265625 1428.365478515625 1798.011108398438 1429.764892578125 C 1798.294677734375 1430.443359375 1798.299438476562 1431.18896484375 1798.025268554688 1431.866821289062 C 1797.746215820312 1432.545532226562 1797.221923828125 1433.079467773438 1796.548461914062 1433.363403320312 C 1796.202270507812 1433.507934570312 1795.841430664062 1433.574829101562 1795.4853515625 1433.574829101562 Z M 1795.475708007812 1428.177490234375 C 1795.13427734375 1428.177490234375 1794.782958984375 1428.24462890625 1794.451293945312 1428.384521484375 C 1793.796875 1428.658447265625 1793.291748046875 1429.173217773438 1793.022094726562 1429.827514648438 C 1792.753173828125 1430.481689453125 1792.7578125 1431.20361328125 1793.031982421875 1431.857543945312 C 1793.599609375 1433.204467773438 1795.158203125 1433.83984375 1796.505004882812 1433.271850585938 L 1796.5244140625 1433.315307617188 L 1796.505004882812 1433.271850585938 C 1797.159790039062 1432.997802734375 1797.664306640625 1432.483032226562 1797.933959960938 1431.8291015625 C 1798.203125 1431.174682617188 1798.198120117188 1430.453125 1797.92431640625 1429.798706054688 C 1797.501342773438 1428.788208007812 1796.514892578125 1428.177490234375 1795.475708007812 1428.177490234375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iw350 =
    '<svg viewBox="0.0 0.6 16.0 14.2" ><path transform="translate(-1018.45, -612.36)" d="M 1034.484008789062 624.0365600585938 C 1034.484008789062 624.0365600585938 1027.225463867188 615.7576293945312 1026.2822265625 614.7379150390625 C 1026.186157226562 614.632080078125 1026.013061523438 614.4444580078125 1025.729125976562 614.2664794921875 C 1024.680297851562 613.616943359375 1023.805053710938 614.1895751953125 1022.390625 614.0067138671875 C 1020.783935546875 613.7997436523438 1019.999877929688 612.7752075195312 1019.696655273438 613.0541381835938 C 1019.485229492188 613.2467651367188 1019.672729492188 613.7180786132812 1020.375122070312 614.4588012695312 L 1020.375122070312 614.4588012695312 C 1019.77880859375 613.9586181640625 1018.936645507812 613.3141479492188 1018.662719726562 613.6411743164062 C 1018.3642578125 614.0404663085938 1019.259155273438 614.9158935546875 1019.831665039062 615.4161376953125 C 1019.143676757812 614.8101806640625 1018.59521484375 614.689697265625 1018.484741210938 614.9158935546875 C 1018.316162109375 615.26708984375 1018.739624023438 615.8635864257812 1019.677612304688 616.62841796875 L 1019.677612304688 616.62841796875 C 1018.879150390625 616.2772216796875 1018.633544921875 616.315673828125 1018.585693359375 616.5322875976562 C 1018.498901367188 616.9363403320312 1019.283081054688 617.5519409179688 1020.062377929688 617.9898071289062 C 1020.937866210938 618.485107421875 1021.789428710938 618.5621948242188 1022.328247070312 618.6007690429688 L 1022.328247070312 618.6007690429688 C 1024.9453125 622.1990356445312 1025.074951171875 622.035400390625 1027.100219726562 625.0034790039062 C 1029.0244140625 627.8272705078125 1033.579956054688 628.4237670898438 1034.484008789062 624.0365600585938 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_w53k8k =
    '<svg viewBox="2.2 2.3 2.6 1.0" ><path transform="translate(-1087.4, -677.38)" d="M 1092.128540039062 680.5188598632812 C 1092.114013671875 680.5188598632812 1092.099609375 680.5139770507812 1092.08984375 680.4995727539062 C 1091.916748046875 680.2832641601562 1091.613647460938 679.9896850585938 1091.147216796875 679.8357543945312 C 1090.483520507812 679.6144409179688 1089.906494140625 679.816650390625 1089.689575195312 679.9125366210938 C 1089.66552734375 679.9223022460938 1089.636596679688 679.9125366210938 1089.627197265625 679.8887939453125 C 1089.61767578125 679.86474609375 1089.627197265625 679.8357543945312 1089.65087890625 679.826171875 C 1089.877197265625 679.7252197265625 1090.488037109375 679.5134887695312 1091.180908203125 679.7443237304688 C 1091.671142578125 679.9080810546875 1091.988891601562 680.2156982421875 1092.167114257812 680.4419555664062 C 1092.181640625 680.4613037109375 1092.181640625 680.4948120117188 1092.157592773438 680.5092163085938 C 1092.152465820312 680.5139770507812 1092.138305664062 680.5188598632812 1092.128540039062 680.5188598632812 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yl5xvb =
    '<svg viewBox="3.6 0.0 1.7 1.0" ><path transform="translate(-1115.27, -632.73)" d="M 1118.948364257812 632.9180297851562 C 1118.92431640625 632.9180297851562 1118.89990234375 632.89892578125 1118.89990234375 632.875 C 1118.89990234375 632.8458862304688 1118.919311523438 632.826904296875 1118.943603515625 632.822021484375 C 1119.135864257812 632.8123779296875 1119.31396484375 632.7930297851562 1119.491821289062 632.7785034179688 C 1119.867431640625 632.7401733398438 1120.22314453125 632.7064819335938 1120.574340820312 632.7593994140625 C 1120.598388671875 632.7642211914062 1120.617431640625 632.7884521484375 1120.613037109375 632.8123779296875 C 1120.608032226562 632.83642578125 1120.583862304688 632.855712890625 1120.559814453125 632.8509521484375 C 1120.218017578125 632.8026733398438 1119.867431640625 632.83642578125 1119.496826171875 632.8699340820312 C 1119.323364257812 632.8941650390625 1119.140869140625 632.9085083007812 1118.948364257812 632.9180297851562 C 1118.948364257812 632.9180297851562 1118.948364257812 632.9180297851562 1118.948364257812 632.9180297851562 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p8ulz8 =
    '<svg viewBox="0.7 0.4 1.4 1.0" ><path transform="translate(-1057.67, -641.63)" d="M 1059.739379882812 642.72265625 C 1059.734985351562 642.72265625 1059.734985351562 642.72265625 1059.7294921875 642.72265625 C 1059.532348632812 642.6890258789062 1059.340576171875 642.6361083984375 1059.15771484375 642.5687255859375 C 1058.888061523438 642.4677734375 1058.632934570312 642.3331298828125 1058.402221679688 642.1693725585938 C 1058.383178710938 642.1549682617188 1058.373168945312 642.1260375976562 1058.392578125 642.1022338867188 C 1058.406982421875 642.0828857421875 1058.436157226562 642.0731201171875 1058.459838867188 642.0924682617188 C 1058.686157226562 642.2560424804688 1058.936157226562 642.385986328125 1059.195922851562 642.4822998046875 C 1059.3740234375 642.5494384765625 1059.5615234375 642.597412109375 1059.749145507812 642.6311645507812 C 1059.773193359375 642.6361083984375 1059.792846679688 642.6600341796875 1059.787841796875 642.6890258789062 C 1059.782592773438 642.7034301757812 1059.763793945312 642.72265625 1059.739379882812 642.72265625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gzzaj4 =
    '<svg viewBox="0.1 1.3 1.4 1.0" ><path transform="translate(-1045.2, -658.96)" d="M 1046.6396484375 660.9227294921875 C 1046.634521484375 660.9227294921875 1046.634521484375 660.9227294921875 1046.6298828125 660.9227294921875 C 1046.437255859375 660.8890991210938 1046.239990234375 660.8361206054688 1046.0576171875 660.7686767578125 C 1045.787841796875 660.6676635742188 1045.533203125 660.5330810546875 1045.30224609375 660.3694458007812 C 1045.28271484375 660.3550415039062 1045.273193359375 660.326416015625 1045.29248046875 660.302001953125 C 1045.30712890625 660.2828979492188 1045.335693359375 660.2732543945312 1045.35986328125 660.2925415039062 C 1045.5859375 660.4561767578125 1045.8359375 660.5859375 1046.095947265625 660.6820678710938 C 1046.27392578125 660.74951171875 1046.461669921875 660.7976684570312 1046.64892578125 660.831298828125 C 1046.67333984375 660.8361206054688 1046.6923828125 660.860107421875 1046.6875 660.8890991210938 C 1046.6826171875 660.908203125 1046.65869140625 660.9227294921875 1046.6396484375 660.9227294921875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fqqphk =
    '<svg viewBox="0.0 2.6 1.4 1.0" ><path transform="translate(-1043.48, -684.94)" d="M 1044.83935546875 688.22265625 C 1044.8349609375 688.22265625 1044.8349609375 688.22265625 1044.830078125 688.22265625 C 1044.632568359375 688.1890258789062 1044.440673828125 688.1361083984375 1044.257568359375 688.06884765625 C 1043.988037109375 687.9677734375 1043.733154296875 687.8329467773438 1043.502197265625 687.6694946289062 C 1043.48291015625 687.6549072265625 1043.4736328125 687.6260986328125 1043.492431640625 687.6019287109375 C 1043.50732421875 687.5828247070312 1043.5361328125 687.5734252929688 1043.56005859375 687.5924682617188 C 1043.785888671875 687.7560424804688 1044.0361328125 687.885986328125 1044.2958984375 687.9821166992188 C 1044.47412109375 688.049560546875 1044.661376953125 688.0974731445312 1044.84912109375 688.1312255859375 C 1044.873046875 688.1361083984375 1044.892333984375 688.16015625 1044.8876953125 688.1890258789062 C 1044.8828125 688.203369140625 1044.86328125 688.22265625 1044.83935546875 688.22265625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u6y76w =
    '<svg viewBox="4.2 0.0 3.4 2.2" ><path transform="translate(-1102.15, -599.56)" d="M 1107.347900390625 601.68310546875 C 1106.35693359375 600.4276123046875 1106.265502929688 599.7638549804688 1106.467651367188 599.61474609375 C 1106.809204101562 599.3596801757812 1108.09814453125 600.086181640625 1109.77734375 601.7407836914062 C 1109.103515625 601.7841796875 1108.025634765625 601.6397094726562 1107.347900390625 601.68310546875 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wb5de =
    '<svg viewBox="12.6 7.2 10.7 7.7" ><path transform="translate(-1268.28, -741.43)" d="M 1280.900268554688 756.330322265625 L 1291.574584960938 755.7290649414062 L 1291.170532226562 748.6000366210938 L 1280.900268554688 750.240234375 L 1280.900268554688 756.330322265625 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iu64i =
    '<svg viewBox="0.0 0.0 27.0 25.2" ><path transform="translate(-1339.3, -728.63)" d="M 1363.545043945312 739.339599609375 C 1363.545043945312 739.339599609375 1365.930908203125 728.2032470703125 1357.01708984375 728.6461181640625 C 1352.716430664062 728.8574829101562 1346.36181640625 729.069091796875 1339.300048828125 730.6807861328125 L 1341.243286132812 737.6318969726562 L 1342.51806640625 737.6318969726562 L 1345.548828125 753.8814697265625 L 1366.30615234375 753.8814697265625 L 1363.545043945312 739.339599609375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x1gwzk =
    '<svg viewBox="15.1 2.8 1.4 4.6" ><path transform="translate(-1638.46, -784.17)" d="M 1653.6298828125 791.590087890625 C 1653.625244140625 791.590087890625 1653.620361328125 791.590087890625 1653.615234375 791.590087890625 C 1653.59130859375 791.5804443359375 1653.5771484375 791.5565185546875 1653.581787109375 791.532470703125 L 1654.933349609375 787.0155029296875 C 1654.94287109375 786.9912719726562 1654.966796875 786.97705078125 1654.990966796875 786.9816284179688 C 1655.01513671875 786.9912719726562 1655.02978515625 787.0155029296875 1655.02490234375 787.0394287109375 L 1653.67333984375 791.5565185546875 C 1653.67333984375 791.5758666992188 1653.653564453125 791.590087890625 1653.6298828125 791.590087890625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u83ehp =
    '<svg viewBox="0.0 0.0 19.8 11.0" ><path transform="translate(-1303.89, -1042.5)" d="M 1321.477416992188 1042.5 C 1321.477416992188 1042.5 1321.477416992188 1042.5 1321.477416992188 1042.5 C 1314.939697265625 1044.015258789062 1310.268432617188 1044.967529296875 1308.839965820312 1045.319091796875 C 1308.69091796875 1045.357666015625 1308.42626953125 1045.420043945312 1308.11865234375 1045.593383789062 C 1306.9736328125 1046.233032226562 1307.060424804688 1047.344116210938 1306.165405273438 1048.566284179688 C 1305.150634765625 1049.95166015625 1303.793823242188 1050.158081054688 1303.894897460938 1050.581787109375 C 1303.966796875 1050.880004882812 1304.500854492188 1050.942504882812 1305.549926757812 1050.672973632812 C 1305.549926757812 1050.672973632812 1305.549926757812 1050.672973632812 1305.549926757812 1050.672973632812 C 1304.775268554688 1050.971069335938 1303.745727539062 1051.418579101562 1303.909423828125 1051.846801757812 C 1304.125610351562 1052.328002929688 1305.400512695312 1051.942993164062 1306.16064453125 1051.673828125 C 1305.24169921875 1052.000610351562 1304.852172851562 1052.452758789062 1305.001586914062 1052.664428710938 C 1305.24169921875 1053.00146484375 1306.011352539062 1052.914794921875 1307.209106445312 1052.433715820312 C 1307.209106445312 1052.433715820312 1307.209106445312 1052.433715820312 1307.209106445312 1052.433715820312 C 1306.473022460938 1052.996459960938 1306.381958007812 1053.242065429688 1306.559814453125 1053.40087890625 C 1306.891723632812 1053.689331054688 1307.868286132812 1053.275512695312 1308.676513671875 1052.775390625 C 1309.58544921875 1052.212158203125 1310.095581054688 1051.4619140625 1310.408203125 1050.985595703125 C 1310.408203125 1050.985595703125 1310.408203125 1050.985595703125 1310.408203125 1050.985595703125 C 1315.098266601562 1050.39892578125 1316.243774414062 1050.316528320312 1320.01953125 1049.759399414062 C 1324.315185546875 1049.118774414062 1324.835083007812 1044.010375976562 1321.477416992188 1042.5 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vjr7ws =
    '<svg viewBox="0.0 0.0 1.3 1.0" ><path transform="translate(-1337.62, -1190.83)" d="M 1337.670288085938 1191.863525390625 C 1337.651123046875 1191.863525390625 1337.636596679688 1191.853637695312 1337.626586914062 1191.834350585938 C 1337.61767578125 1191.810302734375 1337.626586914062 1191.781494140625 1337.651123046875 1191.771728515625 C 1337.920654296875 1191.641967773438 1338.166259765625 1191.483764648438 1338.39208984375 1191.286254882812 C 1338.546142578125 1191.151489257812 1338.690185546875 1191.007446289062 1338.815063476562 1190.843505859375 C 1338.829833984375 1190.824584960938 1338.863159179688 1190.819458007812 1338.882690429688 1190.833984375 C 1338.902099609375 1190.8486328125 1338.906616210938 1190.882202148438 1338.89208984375 1190.901489257812 C 1338.76220703125 1191.065063476562 1338.613159179688 1191.218872070312 1338.454345703125 1191.353271484375 C 1338.223999023438 1191.55078125 1337.968505859375 1191.71923828125 1337.694213867188 1191.849243164062 C 1337.684814453125 1191.863525390625 1337.679809570312 1191.863525390625 1337.670288085938 1191.863525390625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c50rou =
    '<svg viewBox="0.5 1.0 1.3 1.0" ><path transform="translate(-1347.33, -1211.39)" d="M 1347.87060546875 1213.463623046875 C 1347.851318359375 1213.463623046875 1347.836791992188 1213.453857421875 1347.827270507812 1213.434814453125 C 1347.817504882812 1213.410400390625 1347.827270507812 1213.381591796875 1347.851318359375 1213.371826171875 C 1348.12060546875 1213.2421875 1348.3662109375 1213.083251953125 1348.591796875 1212.885986328125 C 1348.74609375 1212.751953125 1348.890258789062 1212.607177734375 1349.015502929688 1212.443603515625 C 1349.029907226562 1212.424560546875 1349.063720703125 1212.41943359375 1349.082397460938 1212.434326171875 C 1349.10205078125 1212.448486328125 1349.107055664062 1212.48193359375 1349.092163085938 1212.50146484375 C 1348.962768554688 1212.664794921875 1348.813354492188 1212.81884765625 1348.65478515625 1212.953369140625 C 1348.423583984375 1213.15087890625 1348.168823242188 1213.319091796875 1347.894409179688 1213.44873046875 C 1347.884887695312 1213.45849609375 1347.879760742188 1213.463623046875 1347.87060546875 1213.463623046875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hp5wa1 =
    '<svg viewBox="1.7 1.8 1.3 1.0" ><path transform="translate(-1370.65, -1226.24)" d="M 1372.370483398438 1229.0634765625 C 1372.351196289062 1229.0634765625 1372.337036132812 1229.053955078125 1372.327514648438 1229.034912109375 C 1372.3173828125 1229.0107421875 1372.327514648438 1228.98193359375 1372.351196289062 1228.971923828125 C 1372.620483398438 1228.842529296875 1372.865844726562 1228.683349609375 1373.091674804688 1228.486328125 C 1373.245971679688 1228.3515625 1373.390380859375 1228.20751953125 1373.515380859375 1228.043701171875 C 1373.52978515625 1228.0244140625 1373.563232421875 1228.019775390625 1373.582641601562 1228.033935546875 C 1373.601684570312 1228.048095703125 1373.606689453125 1228.082275390625 1373.59228515625 1228.101806640625 C 1373.462280273438 1228.264892578125 1373.3134765625 1228.4189453125 1373.154418945312 1228.5537109375 C 1372.923461914062 1228.7509765625 1372.668701171875 1228.919189453125 1372.394287109375 1229.049072265625 C 1372.384521484375 1229.0634765625 1372.379638671875 1229.0634765625 1372.370483398438 1229.0634765625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l4dwua =
    '<svg viewBox="1.0 2.9 3.7 2.4" ><path transform="translate(-1323.28, -1099.99)" d="M 1326.640747070312 1105.132080078125 C 1324.962158203125 1105.411010742188 1324.29833984375 1105.156372070312 1324.2646484375 1104.886596679688 C 1324.20654296875 1104.439453125 1325.5390625 1103.616577148438 1327.939819335938 1102.900146484375 C 1327.631591796875 1103.554443359375 1326.943969726562 1104.47802734375 1326.640747070312 1105.132080078125 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fhcaoj =
    '<svg viewBox="14.2 0.0 10.4 13.5" ><path transform="translate(-1584.29, -905.8)" d="M 1608.870849609375 908.6333618164062 C 1607.26416015625 911.9622192382812 1604.041259765625 920.8281860351562 1599.9091796875 919.0867309570312 C 1596.488647460938 917.6436157226562 1600.0341796875 909.2107543945312 1601.409912109375 905.8001098632812 C 1603.89697265625 906.7477416992188 1606.3837890625 907.6906127929688 1608.870849609375 908.6333618164062 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oxhdrt =
    '<svg viewBox="0.0 0.0 4.5 2.3" ><path transform="translate(-1532.6, -745.1)" d="M 1532.600219726562 745.0999755859375 L 1537.102294921875 745.0999755859375 L 1534.851318359375 747.4429321289062 L 1532.600219726562 745.0999755859375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hc8vsb =
    '<svg viewBox="0.9 1.3 2.7 13.2" ><path transform="translate(-1550.4, -770.71)" d="M 1553.075073242188 772 L 1552.651611328125 772 L 1552.228515625 772 L 1551.300048828125 783.8242797851562 L 1552.651611328125 785.1952514648438 L 1554.003540039062 783.8242797851562 L 1553.075073242188 772 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_okj6mu =
    '<svg viewBox="20.2 32.4 23.4 8.8" ><path transform="translate(-1417.82, -1179.13)" d="M 1459.199462890625 1211.5 L 1461.359619140625 1220.260009765625 L 1438.000122070312 1220.260009765625 L 1440.02978515625 1211.5 L 1459.199462890625 1211.5 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y8oksw =
    '<svg viewBox="1.3 2.4 5.4 7.5" ><path transform="translate(-1438.05, -586.26)" d="M 1442.1484375 596.16259765625 C 1443.245849609375 596.3408813476562 1444.510864257812 593.4495849609375 1444.510864257812 593.4495849609375 L 1444.741821289062 590.2554931640625 C 1444.053588867188 588.8507690429688 1442.355712890625 588.2736206054688 1440.955444335938 588.9614868164062 C 1439.55126953125 589.6492919921875 1438.973754882812 591.3425903320312 1439.661987304688 592.747314453125 C 1439.656982421875 592.747314453125 1441.033203125 595.9801025390625 1442.1484375 596.16259765625 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tz2mi =
    '<svg viewBox="-0.3 0.4 1.7 1.7" ><path transform="translate(-1458.28, -657.28)" d="M 1458.898803710938 657.6463623046875 C 1458.437133789062 657.5838623046875 1458.008911132812 657.90625 1457.946166992188 658.3681030273438 C 1457.883911132812 658.8297729492188 1458.206420898438 659.2581176757812 1458.667846679688 659.3206176757812 C 1459.129516601562 659.3831176757812 1459.557739257812 659.0604858398438 1459.620239257812 658.5989379882812 C 1459.6875 658.1321411132812 1459.365234375 657.7090454101562 1458.898803710938 657.6463623046875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cclmj =
    '<svg viewBox="0.0 0.0 1.5 1.8" ><path transform="translate(-1465.0, -650.1)" d="M 1466.51513671875 650.0999755859375 C 1466.51513671875 650.0999755859375 1465.832275390625 650.2058715820312 1465.4140625 650.7012329101562 C 1464.99560546875 651.1920166015625 1465 651.884765625 1465 651.884765625 C 1465 651.884765625 1465.68310546875 651.7786865234375 1466.1015625 651.2833251953125 C 1466.52001953125 650.7877197265625 1466.51513671875 650.0999755859375 1466.51513671875 650.0999755859375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xc7 =
    '<svg viewBox="0.6 0.0 1.0 1.0" ><path transform="translate(-1477.8, -650.1)" d="M 1479.309936523438 650.0999755859375 C 1479.309936523438 650.0999755859375 1478.84375 650.1720581054688 1478.449096679688 650.4751586914062 C 1478.363037109375 650.53759765625 1479.04052734375 651.0958251953125 1479.088989257812 650.994873046875 C 1479.31494140625 650.556884765625 1479.309936523438 650.0999755859375 1479.309936523438 650.0999755859375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gmbhr =
    '<svg viewBox="2.0 7.0 1.1 1.4" ><path transform="translate(-1451.17, -677.29)" d="M 1453.396606445312 684.300048828125 C 1453.396606445312 684.300048828125 1453.050048828125 685.3970336914062 1453.184448242188 685.57470703125 C 1453.343139648438 685.7864379882812 1454.209594726562 685.5411987304688 1454.209594726562 685.5411987304688 C 1454.209594726562 685.5411987304688 1453.376953125 684.3096923828125 1453.396606445312 684.300048828125 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iz4h8 =
    '<svg viewBox="0.9 1.0 6.4 5.0" ><path transform="translate(-1429.51, -559.16)" d="M 1435.181762695312 560.199951171875 C 1435.181762695312 560.199951171875 1437.712036132812 562.2877197265625 1436.452026367188 564.2215576171875 L 1435.759033203125 564.091552734375 L 1434.931518554688 565.174072265625 L 1434.623901367188 563.620361328125 C 1434.450439453125 563.052734375 1433.79638671875 562.783203125 1433.27197265625 563.0670166015625 L 1430.987060546875 564.3033447265625 L 1430.400146484375 563.0430908203125 C 1431.453491210938 561.301513671875 1432.968872070312 560.2432861328125 1435.181762695312 560.199951171875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qpkxkt =
    '<svg viewBox="2.3 0.8 1.1 1.2" ><path transform="translate(-1456.54, -554.65)" d="M 1459.474731445312 556.6674194335938 C 1459.763549804688 556.5950927734375 1459.936767578125 556.3016967773438 1459.864990234375 556.012939453125 C 1459.792724609375 555.724365234375 1459.460815429688 555.3972778320312 1459.17236328125 555.474365234375 C 1458.883544921875 555.5465087890625 1458.748779296875 555.9938354492188 1458.82080078125 556.282470703125 C 1458.892700195312 556.5662841796875 1459.186401367188 556.7443237304688 1459.474731445312 556.6674194335938 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ujtpi4 =
    '<svg viewBox="1.7 1.3 1.1 1.1" ><path transform="translate(-1444.98, -565.07)" d="M 1447.620361328125 567.40576171875 C 1447.8369140625 567.2037353515625 1447.846435546875 566.862060546875 1447.64453125 566.645751953125 C 1447.442626953125 566.4293212890625 1446.990478515625 566.3041381835938 1446.773681640625 566.5109252929688 C 1446.55712890625 566.7179565429688 1446.653564453125 567.1699829101562 1446.860107421875 567.3865966796875 C 1447.0625 567.6029052734375 1447.40380859375 567.6127319335938 1447.620361328125 567.40576171875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cbis =
    '<svg viewBox="0.6 1.8 1.6 1.5" ><path transform="translate(-1423.56, -574.45)" d="M 1425.5927734375 577.4824829101562 C 1425.833374023438 577.1600341796875 1425.76611328125 576.6983032226562 1425.443969726562 576.4576416015625 C 1425.121337890625 576.2172241210938 1424.491455078125 576.1595458984375 1424.250854492188 576.4818115234375 C 1424.01025390625 576.80419921875 1424.245849609375 577.3910522460938 1424.572875976562 577.631591796875 C 1424.890502929688 577.8720703125 1425.3525390625 577.8046264648438 1425.5927734375 577.4824829101562 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_na9tcu =
    '<svg viewBox="3.1 0.5 1.1 1.2" ><path transform="translate(-1472.35, -547.78)" d="M 1476.07080078125 549.4574584960938 C 1476.3642578125 549.3948974609375 1476.54736328125 549.1063842773438 1476.479858398438 548.8128662109375 C 1476.417114257812 548.5243530273438 1476.094848632812 548.1876220703125 1475.801513671875 548.2501220703125 C 1475.508056640625 548.3126220703125 1475.359008789062 548.7551879882812 1475.421752929688 549.0438232421875 C 1475.48876953125 549.3373413085938 1475.777465820312 549.5200805664062 1476.07080078125 549.4574584960938 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vdukga =
    '<svg viewBox="0.0 2.9 1.5 1.3" ><path transform="translate(-1412.07, -595.02)" d="M 1413.568969726562 598.4819946289062 C 1413.549682617188 598.12109375 1413.242065429688 597.8469848632812 1412.880981445312 597.870849609375 C 1412.520263671875 597.8901977539062 1412.058227539062 598.21240234375 1412.08251953125 598.568359375 C 1412.101928710938 598.929443359375 1412.596801757812 599.1890258789062 1412.957885742188 599.169677734375 C 1413.313842773438 599.1505737304688 1413.588012695312 598.8427124023438 1413.568969726562 598.4819946289062 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oti02u =
    '<svg viewBox="3.7 0.0 1.3 1.5" ><path transform="translate(-1485.47, -538.6)" d="M 1489.887817382812 540.1365356445312 C 1490.25830078125 540.1270141601562 1490.5517578125 539.8143310546875 1490.537353515625 539.4436645507812 C 1490.528076171875 539.073486328125 1490.210205078125 538.5875244140625 1489.839721679688 538.5972290039062 C 1489.469482421875 538.6067504882812 1489.185791015625 539.11181640625 1489.1953125 539.4823608398438 C 1489.205078125 539.8575439453125 1489.517700195312 540.1461181640625 1489.887817382812 540.1365356445312 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qrut7j =
    '<svg viewBox="4.7 0.2 1.1 1.2" ><path transform="translate(-1505.76, -542.47)" d="M 1510.818603515625 543.7861328125 C 1511.08349609375 543.90625 1511.395874023438 543.7908935546875 1511.51611328125 543.5263671875 C 1511.63671875 543.2616577148438 1511.583862304688 542.814453125 1511.319213867188 542.6940307617188 C 1511.054443359375 542.5738525390625 1510.679077148438 542.8287353515625 1510.55908203125 543.0934448242188 C 1510.438598632812 543.3532104492188 1510.554077148438 543.6658935546875 1510.818603515625 543.7861328125 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t2exy =
    '<svg viewBox="0.0 3.8 1.8 1.6" ><path transform="translate(-1411.84, -613.0)" d="M 1413.563720703125 617.2627563476562 C 1413.400146484375 616.8539428710938 1412.943603515625 616.6566162109375 1412.533935546875 616.8154907226562 C 1412.12548828125 616.9789428710938 1411.711669921875 617.5225219726562 1411.87548828125 617.9314575195312 C 1412.038818359375 618.3403930664062 1412.712158203125 618.4557495117188 1413.11669921875 618.2921752929688 C 1413.525390625 618.1287841796875 1413.72705078125 617.6669311523438 1413.563720703125 617.2627563476562 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ksdc3e =
    '<svg viewBox="5.6 3.5 2.0 2.0" ><path transform="translate(-1522.19, -608.31)" d="M 1529.384765625 612.070068359375 C 1529.7939453125 612.4212036132812 1529.837158203125 613.036865234375 1529.4853515625 613.4459838867188 C 1529.134765625 613.8547973632812 1528.5185546875 613.8980712890625 1528.10986328125 613.546875 C 1527.70068359375 613.1956176757812 1527.65771484375 612.5799560546875 1528.009033203125 612.1710205078125 C 1528.35986328125 611.76220703125 1528.975830078125 611.7140502929688 1529.384765625 612.070068359375 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vkqgay =
    '<svg viewBox="2.6 4.8 4.2 5.7" ><path transform="translate(-1462.73, -634.46)" d="M 1465.300170898438 642.806884765625 L 1466.608642578125 644.788818359375 C 1466.79150390625 645.06298828125 1467.166870117188 645.1304931640625 1467.436157226562 644.9378662109375 C 1467.503540039062 644.8897705078125 1467.575439453125 644.8369140625 1467.652587890625 644.779052734375 C 1468.970336914062 643.7738037109375 1469.677978515625 642.162353515625 1469.518920898438 640.5123291015625 L 1469.518920898438 640.5123291015625 C 1469.466064453125 639.9591064453125 1469.07666015625 639.497314453125 1468.542236328125 639.34814453125 L 1468.364624023438 639.2999267578125 L 1468.06591796875 639.73779296875 C 1468.06591796875 639.73779296875 1468.335571289062 641.04150390625 1467.951049804688 641.3443603515625 C 1467.565673828125 641.6474609375 1466.589721679688 641.705322265625 1465.300170898438 642.806884765625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_a1c878 =
    '<svg viewBox="3.6 7.8 1.0 1.0" ><path transform="translate(-1483.38, -692.08)" d="M 1487.095825195312 700.54638671875 C 1487.076904296875 700.54638671875 1487.062255859375 700.54638671875 1487.04296875 700.5416259765625 C 1487.018920898438 700.5369873046875 1487 700.5126953125 1487 700.48876953125 C 1487.004638671875 700.464599609375 1487.02880859375 700.4454345703125 1487.052856445312 700.4454345703125 C 1487.187255859375 700.4598388671875 1487.322021484375 700.3974609375 1487.394165039062 700.2772216796875 C 1487.461669921875 700.166259765625 1487.456909179688 700.0174560546875 1487.384765625 699.9068603515625 C 1487.3701171875 699.882568359375 1487.375 699.8536376953125 1487.39892578125 699.8394775390625 C 1487.422973632812 699.824951171875 1487.451904296875 699.82958984375 1487.466430664062 699.8536376953125 C 1487.557861328125 699.9932861328125 1487.562866210938 700.1810302734375 1487.475830078125 700.3251953125 C 1487.39892578125 700.464599609375 1487.254760742188 700.54638671875 1487.095825195312 700.54638671875 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u0nop =
    '<svg viewBox="4.4 2.3 1.0 1.4" ><path transform="translate(-1498.54, -584.12)" d="M 1502.970458984375 587.822265625 C 1502.965698242188 587.822265625 1502.955810546875 587.822265625 1502.951171875 587.8173217773438 C 1502.927124023438 587.8078002929688 1502.917602539062 587.7788696289062 1502.927124023438 587.7548828125 L 1503.518920898438 586.4511108398438 C 1503.528442382812 586.42724609375 1503.557495117188 586.4175415039062 1503.58154296875 586.42724609375 C 1503.605590820312 586.4368286132812 1503.61474609375 586.4656982421875 1503.605590820312 586.4896240234375 L 1503.013793945312 587.7933349609375 C 1503.009155273438 587.8124389648438 1502.989501953125 587.822265625 1502.970458984375 587.822265625 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_z0xet =
    '<svg viewBox="3.3 3.2 7.0 6.8" ><path transform="translate(-1478.1, -601.09)" d="M 1483.926391601562 611.0263061523438 L 1488.410278320312 611.0263061523438 L 1484.311157226562 604.474365234375 C 1483.945922851562 603.8153076171875 1482.815551757812 604.7869873046875 1482.1513671875 605.1526489257812 C 1481.492431640625 605.5181884765625 1481.252319335938 606.3504638671875 1481.617797851562 607.0094604492188 L 1483.926391601562 611.0263061523438 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jfh2j =
    '<svg viewBox="0.0 0.0 25.7 1.0" ><path transform="translate(-673.6, -964.3)" d="M 699.25439453125 964.3963012695312 L 673.6482543945312 964.3963012695312 C 673.6192626953125 964.3963012695312 673.6000366210938 964.3771362304688 673.6000366210938 964.3483276367188 C 673.6000366210938 964.3191528320312 673.6192626953125 964.2999877929688 673.6482543945312 964.2999877929688 L 699.25439453125 964.2999877929688 C 699.2833251953125 964.2999877929688 699.3025512695312 964.3191528320312 699.3025512695312 964.3483276367188 C 699.3025512695312 964.3771362304688 699.2833251953125 964.3963012695312 699.25439453125 964.3963012695312 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ghwai5 =
    '<svg viewBox="8.3 2.7 17.4 1.0" ><path transform="translate(-837.9, -1018.08)" d="M 863.551513671875 1020.896118164062 L 846.2484130859375 1020.896118164062 C 846.2194213867188 1020.896118164062 846.2001342773438 1020.876831054688 846.2001342773438 1020.848266601562 C 846.2001342773438 1020.819213867188 846.2194213867188 1020.799926757812 846.2484130859375 1020.799926757812 L 863.551513671875 1020.799926757812 C 863.5805053710938 1020.799926757812 863.5997924804688 1020.819213867188 863.5997924804688 1020.848266601562 C 863.5997924804688 1020.872192382812 863.5805053710938 1020.896118164062 863.551513671875 1020.896118164062 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c4ptyv =
    '<svg viewBox="0.0 2.7 5.9 1.0" ><path transform="translate(-673.6, -1018.08)" d="M 679.4592895507812 1020.896118164062 L 673.6482543945312 1020.896118164062 C 673.6192626953125 1020.896118164062 673.6000366210938 1020.876831054688 673.6000366210938 1020.848266601562 C 673.6000366210938 1020.819213867188 673.6192626953125 1020.799926757812 673.6482543945312 1020.799926757812 L 679.4592895507812 1020.799926757812 C 679.4882202148438 1020.799926757812 679.5073852539062 1020.819213867188 679.5073852539062 1020.848266601562 C 679.5073852539062 1020.872192382812 679.4832153320312 1020.896118164062 679.4592895507812 1020.896118164062 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ne7ae =
    '<svg viewBox="18.6 5.4 7.1 1.0" ><path transform="translate(-1041.32, -1071.77)" d="M 1066.971435546875 1077.296508789062 L 1059.948364257812 1077.296508789062 C 1059.919189453125 1077.296508789062 1059.900024414062 1077.27685546875 1059.900024414062 1077.248046875 C 1059.900024414062 1077.218994140625 1059.919189453125 1077.2001953125 1059.948364257812 1077.2001953125 L 1066.971435546875 1077.2001953125 C 1067.00048828125 1077.2001953125 1067.019409179688 1077.218994140625 1067.019409179688 1077.248046875 C 1067.019409179688 1077.27685546875 1067.00048828125 1077.296508789062 1066.971435546875 1077.296508789062 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_evc =
    '<svg viewBox="0.0 5.4 14.0 1.0" ><path transform="translate(-673.6, -1071.77)" d="M 687.56494140625 1077.296508789062 L 673.6482543945312 1077.296508789062 C 673.6192626953125 1077.296508789062 673.6000366210938 1077.27685546875 673.6000366210938 1077.248046875 C 673.6000366210938 1077.218994140625 673.6192626953125 1077.2001953125 673.6482543945312 1077.2001953125 L 687.5603637695312 1077.2001953125 C 687.5888671875 1077.2001953125 687.608154296875 1077.218994140625 687.608154296875 1077.248046875 C 687.608154296875 1077.27685546875 687.5888671875 1077.296508789062 687.56494140625 1077.296508789062 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ythhct =
    '<svg viewBox="0.0 0.0 11.9 15.1" ><path transform="translate(-1082.9, -1081.3)" d="M 1083.183959960938 1091.007080078125 C 1084.762084960938 1089.323364257812 1088.32666015625 1085.5087890625 1088.682739257812 1085.119018554688 C 1089.356079101562 1084.387939453125 1092.655883789062 1080.871337890625 1093.170532226562 1081.342895507812 C 1093.50244140625 1081.64599609375 1091.88623046875 1083.435424804688 1091.626342773438 1083.76708984375 C 1092.025512695312 1083.454833984375 1093.815185546875 1081.549926757812 1094.142578125 1081.794799804688 C 1094.498657226562 1082.059692382812 1092.434448242188 1084.690795898438 1092.425170898438 1084.715209960938 C 1092.680053710938 1084.460083007812 1094.522705078125 1082.555419921875 1094.7919921875 1082.833862304688 C 1095.104736328125 1083.15625 1093.36328125 1085.302001953125 1093.06494140625 1085.638793945312 C 1093.12744140625 1085.648071289062 1094.392944335938 1084.180908203125 1094.739135742188 1084.455444335938 C 1095.046997070312 1084.700805664062 1093.67578125 1086.432250976562 1093.51708984375 1086.696655273438 C 1093.093627929688 1087.3798828125 1092.155883789062 1088.515258789062 1091.160034179688 1089.852783203125 C 1088.812255859375 1092.998657226562 1087.633666992188 1094.302490234375 1086.229125976562 1095.615478515625 C 1085.681030273438 1096.125854492188 1084.434692382812 1096.827880859375 1082.900268554688 1096.19775390625 C 1083.006103515625 1094.56201171875 1083.073608398438 1092.637939453125 1083.183959960938 1091.007080078125 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tb =
    '<svg viewBox="7.1 2.5 2.1 2.1" ><path transform="translate(-1224.03, -1131.65)" d="M 1231.728881835938 1136.290893554688 C 1231.714477539062 1136.290893554688 1231.704711914062 1136.2861328125 1231.6953125 1136.2763671875 C 1231.67626953125 1136.256958007812 1231.67626953125 1136.228149414062 1231.6953125 1136.208984375 C 1233.229614257812 1134.713012695312 1233.205444335938 1134.395385742188 1233.15771484375 1134.332641601562 C 1233.119018554688 1134.275268554688 1232.854370117188 1134.160034179688 1231.228393554688 1134.991821289062 C 1231.204345703125 1135.006591796875 1231.175659179688 1134.996826171875 1231.165649414062 1134.972534179688 C 1231.151489257812 1134.948486328125 1231.161376953125 1134.919921875 1231.185424804688 1134.910034179688 C 1233.013305664062 1133.97216796875 1233.181518554688 1134.202758789062 1233.239501953125 1134.280029296875 C 1233.296997070312 1134.361694335938 1233.480102539062 1134.611694335938 1231.767333984375 1136.281005859375 C 1231.753173828125 1136.2861328125 1231.738647460938 1136.290893554688 1231.728881835938 1136.290893554688 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h9xdh =
    '<svg viewBox="0.0 6.7 11.0 8.5" ><path transform="translate(-924.8, -1212.95)" d="M 924.7998657226562 1224.5068359375 C 927.1957397460938 1225.80078125 933.8724975585938 1229.947143554688 935.5851440429688 1227.128784179688 C 936.9993286132812 1224.795532226562 930.3178100585938 1221.038208007812 928.0230102539062 1219.60009765625 C 926.9503784179688 1221.235961914062 925.8777465820312 1222.87109375 924.7998657226562 1224.5068359375 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ic9k1t =
    '<svg viewBox="0.0 8.3 10.2 9.5" ><path transform="translate(-461.9, -1246.45)" d="M 468.8660278320312 1254.800048828125 C 466.7494506835938 1256.5029296875 460.332275390625 1261.053955078125 462.2708740234375 1263.7236328125 C 463.872802734375 1265.931274414062 469.9292602539062 1261.231323242188 472.1419677734375 1259.673095703125 C 471.050048828125 1258.047119140625 469.9580688476562 1256.425903320312 468.8660278320312 1254.800048828125 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h4abnu =
    '<svg viewBox="1.4 0.0 3.1 3.1" ><path transform="translate(-707.33, -1387.7)" d="M 711.720947265625 1390.76953125 C 711.7064208984375 1390.76953125 711.6968994140625 1390.764038085938 711.687255859375 1390.75439453125 L 708.7144165039062 1387.781494140625 C 708.6952514648438 1387.762451171875 708.6952514648438 1387.733642578125 708.7144165039062 1387.714477539062 C 708.7335815429688 1387.695434570312 708.7628173828125 1387.695434570312 708.78173828125 1387.714477539062 L 711.7545776367188 1390.687133789062 C 711.7738037109375 1390.706176757812 711.7738037109375 1390.7353515625 711.7545776367188 1390.75439453125 C 711.7450561523438 1390.764038085938 711.7353515625 1390.76953125 711.720947265625 1390.76953125 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n60o52 =
    '<svg viewBox="0.0 1.4 3.1 3.1" ><path transform="translate(-680.2, -1414.73)" d="M 683.2210083007812 1419.168823242188 C 683.2066040039062 1419.168823242188 683.1969604492188 1419.164306640625 683.187255859375 1419.154541015625 L 680.2142944335938 1416.181884765625 C 680.1949462890625 1416.162109375 680.1949462890625 1416.1337890625 680.2142944335938 1416.114624023438 C 680.233642578125 1416.095092773438 680.2625732421875 1416.095092773438 680.2816772460938 1416.114624023438 L 683.254638671875 1419.087280273438 C 683.2738647460938 1419.1064453125 683.2738647460938 1419.135375976562 683.254638671875 1419.154541015625 C 683.2449340820312 1419.164306640625 683.2354125976562 1419.168823242188 683.2210083007812 1419.168823242188 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jphjc =
    '<svg viewBox="1.0 1.0 2.4 2.4" ><path transform="translate(-700.48, -1407.98)" d="M 703.837890625 1411.3857421875 C 703.823486328125 1411.3857421875 703.8138427734375 1411.38134765625 703.80419921875 1411.371337890625 L 701.514404296875 1409.08154296875 C 701.4951171875 1409.0625 701.4951171875 1409.033447265625 701.514404296875 1409.01416015625 C 701.53369140625 1408.995361328125 701.5623779296875 1408.995361328125 701.581787109375 1409.01416015625 L 703.8717041015625 1411.304443359375 C 703.89111328125 1411.323486328125 703.89111328125 1411.3525390625 703.8717041015625 1411.371337890625 C 703.8668212890625 1411.38134765625 703.8524169921875 1411.3857421875 703.837890625 1411.3857421875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cbarhy =
    '<svg viewBox="5.3 4.4 23.7 16.6" ><path transform="translate(-567.26, -1167.74)" d="M 572.5999755859375 1176.239135742188 C 572.5999755859375 1176.239135742188 580.4412231445312 1171.563354492188 585.3911743164062 1172.159545898438 C 590.6442260742188 1172.794677734375 590.7643432617188 1173.280395507812 596.3397216796875 1176.19091796875 L 593.362060546875 1182.098022460938 L 592.4480590820312 1181.410034179688 C 592.4480590820312 1181.82421875 593.5545654296875 1188.659790039062 593.5545654296875 1188.659790039062 L 573.49951171875 1188.659790039062 L 576.03466796875 1181.915405273438 L 574.8897094726562 1183.060180664062 L 572.5999755859375 1176.239135742188 Z" fill="#efbc73" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h9xyfu =
    '<svg viewBox="0.0 0.2 15.7 11.3" ><path transform="translate(-461.66, -1397.26)" d="M 467.3582153320312 1397.499877929688 C 469.4027099609375 1399.135375976562 474.4104614257812 1402.74365234375 474.8867797851562 1403.113891601562 C 475.7718505859375 1403.806640625 477.7057495117188 1405.235473632812 477.3641967773438 1405.932861328125 C 477.2486572265625 1406.163940429688 476.9840087890625 1406.3076171875 476.67626953125 1406.327026367188 C 476.7723999023438 1406.644897460938 476.6714477539062 1406.981323242188 476.4261474609375 1407.178833007812 C 476.1038208007812 1407.438720703125 475.7093505859375 1407.323120117188 475.6805419921875 1407.313354492188 C 475.7863159179688 1407.54443359375 475.76708984375 1407.813598632812 475.6276245117188 1407.996215820312 C 475.4303588867188 1408.251342773438 475.0262451171875 1408.32373046875 474.6942749023438 1408.116577148438 C 474.6895141601562 1408.18896484375 474.6558227539062 1408.443725585938 474.4441528320312 1408.63134765625 C 474.2084350585938 1408.83837890625 473.8525390625 1408.876708984375 473.5350341796875 1408.722900390625 C 472.7460327148438 1408.107299804688 471.3606567382812 1407.3466796875 469.7539672851562 1406.336791992188 C 465.9874267578125 1403.965209960938 464.4095458984375 1402.748046875 462.7979125976562 1401.271484375 C 462.172607421875 1400.69873046875 461.2681884765625 1399.351806640625 461.845458984375 1397.557495117188 C 463.6975708007812 1397.533813476562 465.5062866210938 1397.519165039062 467.3582153320312 1397.499877929688 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g8eh7r =
    '<svg viewBox="2.5 0.0 1.0 1.0" ><path transform="translate(-754.02, -1549.49)" d="M 756.5350341796875 1549.953491210938 C 756.5253295898438 1549.953491210938 756.5108642578125 1549.9482421875 756.501220703125 1549.939086914062 C 756.4817504882812 1549.91943359375 756.4817504882812 1549.890869140625 756.4966430664062 1549.87158203125 L 756.8283081054688 1549.501342773438 C 756.84765625 1549.481811523438 756.87646484375 1549.481811523438 756.8958129882812 1549.496215820312 C 756.9148559570312 1549.515869140625 756.9148559570312 1549.544311523438 756.900634765625 1549.56396484375 L 756.5687255859375 1549.93408203125 C 756.563720703125 1549.9482421875 756.5493774414062 1549.953491210938 756.5350341796875 1549.953491210938 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_arft6q =
    '<svg viewBox="1.6 0.9 1.0 1.0" ><path transform="translate(-737.46, -1568.05)" d="M 739.135009765625 1569.452880859375 C 739.125244140625 1569.452880859375 739.1109619140625 1569.4482421875 739.101318359375 1569.438842773438 C 739.08203125 1569.419311523438 739.08203125 1569.390747070312 739.096435546875 1569.371337890625 L 739.4283447265625 1569.000610351562 C 739.4476318359375 1568.981567382812 739.4764404296875 1568.981567382812 739.49560546875 1568.995971679688 C 739.514892578125 1569.01513671875 739.514892578125 1569.044311523438 739.50048828125 1569.063720703125 L 739.1685791015625 1569.43359375 C 739.1590576171875 1569.4482421875 739.1492919921875 1569.452880859375 739.135009765625 1569.452880859375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gj34v7 =
    '<svg viewBox="0.8 1.9 1.0 1.0" ><path transform="translate(-720.8, -1587.09)" d="M 721.6349487304688 1589.453735351562 C 721.6251220703125 1589.453735351562 721.6109008789062 1589.448486328125 721.6011962890625 1589.439331054688 C 721.5820922851562 1589.419677734375 721.5820922851562 1589.391235351562 721.5963745117188 1589.37158203125 L 721.9282836914062 1589.001220703125 C 721.94775390625 1588.982055664062 721.9764404296875 1588.982055664062 721.9955444335938 1588.996459960938 C 722.0150146484375 1589.015625 722.0150146484375 1589.044677734375 722.00048828125 1589.063720703125 L 721.668701171875 1589.433837890625 C 721.6589965820312 1589.448486328125 721.6445922851562 1589.453735351562 721.6349487304688 1589.453735351562 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j1xrc3 =
    '<svg viewBox="0.0 2.8 1.0 1.0" ><path transform="translate(-705.29, -1604.12)" d="M 705.3347778320312 1607.353393554688 C 705.3253173828125 1607.353393554688 705.3109741210938 1607.348876953125 705.3011474609375 1607.339111328125 C 705.2817993164062 1607.31982421875 705.2817993164062 1607.291381835938 705.2963256835938 1607.271728515625 L 705.6283569335938 1606.9013671875 C 705.6476440429688 1606.882202148438 705.6763916015625 1606.882202148438 705.6957397460938 1606.896362304688 C 705.71484375 1606.916015625 705.71484375 1606.94482421875 705.7005004882812 1606.964111328125 L 705.3685302734375 1607.334716796875 C 705.3588256835938 1607.348876953125 705.3491821289062 1607.353393554688 705.3347778320312 1607.353393554688 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tx3lvn =
    '<svg viewBox="5.4 0.0 1.1 1.0" ><path transform="translate(-568.53, -1392.53)" d="M 574.9972534179688 1393.42431640625 C 574.9876708984375 1393.42431640625 574.97802734375 1393.419311523438 574.968505859375 1393.4140625 C 574.4489135742188 1393.010375976562 574.1217651367188 1392.755615234375 573.9437255859375 1392.610961914062 C 573.924560546875 1392.596435546875 573.9196166992188 1392.562866210938 573.9341430664062 1392.543823242188 C 573.9486083984375 1392.524658203125 573.982177734375 1392.51953125 574.00146484375 1392.534057617188 C 574.1842651367188 1392.6787109375 574.5065307617188 1392.933471679688 575.0261840820312 1393.337646484375 C 575.04541015625 1393.351806640625 575.0501708984375 1393.385620117188 575.0358276367188 1393.404663085938 C 575.0261840820312 1393.419311523438 575.01171875 1393.42431640625 574.9972534179688 1393.42431640625 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xeyxey =
    '<svg viewBox="9.4 28.8 17.7 10.2" ><path transform="translate(-648.46, -1416.52)" d="M 675.6315307617188 1455.459716796875 L 657.9000244140625 1455.459716796875 L 657.9000244140625 1445.299926757812 L 672.1439208984375 1445.299926757812 L 675.6315307617188 1455.459716796875 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v2u8h =
    '<svg viewBox="0.0 0.0 5.8 5.7" ><path transform="translate(-783.65, -1018.05)" d="M 789.3707275390625 1023.231811523438 C 788.8606567382812 1024.078735351562 786.1475830078125 1023.55908203125 786.1475830078125 1023.55908203125 L 783.8628540039062 1021.5771484375 C 783.3095703125 1020.302368164062 783.8915405273438 1018.816040039062 785.166259765625 1018.262817382812 C 786.4411010742188 1017.70947265625 787.927490234375 1018.291748046875 788.4808349609375 1019.56640625 C 788.4905395507812 1019.5712890625 789.8900756835938 1022.370849609375 789.3707275390625 1023.231811523438 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ks6ksj =
    '<svg viewBox="0.7 -0.5 1.7 1.7" ><path transform="translate(-854.01, -1057.91)" d="M 854.7803955078125 1058.005615234375 C 854.9535522460938 1057.562744140625 855.453857421875 1057.3466796875 855.8966064453125 1057.519653320312 C 856.3388671875 1057.692504882812 856.5554809570312 1058.193115234375 856.3822021484375 1058.635864257812 C 856.2091064453125 1059.078002929688 855.708740234375 1059.294555664062 855.2660522460938 1059.12158203125 C 854.8237915039062 1058.948364257812 854.6024169921875 1058.448120117188 854.7803955078125 1058.005615234375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wuxbux =
    '<svg viewBox="0.0 0.0 2.3 1.0" ><path transform="translate(-839.9, -1066.83)" d="M 839.89990234375 1067.539428710938 C 839.89990234375 1067.539428710938 840.3377685546875 1066.986450195312 840.9822998046875 1066.861328125 C 841.626953125 1066.736328125 842.24267578125 1067.08251953125 842.24267578125 1067.08251953125 C 842.24267578125 1067.08251953125 841.804931640625 1067.6357421875 841.16015625 1067.7607421875 C 840.510986328125 1067.885986328125 839.89990234375 1067.539428710938 839.89990234375 1067.539428710938 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r7vn2 =
    '<svg viewBox="0.0 0.1 1.0 1.0" ><path transform="translate(-839.9, -1069.34)" d="M 839.89990234375 1070.046142578125 C 839.89990234375 1070.046142578125 840.1982421875 1069.67138671875 840.664794921875 1069.46923828125 C 840.765869140625 1069.425903320312 840.924560546875 1070.301513671875 840.8092041015625 1070.29638671875 C 840.30419921875 1070.277221679688 839.89990234375 1070.046142578125 839.89990234375 1070.046142578125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g6v64b =
    '<svg viewBox="4.8 2.2 1.0 1.3" ><path transform="translate(-879.27, -1062.46)" d="M 884.0999755859375 1064.698974609375 C 884.0999755859375 1064.698974609375 885.042724609375 1065.09814453125 885.0862426757812 1065.290649414062 C 885.138916015625 1065.521606445312 884.4703979492188 1065.96875 884.4703979492188 1065.96875 C 884.4703979492188 1065.96875 884.1190795898438 1064.689331054688 884.0999755859375 1064.698974609375 Z" fill="#e2a18d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zya1u =
    '<svg viewBox="4.3 3.9 1.0 1.0" ><path transform="translate(-868.36, -1095.05)" d="M 873.0262451171875 1099.282958984375 C 873.001953125 1099.282958984375 872.9827270507812 1099.282958984375 872.9588012695312 1099.278564453125 C 872.8096923828125 1099.254150390625 872.6847534179688 1099.143798828125 872.6412353515625 1098.999389648438 C 872.6317138671875 1098.97509765625 872.6463012695312 1098.946533203125 872.6749267578125 1098.941284179688 C 872.6990356445312 1098.932006835938 872.727783203125 1098.946533203125 872.7325439453125 1098.97509765625 C 872.7664184570312 1099.085815429688 872.8626098632812 1099.172241210938 872.9732055664062 1099.191650390625 C 873.0936279296875 1099.210571289062 873.208984375 1099.15771484375 873.2763671875 1099.057006835938 C 873.290771484375 1099.032958984375 873.3197631835938 1099.027954101562 873.3438110351562 1099.04248046875 C 873.36767578125 1099.057006835938 873.3724365234375 1099.085815429688 873.3580322265625 1099.10986328125 C 873.285888671875 1099.215942382812 873.1610107421875 1099.282958984375 873.0262451171875 1099.282958984375 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wyj7nl =
    '<svg viewBox="2.5 5.5 2.6 1.0" ><path transform="translate(-832.42, -1126.88)" d="M 836.5689697265625 1132.640502929688 C 835.765625 1132.640502929688 834.967041015625 1132.491455078125 834.9237060546875 1132.48193359375 C 834.899658203125 1132.476806640625 834.8803100585938 1132.452758789062 834.88525390625 1132.423950195312 C 834.89013671875 1132.39990234375 834.9140625 1132.380981445312 834.9429931640625 1132.385498046875 C 834.95751953125 1132.39013671875 836.5208740234375 1132.683837890625 837.4732666015625 1132.452758789062 C 837.497314453125 1132.447998046875 837.5263061523438 1132.462646484375 837.531005859375 1132.486450195312 C 837.535888671875 1132.5107421875 837.521484375 1132.53955078125 837.497314453125 1132.544311523438 C 837.2183227539062 1132.616455078125 836.8912963867188 1132.640502929688 836.5689697265625 1132.640502929688 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i45v47 =
    '<svg viewBox="0.0 0.0 5.2 5.6" ><path transform="translate(-773.53, -1006.58)" d="M 774.26025390625 1011.896484375 C 773.533935546875 1011.545288085938 773.307861328125 1009.832763671875 773.7550048828125 1008.731079101562 C 774.332275390625 1007.31201171875 776.0064697265625 1006.47509765625 777.3583984375 1006.590576171875 C 777.690185546875 1006.619384765625 778.4501953125 1006.783203125 778.7003173828125 1007.254272460938 C 778.8975830078125 1007.624755859375 778.5223388671875 1008.389770507812 777.8873291015625 1008.610961914062 C 776.9974365234375 1008.9189453125 775.7467041015625 1008.716918945312 776.20849609375 1009.731811523438 C 777.613037109375 1012.805786132812 775.0635986328125 1012.281372070312 774.26025390625 1011.896484375 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_j1qxhx =
    '<svg viewBox="0.1 0.0 1.0 1.9" ><path transform="translate(-780.08, -1012.24)" d="M 780.3554077148438 1014.178771972656 C 780.345458984375 1014.178771972656 780.3359985351562 1014.174011230469 780.3264770507812 1014.169128417969 C 780.3071899414062 1014.154602050781 780.30224609375 1014.121032714844 780.3169555664062 1014.101623535156 C 780.5140991210938 1013.841979980469 780.7207641601562 1013.572692871094 780.8651733398438 1013.269470214844 C 780.9423217773438 1013.105895996094 780.9805297851562 1012.966613769531 780.9903564453125 1012.841613769531 C 780.9998779296875 1012.682800292969 780.9517822265625 1012.538513183594 780.8604736328125 1012.442077636719 C 780.7640991210938 1012.336364746094 780.6054077148438 1012.297790527344 780.4852294921875 1012.346008300781 C 780.4129028320312 1012.374694824219 780.3554077148438 1012.437438964844 780.3215942382812 1012.523986816406 C 780.2831420898438 1012.620178222656 780.2926025390625 1012.730773925781 780.3359985351562 1012.817443847656 C 780.4083251953125 1012.956970214844 780.5717163085938 1013.048400878906 780.725830078125 1013.033752441406 C 780.7545166015625 1013.028991699219 780.7737426757812 1013.053161621094 780.778564453125 1013.077087402344 C 780.778564453125 1013.105895996094 780.7593994140625 1013.125305175781 780.7351684570312 1013.130065917969 C 780.5429077148438 1013.144348144531 780.3408203125 1013.038513183594 780.2495727539062 1012.865539550781 C 780.1918334960938 1012.754943847656 780.1868896484375 1012.615417480469 780.2302856445312 1012.495056152344 C 780.2688598632812 1012.384338378906 780.345458984375 1012.302551269531 780.44677734375 1012.264221191406 C 780.6054077148438 1012.201599121094 780.802734375 1012.249694824219 780.927734375 1012.384338378906 C 781.0336303710938 1012.499938964844 781.0911865234375 1012.668151855469 781.0818481445312 1012.850891113281 C 781.0767822265625 1012.990539550781 781.0336303710938 1013.139831542969 780.9468994140625 1013.317443847656 C 780.7978515625 1013.625549316406 780.5910034179688 1013.899719238281 780.3890991210938 1014.164245605469 C 780.3840942382812 1014.174011230469 780.369873046875 1014.178771972656 780.3554077148438 1014.178771972656 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pswhml =
    '<svg viewBox="0.0 1.3 1.0 1.0" ><path transform="translate(-777.75, -1037.76)" d="M 777.8036499023438 1039.536376953125 C 777.7940063476562 1039.536376953125 777.7843017578125 1039.531982421875 777.7747192382812 1039.52685546875 C 777.7506713867188 1039.51220703125 777.745849609375 1039.48388671875 777.7650756835938 1039.45947265625 L 778.0394287109375 1039.07470703125 C 778.0537109375 1039.050537109375 778.08251953125 1039.0458984375 778.106689453125 1039.064697265625 C 778.1307373046875 1039.07958984375 778.135498046875 1039.1083984375 778.1163330078125 1039.132568359375 L 777.8421020507812 1039.51708984375 C 777.8372192382812 1039.52685546875 777.82275390625 1039.536376953125 777.8036499023438 1039.536376953125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_im5dsv =
    '<svg viewBox="0.0 0.0 10.4 10.6" ><path transform="translate(-594.1, -847.1)" d="M 602.3116455078125 851.0830688476562 C 598.8768310546875 851.3574829101562 599.2280883789062 847.10009765625 599.2280883789062 847.10009765625 L 595.6923828125 851.7422485351562 C 596.0001831054688 853.6328125 597.650390625 854.3157958984375 597.650390625 854.3157958984375 C 596.2262573242188 854.27734375 595.4566650390625 853.2623901367188 595.0865478515625 852.5407104492188 L 594.10009765625 853.8348999023438 C 594.10009765625 853.8348999023438 594.8216552734375 857.1492309570312 598.208251953125 855.9464721679688 C 601.5947265625 854.7440795898438 603.5526733398438 857.654296875 603.5526733398438 857.654296875 L 604.16357421875 856.1727294921875 C 604.1683349609375 856.1776733398438 605.7462768554688 850.8090209960938 602.3116455078125 851.0830688476562 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_stce73 =
    '<svg viewBox="0.2 8.1 9.1 2.1" ><path transform="translate(-598.18, -1008.33)" d="M 607.4595336914062 1018.598693847656 C 607.4451293945312 1018.598693847656 607.4353637695312 1018.593811035156 607.4256591796875 1018.584167480469 C 606.6514282226562 1017.819274902344 605.5352783203125 1017.381652832031 604.4481201171875 1017.420104980469 C 603.842041015625 1017.439270019531 603.2407836914062 1017.597961425781 602.6585083007812 1017.751892089844 C 602.5238037109375 1017.785705566406 602.3843994140625 1017.824035644531 602.2495727539062 1017.857727050781 C 601.561767578125 1018.030944824219 600.7584228515625 1018.185119628906 599.9984130859375 1018.011779785156 C 599.310302734375 1017.857727050781 598.5455932617188 1017.343200683594 598.3819580078125 1016.539611816406 C 598.3772583007812 1016.515686035156 598.3919067382812 1016.486755371094 598.42041015625 1016.481994628906 C 598.4446411132812 1016.477233886719 598.4732666015625 1016.491760253906 598.4782104492188 1016.520690917969 C 598.6321411132812 1017.280456542969 599.3633422851562 1017.771179199219 600.0223388671875 1017.920471191406 C 600.76318359375 1018.088562011719 601.5521850585938 1017.934875488281 602.23046875 1017.766418457031 C 602.3651733398438 1017.732849121094 602.5046997070312 1017.694274902344 602.63916015625 1017.660461425781 C 603.2261962890625 1017.506530761719 603.8323974609375 1017.347839355469 604.4481201171875 1017.323791503906 C 605.5640258789062 1017.285461425781 606.7041015625 1017.732849121094 607.4979858398438 1018.516784667969 C 607.51708984375 1018.536071777344 607.51708984375 1018.564880371094 607.4979858398438 1018.584167480469 C 607.4835815429688 1018.593811035156 607.4738159179688 1018.598693847656 607.4595336914062 1018.598693847656 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dpupg4 =
    '<svg viewBox="6.6 9.4 2.5 1.5" ><path transform="translate(-725.11, -1033.56)" d="M 732.3246459960938 1044.492431640625 C 732.2092895507812 1044.492431640625 732.0939331054688 1044.458740234375 731.9974365234375 1044.396728515625 C 731.8150024414062 1044.276123046875 731.7090454101562 1044.04541015625 731.7330932617188 1043.8291015625 C 731.7572631835938 1043.636352539062 731.88232421875 1043.44384765625 732.0841674804688 1043.2900390625 C 732.4015502929688 1043.044921875 732.8250122070312 1042.938842773438 733.2242431640625 1043.006225585938 C 733.6188354492188 1043.073974609375 733.9890747070312 1043.309326171875 734.2105102539062 1043.64599609375 C 734.2249145507812 1043.670166015625 734.219970703125 1043.699096679688 734.1962280273438 1043.713500976562 C 734.171875 1043.728149414062 734.14306640625 1043.723388671875 734.128662109375 1043.699096679688 C 733.9219970703125 1043.38623046875 733.5802612304688 1043.165161132812 733.209716796875 1043.102416992188 C 732.8394165039062 1043.039916992188 732.4449462890625 1043.14111328125 732.1466674804688 1043.371826171875 C 731.9638061523438 1043.511596679688 731.853271484375 1043.6796875 731.8341674804688 1043.848022460938 C 731.8099975585938 1044.031005859375 731.9014282226562 1044.223022460938 732.0552368164062 1044.324340820312 C 732.2092895507812 1044.425537109375 732.4208984375 1044.429931640625 732.5797119140625 1044.3388671875 C 732.6949462890625 1044.271728515625 732.8009643554688 1044.122314453125 732.7623901367188 1043.978149414062 C 732.7433471679688 1043.91064453125 732.6806640625 1043.853149414062 732.6085815429688 1043.83349609375 C 732.5653076171875 1043.819213867188 732.5220336914062 1043.823974609375 732.4835815429688 1043.84326171875 L 732.51708984375 1043.90087890625 C 732.5316772460938 1043.925170898438 732.5220336914062 1043.954345703125 732.5028076171875 1043.968505859375 C 732.4788208007812 1043.98291015625 732.4498291015625 1043.973266601562 732.435546875 1043.954345703125 L 732.3775024414062 1043.85791015625 C 732.3680419921875 1043.838745117188 732.3680419921875 1043.814453125 732.3873291015625 1043.7998046875 C 732.4498291015625 1043.742309570312 732.5411376953125 1043.723388671875 732.6326293945312 1043.7470703125 C 732.7433471679688 1043.776000976562 732.8298950195312 1043.862548828125 732.8536987304688 1043.963500976562 C 732.9067993164062 1044.15625 732.7767944335938 1044.343627929688 732.6279907226562 1044.429931640625 C 732.5362548828125 1044.468872070312 732.4307250976562 1044.492431640625 732.3246459960938 1044.492431640625 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jj4a82 =
    '<svg viewBox="9.9 0.0 10.3 7.4" ><path transform="translate(-1653.93, -1566.3)" d="M 1665.050537109375 1573.703125 C 1664.72802734375 1573.703125 1664.429931640625 1573.578369140625 1664.199462890625 1573.357177734375 C 1663.968017578125 1573.130859375 1663.838623046875 1572.828002929688 1663.838623046875 1572.5009765625 L 1663.79931640625 1567.584350585938 C 1663.794677734375 1566.915283203125 1664.33349609375 1566.367553710938 1665.001953125 1566.362548828125 L 1672.823974609375 1566.300048828125 C 1672.829345703125 1566.300048828125 1672.829345703125 1566.300048828125 1672.833740234375 1566.300048828125 C 1673.49755859375 1566.300048828125 1674.041015625 1566.838745117188 1674.0458984375 1567.502685546875 L 1674.084228515625 1572.418823242188 C 1674.08935546875 1572.741088867188 1673.96435546875 1573.048950195312 1673.73828125 1573.280029296875 C 1673.51220703125 1573.510986328125 1673.208984375 1573.640991210938 1672.8818359375 1573.640991210938 L 1672.8818359375 1573.592651367188 L 1672.8818359375 1573.640991210938 L 1665.06005859375 1573.703125 C 1665.06005859375 1573.703125 1665.05517578125 1573.703125 1665.050537109375 1573.703125 Z M 1672.833740234375 1566.391235351562 C 1672.829345703125 1566.391235351562 1672.829345703125 1566.391235351562 1672.823974609375 1566.391235351562 L 1665.001953125 1566.45361328125 C 1664.38671875 1566.458740234375 1663.89111328125 1566.9638671875 1663.89599609375 1567.579833984375 L 1663.9345703125 1572.49609375 C 1663.939453125 1572.7939453125 1664.0546875 1573.073364257812 1664.266357421875 1573.280029296875 C 1664.478271484375 1573.486694335938 1664.76171875 1573.602783203125 1665.06005859375 1573.602783203125 L 1672.8818359375 1573.539428710938 C 1673.18017578125 1573.534790039062 1673.459228515625 1573.419921875 1673.665771484375 1573.208129882812 C 1673.87255859375 1572.99609375 1673.988525390625 1572.712646484375 1673.988525390625 1572.414184570312 L 1673.949951171875 1567.497924804688 C 1673.9404296875 1566.886962890625 1673.44482421875 1566.391235351562 1672.833740234375 1566.391235351562 Z" fill="#84524d" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mvoykw =
    '<svg viewBox="1.8 6.8 26.7 10.5" ><path transform="translate(-1493.37, -1700.23)" d="M 1508.627319335938 1717.477416992188 C 1508.617553710938 1717.477416992188 1508.60791015625 1717.473022460938 1508.598510742188 1717.46826171875 L 1495.143920898438 1707.30859375 C 1495.124267578125 1707.2939453125 1495.119750976562 1707.260131835938 1495.134033203125 1707.240844726562 C 1495.148315429688 1707.221801757812 1495.182373046875 1707.217041015625 1495.200927734375 1707.231689453125 L 1508.627319335938 1717.367309570312 L 1521.745971679688 1707.00537109375 C 1521.764892578125 1706.990478515625 1521.798828125 1706.990478515625 1521.81298828125 1707.014526367188 C 1521.827514648438 1707.033935546875 1521.827514648438 1707.067749023438 1521.80322265625 1707.082275390625 L 1508.656372070312 1717.46826171875 C 1508.6513671875 1717.473022460938 1508.63720703125 1717.477416992188 1508.627319335938 1717.477416992188 Z" fill="#363e44" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ze6xt6 =
    '<svg viewBox="0.9 0.9 10.9 10.9" ><path transform="translate(-960.81, -1756.32)" d="M 972.5765380859375 1768.119873046875 L 961.748046875 1768.119873046875 C 961.71923828125 1768.119873046875 961.7000732421875 1768.100830078125 961.7000732421875 1768.07177734375 L 961.7000732421875 1757.248413085938 C 961.7000732421875 1757.219604492188 961.71923828125 1757.200073242188 961.748046875 1757.200073242188 L 972.5765380859375 1757.200073242188 C 972.60546875 1757.200073242188 972.624755859375 1757.219604492188 972.624755859375 1757.248413085938 L 972.624755859375 1768.07177734375 C 972.624755859375 1768.100830078125 972.60546875 1768.119873046875 972.5765380859375 1768.119873046875 Z M 961.796142578125 1768.02392578125 L 972.528564453125 1768.02392578125 L 972.528564453125 1757.296264648438 L 961.796142578125 1757.296264648438 L 961.796142578125 1768.02392578125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u1x9ah =
    '<svg viewBox="1.8 1.9 8.7 8.2" ><path transform="translate(-977.95, -1777.07)" d="M 983.3897705078125 1787.249633789062 L 979.7001953125 1783.449584960938 L 981.0325927734375 1782.21337890625 L 983.1781005859375 1784.349243164062 L 986.863037109375 1779.000122070312 L 988.3636474609375 1780.033935546875 L 983.3897705078125 1787.249633789062 Z" fill="#efbc73" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bqw481 =
    '<svg viewBox="13.7 3.5 7.7 1.0" ><path transform="translate(-1213.73, -1808.77)" d="M 1235.034301757812 1812.396606445312 L 1227.448364257812 1812.396606445312 C 1227.419189453125 1812.396606445312 1227.400146484375 1812.376831054688 1227.400146484375 1812.348266601562 C 1227.400146484375 1812.319458007812 1227.419189453125 1812.299926757812 1227.448364257812 1812.299926757812 L 1235.034301757812 1812.299926757812 C 1235.063232421875 1812.299926757812 1235.082641601562 1812.319458007812 1235.082641601562 1812.348266601562 C 1235.082641601562 1812.376831054688 1235.058349609375 1812.396606445312 1235.034301757812 1812.396606445312 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jr6c7 =
    '<svg viewBox="13.7 6.3 7.7 1.0" ><path transform="translate(-1213.73, -1863.98)" d="M 1235.034301757812 1870.396362304688 L 1227.448364257812 1870.396362304688 C 1227.419189453125 1870.396362304688 1227.400146484375 1870.377319335938 1227.400146484375 1870.348510742188 C 1227.400146484375 1870.319458007812 1227.419189453125 1870.300170898438 1227.448364257812 1870.300170898438 L 1235.034301757812 1870.300170898438 C 1235.063232421875 1870.300170898438 1235.082641601562 1870.319458007812 1235.082641601562 1870.348510742188 C 1235.082641601562 1870.377319335938 1235.058349609375 1870.396362304688 1235.034301757812 1870.396362304688 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fetinl =
    '<svg viewBox="13.7 9.1 7.7 1.0" ><path transform="translate(-1213.73, -1919.28)" d="M 1235.034301757812 1928.496459960938 L 1227.448364257812 1928.496459960938 C 1227.419189453125 1928.496459960938 1227.400146484375 1928.476928710938 1227.400146484375 1928.448120117188 C 1227.400146484375 1928.419555664062 1227.419189453125 1928.400024414062 1227.448364257812 1928.400024414062 L 1235.034301757812 1928.400024414062 C 1235.063232421875 1928.400024414062 1235.082641601562 1928.419555664062 1235.082641601562 1928.448120117188 C 1235.082641601562 1928.476928710938 1235.058349609375 1928.496459960938 1235.034301757812 1928.496459960938 Z" fill="#e6d0be" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_y4c99 =
    '<svg viewBox="0.8 0.0 22.8 10.8" ><path transform="translate(-461.14, -620.5)" d="M 461.8999633789062 620.5 L 484.6680297851562 620.5 L 484.6680297851562 626.7393798828125 L 482.5226440429688 626.7393798828125 L 482.5226440429688 631.3141479492188 L 477.9430541992188 626.7393798828125 L 461.8999633789062 626.7393798828125 L 461.8999633789062 620.5 Z" fill="#efbc73" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dqveah =
    '<svg viewBox="0.0 0.7 22.9 10.9" ><path transform="translate(-446.2, -633.45)" d="M 466.8755187988281 645.0150146484375 C 466.8611755371094 645.0150146484375 466.8514709472656 645.0101318359375 466.8419494628906 645.0006103515625 L 462.2767028808594 640.4353637695312 L 446.2481384277344 640.4353637695312 C 446.2192993164062 640.4353637695312 446.2000122070312 640.4160766601562 446.2000122070312 640.3872680664062 L 446.2000122070312 634.1480712890625 C 446.2000122070312 634.1190795898438 446.2192993164062 634.0999755859375 446.2481384277344 634.0999755859375 L 469.0162048339844 634.0999755859375 C 469.0450744628906 634.0999755859375 469.0644226074219 634.1190795898438 469.0644226074219 634.1480712890625 L 469.0644226074219 640.3872680664062 C 469.0644226074219 640.4160766601562 469.0450744628906 640.4353637695312 469.0162048339844 640.4353637695312 L 466.9237365722656 640.4353637695312 L 466.9237365722656 644.9669189453125 C 466.9237365722656 644.986083984375 466.9140930175781 645.00537109375 466.8948669433594 645.0101318359375 C 466.8851623535156 645.0150146484375 466.8804016113281 645.0150146484375 466.8755187988281 645.0150146484375 Z M 446.2962646484375 640.3391723632812 L 462.2911071777344 640.3391723632812 C 462.3056335449219 640.3391723632812 462.3152160644531 640.3438720703125 462.3248596191406 640.3536987304688 L 466.8227233886719 644.8465576171875 L 466.8227233886719 640.3872680664062 C 466.8227233886719 640.3584594726562 466.8419494628906 640.3391723632812 466.8706970214844 640.3391723632812 L 468.9681091308594 640.3391723632812 L 468.9681091308594 634.1961669921875 L 446.2962646484375 634.1961669921875 L 446.2962646484375 640.3391723632812 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zmvan =
    '<svg viewBox="19.2 2.1 2.9 2.8" ><path transform="translate(-825.15, -662.86)" d="M 845.315185546875 665.9091186523438 L 844.3001708984375 666.0340576171875 L 845.0169677734375 666.7606811523438 L 844.82421875 667.7659301757812 L 845.7383422851562 667.3089599609375 L 846.6380004882812 667.7996215820312 L 846.4791870117188 666.7896118164062 L 847.2249755859375 666.0921020507812 L 846.219482421875 665.9235229492188 L 845.78173828125 665.0000610351562 L 845.315185546875 665.9091186523438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gl495t =
    '<svg viewBox="14.9 2.1 2.9 2.8" ><path transform="translate(-741.48, -662.86)" d="M 757.4149169921875 665.9091186523438 L 756.39990234375 666.0340576171875 L 757.11669921875 666.7606811523438 L 756.92919921875 667.7659301757812 L 757.8431396484375 667.3089599609375 L 758.7379150390625 667.7996215820312 L 758.5838623046875 666.7896118164062 L 759.329833984375 666.0921020507812 L 758.3192138671875 665.9235229492188 L 757.8814697265625 665.0000610351562 L 757.4149169921875 665.9091186523438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q0aaxn =
    '<svg viewBox="10.7 2.1 2.9 2.8" ><path transform="translate(-657.81, -662.86)" d="M 669.514892578125 665.9091186523438 L 668.5 666.0340576171875 L 669.2215576171875 666.7606811523438 L 669.029052734375 667.7659301757812 L 669.9430541992188 667.3089599609375 L 670.837890625 667.7996215820312 L 670.6838989257812 666.7896118164062 L 671.4295654296875 666.0921020507812 L 670.4194946289062 665.9235229492188 L 669.9864501953125 665.0000610351562 L 669.514892578125 665.9091186523438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_du5n9q =
    '<svg viewBox="6.5 2.1 2.9 2.8" ><path transform="translate(-574.13, -662.86)" d="M 581.6149291992188 665.9091186523438 L 580.5999755859375 666.0340576171875 L 581.321533203125 666.7606811523438 L 581.1292724609375 667.7659301757812 L 582.0430908203125 667.3089599609375 L 582.9378662109375 667.7996215820312 L 582.783935546875 666.7896118164062 L 583.5296630859375 666.0921020507812 L 582.5193481445312 665.9235229492188 L 582.08642578125 665.0000610351562 L 581.6149291992188 665.9091186523438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qktgmp =
    '<svg viewBox="2.2 2.1 2.9 2.8" ><path transform="translate(-490.56, -662.86)" d="M 493.8102416992188 665.9091186523438 L 492.8001098632812 666.0340576171875 L 493.5167236328125 666.7606811523438 L 493.3244018554688 667.7659301757812 L 494.2383422851562 667.3089599609375 L 495.1331176757812 667.7996215820312 L 494.9791259765625 666.7896118164062 L 495.7247924804688 666.0921020507812 L 494.7193603515625 665.9235229492188 L 494.281494140625 665.0000610351562 L 493.8102416992188 665.9091186523438 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eauvms =
    '<svg viewBox="0.0 0.0 5.4 14.7" ><path transform="translate(-576.1, -1741.0)" d="M 580.163330078125 1748.567016601562 C 578.6769409179688 1752.613037109375 576.1032104492188 1755.652954101562 576.1032104492188 1755.652954101562 C 576.1032104492188 1755.652954101562 575.944580078125 1752.132080078125 577.4356689453125 1748.086059570312 C 578.922119140625 1744.040405273438 581.4957275390625 1740.999877929688 581.4957275390625 1740.999877929688 C 581.4957275390625 1740.999877929688 581.6544189453125 1744.521728515625 580.163330078125 1748.567016601562 Z" fill="#776e42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wcvd2c =
    '<svg viewBox="1.5 2.4 3.1 8.3" ><path transform="translate(-606.5, -1788.63)" d="M 608.0836181640625 1799.304931640625 C 608.0789794921875 1799.304931640625 608.0740356445312 1799.304931640625 608.0691528320312 1799.29931640625 C 608.0450439453125 1799.29052734375 608.0308227539062 1799.26171875 608.0404052734375 1799.2373046875 L 611.0227661132812 1791.069458007812 C 611.0324096679688 1791.04541015625 611.0612182617188 1791.030883789062 611.0853881835938 1791.040649414062 C 611.1095581054688 1791.0498046875 611.123779296875 1791.078979492188 611.1142578125 1791.102661132812 L 608.1317749023438 1799.27099609375 C 608.1173095703125 1799.29052734375 608.10302734375 1799.304931640625 608.0836181640625 1799.304931640625 Z" fill="#8b865c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cxexs6 =
    '<svg viewBox="0.0 0.0 2.4 16.8" ><path transform="translate(-564.6, -1701.7)" d="M 565.4263916015625 1718.541381835938 C 565.7247314453125 1717.63720703125 566.7445068359375 1714.284057617188 566.9610595703125 1710.263061523438 C 567.216064453125 1705.543334960938 566.263427734375 1701.69970703125 566.263427734375 1701.69970703125 C 566.263427734375 1701.69970703125 564.902099609375 1705.500366210938 564.647216796875 1710.219360351562 C 564.4305419921875 1714.245727539062 565.0897216796875 1717.63720703125 565.291748046875 1718.54638671875 L 565.4263916015625 1718.541381835938 Z" fill="#8b865c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_godu7d =
    '<svg viewBox="0.9 1.4 1.0 9.6" ><path transform="translate(-583.26, -1730.34)" d="M 584.2482299804688 1741.401611328125 C 584.2482299804688 1741.401611328125 584.2482299804688 1741.401611328125 584.2482299804688 1741.401611328125 C 584.2192993164062 1741.401611328125 584.199951171875 1741.377319335938 584.199951171875 1741.348754882812 L 584.7628173828125 1731.82861328125 C 584.7628173828125 1731.799926757812 584.786865234375 1731.781005859375 584.8157958984375 1731.785400390625 C 584.8447265625 1731.785400390625 584.8639526367188 1731.809692382812 584.859130859375 1731.838256835938 L 584.2963256835938 1741.3583984375 C 584.2963256835938 1741.38232421875 584.2722778320312 1741.401611328125 584.2482299804688 1741.401611328125 Z" fill="#776e42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kf6tsf =
    '<svg viewBox="0.0 0.0 4.3 16.3" ><path transform="translate(-492.42, -1711.7)" d="M 496.2571411132812 1728.041259765625 L 496.6275634765625 1728.041259765625 C 496.7382202148438 1726.8291015625 496.8969116210938 1723.61083984375 496.0310668945312 1719.9599609375 C 494.9246826171875 1715.303100585938 492.5675659179688 1711.699951171875 492.5675659179688 1711.699951171875 C 492.5675659179688 1711.699951171875 492.0046997070312 1715.64501953125 493.111083984375 1720.296630859375 C 493.9673461914062 1723.909057617188 495.5787353515625 1726.886840820312 496.2571411132812 1728.041259765625 Z" fill="#776e42" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_btuw9 =
    '<svg viewBox="0.6 2.0 2.5 9.5" ><path transform="translate(-504.28, -1751.38)" d="M 507.3496704101562 1762.848876953125 C 507.3303833007812 1762.848876953125 507.3063354492188 1762.83447265625 507.301513671875 1762.810302734375 L 504.8818359375 1753.439575195312 C 504.8770141601562 1753.415283203125 504.8914794921875 1753.386474609375 504.9156494140625 1753.381713867188 C 504.939453125 1753.376586914062 504.9683837890625 1753.391235351562 504.9732666015625 1753.415283203125 L 507.39306640625 1762.786254882812 C 507.397705078125 1762.810302734375 507.38330078125 1762.839477539062 507.3592529296875 1762.843872070312 C 507.3543701171875 1762.848876953125 507.3496704101562 1762.848876953125 507.3496704101562 1762.848876953125 Z" fill="#8b865c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wm071n =
    '<svg viewBox="0.0 11.6 9.3 5.4" ><path transform="translate(-488.5, -1931.77)" d="M 497.8131713867188 1943.400268554688 L 488.5000610351562 1943.400268554688 L 490.0009155273438 1948.845581054688 L 496.307373046875 1948.845581054688 L 497.8131713867188 1943.400268554688 Z" fill="#d87355" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ffp3p =
    '<svg viewBox="30.2 14.2 28.2 32.8" ><path transform="translate(-0.78, -0.35)" d="M 58.63055801391602 20.08234596252441 L 51.27083587646484 28.83234786987305 L 38.45694351196289 44.15457153320312 L 30.99999809265137 47.34346008300781 L 32.9444465637207 39.46846008300781 L 48.2569465637207 21.17123603820801 L 53.11806106567383 15.42540168762207 C 53.5300407409668 14.93459224700928 54.12044906616211 14.62796783447266 54.75890350341797 14.57324409484863 C 55.39736175537109 14.51851844787598 56.03134155273438 14.72019577026367 56.52083587646484 15.1337366104126 L 58.36806106567383 16.67956924438477 C 59.37619400024414 17.54876136779785 59.49345016479492 19.06881523132324 58.63055801391602 20.08234405517578 Z" fill="#ffa88a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fhzbc1 =
    '<svg viewBox="4.0 3.0 40.8 56.4" ><path transform="translate(-0.03, -0.03)" d="M 44.83333969116211 11.58472347259521 L 44.83333969116211 57.44445419311523 C 44.83333969116211 58.51833724975586 43.96278381347656 59.38889694213867 42.88889694213867 59.38889694213867 L 5.94444465637207 59.38889694213867 C 4.870557308197021 59.38889694213867 4 58.51833724975586 4 57.44445419311523 L 4 4.944445133209229 C 4 3.870557546615601 4.870557308197021 2.999999761581421 5.944445133209229 3 L 36.24861526489258 3 C 36.76684951782227 2.999589920043945 37.26380920410156 3.20607328414917 37.62916946411133 3.573611259460449 L 44.25972366333008 10.20416831970215 C 44.62726593017578 10.56952571868896 44.83374786376953 11.06648540496826 44.83333969116211 11.58472347259521 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jikonl =
    '<svg viewBox="26.9 3.0 17.9 47.6" ><path transform="translate(-0.68, -0.03)" d="M 45.4887580871582 19.52778053283691 L 45.4887580871582 39.84722900390625 L 40.15126037597656 46.20556640625 L 30.3123664855957 50.4736213684082 C 29.63662719726562 50.7662239074707 28.85357475280762 50.65201187133789 28.28957176208496 50.1785774230957 C 27.7255687713623 49.70514297485352 27.47739219665527 48.95372772216797 27.64847755432129 48.23751068115234 L 30.13736724853516 37.79584121704102 L 45.4887580871582 19.52778053283691 Z M 45.4887580871582 11.58472347259521 L 45.4887580871582 13.6944465637207 L 36.7387580871582 13.6944465637207 C 35.66487121582031 13.6944465637207 34.7943115234375 12.82388877868652 34.7943115234375 11.75000190734863 L 34.7943115234375 3 L 36.90403366088867 3 C 37.42226791381836 2.999589920043945 37.91922760009766 3.20607328414917 38.28458786010742 3.573611259460449 L 44.91514205932617 10.20416831970215 C 45.28268432617188 10.56952571868896 45.48916625976562 11.06648540496826 45.4887580871582 11.58472347259521 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p5w32w =
    '<svg viewBox="30.2 20.8 20.3 26.2" ><path transform="translate(-0.78, -0.54)" d="M 51.27083587646484 29.04055786132812 L 38.45694351196289 44.34333801269531 L 30.99999809265137 47.5322265625 L 32.9444465637207 39.6572265625 L 48.2569465637207 21.36000061035156 C 49.88513565063477 23.62945747375488 50.92107772827148 26.26944160461426 51.27083969116211 29.04055786132812 Z" fill="#fd9467" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qxchjf =
    '<svg viewBox="37.0 3.0 7.8 7.8" ><path transform="translate(-0.97, -0.03)" d="M 38 3 L 38 10.7777795791626 L 45.77777862548828 10.7777795791626 L 38 3 Z" fill="#61c3b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iancd0 =
    '<svg viewBox="19.5 11.7 38.9 13.6" ><path transform="translate(-0.47, -0.28)" d="M 58.32500457763672 20.01111221313477 L 55.97222900390625 22.78194808959961 L 50.43056106567383 18.12500190734863 L 52.75417327880859 15.35416603088379 C 53.1661491394043 14.86335563659668 53.75656127929688 14.55672931671143 54.39501953125 14.50200462341309 C 55.03347778320312 14.44727897644043 55.66745758056641 14.64895629882812 56.15695190429688 15.06249809265137 L 58.00417327880859 16.60833358764648 C 59.03028869628906 17.46051216125488 59.17375946044922 18.98215866088867 58.32500076293945 20.01111221313477 Z M 21.94444465637207 13.94444465637207 L 32.63889312744141 13.94444465637207 C 33.17583465576172 13.94444465637207 33.61111450195312 13.50916481018066 33.61111450195312 12.97222232818604 C 33.61111450195312 12.43527793884277 33.17583465576172 12 32.63889312744141 12 L 21.94444465637207 12 C 21.40750122070312 12 20.97222137451172 12.43527889251709 20.97222137451172 12.97222232818604 C 20.97222137451172 13.50916576385498 21.40750122070312 13.94444465637207 21.94444465637207 13.94444465637207 Z M 20.97222137451172 25.61111450195312 L 38.47222518920898 25.61111450195312 C 39.00917053222656 25.61111450195312 39.44445037841797 25.17583465576172 39.44445037841797 24.63889122009277 C 39.44445037841797 24.10194778442383 39.00917053222656 23.66666984558105 38.47222518920898 23.66666984558105 L 20.97222137451172 23.66666984558105 C 20.43527793884277 23.66666984558105 20 24.10194778442383 20 24.63889122009277 C 20 25.17583465576172 20.43527793884277 25.61111450195312 20.97222137451172 25.61111450195312 Z" fill="#61c3b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xpzqwi =
    '<svg viewBox="19.5 35.1 8.8 1.9" ><path transform="translate(-0.47, -0.94)" d="M 28.75 36.97222137451172 C 28.75 36.43527603149414 28.31472206115723 36 27.77777862548828 36 L 20.97222137451172 36 C 20.43527793884277 36 20 36.43527603149414 20 36.97222137451172 C 20 37.50916290283203 20.43527793884277 37.94444274902344 20.97222137451172 37.94444274902344 L 27.77777862548828 37.94444274902344 C 28.31472206115723 37.94444274902344 28.75 37.50916290283203 28.75 36.97222137451172 Z" fill="#fd9467" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_zejmpt =
    '<svg viewBox="9.8 32.1 7.8 7.8" ><path transform="translate(-0.19, -0.86)" d="M 16.80555725097656 33 L 10.97222232818604 33 C 10.43527793884277 33 10 33.43527984619141 10 33.97222137451172 L 10 39.80555725097656 C 10 40.34249877929688 10.43527889251709 40.77777862548828 10.97222232818604 40.77777862548828 L 16.80555725097656 40.77777862548828 C 17.34250068664551 40.77777862548828 17.77778053283691 40.34249877929688 17.77778053283691 39.80555725097656 L 17.77778053283691 33.97222137451172 C 17.77778053283691 33.43527984619141 17.34250068664551 33 16.80555725097656 33 Z M 15.83333396911621 38.83333206176758 L 11.94444465637207 38.83333206176758 L 11.94444465637207 34.94444274902344 L 15.83333396911621 34.94444274902344 L 15.83333396911621 38.83333206176758 Z" fill="#61c3b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mqh83i =
    '<svg viewBox="19.5 46.7 5.8 1.9" ><path transform="translate(-0.47, -1.28)" d="M 24.86111068725586 48 L 20.97222137451172 48 C 20.43527793884277 48 20 48.43527984619141 20 48.97222137451172 C 20 49.50916290283203 20.43527793884277 49.94444274902344 20.97222137451172 49.94444274902344 L 24.86111068725586 49.94444274902344 C 25.3980541229248 49.94444274902344 25.83333396911621 49.50916290283203 25.83333396911621 48.97222137451172 C 25.83333396911621 48.43527984619141 25.3980541229248 48 24.86111068725586 48 Z" fill="#fd9467" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eiba6 =
    '<svg viewBox="9.8 43.8 7.8 7.8" ><path transform="translate(-0.19, -1.19)" d="M 16.80555725097656 45 L 10.97222232818604 45 C 10.43527793884277 45 10 45.43527984619141 10 45.97222137451172 L 10 51.80555725097656 C 10 52.34249877929688 10.43527889251709 52.77777862548828 10.97222232818604 52.77777862548828 L 16.80555725097656 52.77777862548828 C 17.34250068664551 52.77777862548828 17.77778053283691 52.34249877929688 17.77778053283691 51.80555725097656 L 17.77778053283691 45.97222137451172 C 17.77778053283691 45.43527984619141 17.34250068664551 45 16.80555725097656 45 Z M 15.83333396911621 50.83333587646484 L 11.94444465637207 50.83333587646484 L 11.94444465637207 46.94444274902344 L 15.83333396911621 46.94444274902344 L 15.83333396911621 50.83333587646484 Z" fill="#61c3b6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uhuzua =
    '<svg viewBox="9.8 8.8 7.8 19.5" ><path transform="translate(-0.19, -0.19)" d="M 13.19905376434326 28.16095924377441 C 13.38253021240234 28.34294700622559 13.6309118270874 28.44439888000488 13.88933181762695 28.44290351867676 L 14.04488754272461 28.44290351867676 C 14.35185527801514 28.3915901184082 14.61570358276367 28.19641494750977 14.75460910797119 27.91790390014648 L 17.6712760925293 22.08456993103027 C 17.85916709899902 21.77231025695801 17.85665130615234 21.38119506835938 17.66475677490234 21.07138061523438 C 17.47286415100098 20.76156425476074 17.12381935119629 20.58508110046387 16.76055526733398 20.61419868469238 C 16.39728927612305 20.6433162689209 16.08081436157227 20.87314224243164 15.94072151184082 21.20956993103027 L 13.62683010101318 25.83734893798828 L 11.68238544464111 23.89290237426758 C 11.30115413665771 23.51167488098145 10.68305969238281 23.51167488098145 10.30182933807373 23.89290428161621 C 9.920599937438965 24.27413368225098 9.920599937438965 24.8922290802002 10.30182933807373 25.27345848083496 L 13.19905376434326 28.16095924377441 Z M 13.19905376434326 16.49428939819336 C 13.38253021240234 16.67627716064453 13.6309118270874 16.77773094177246 13.88933181762695 16.77623558044434 L 14.04488754272461 16.77623558044434 C 14.35185527801514 16.72492218017578 14.61570358276367 16.52974510192871 14.75460910797119 16.25123405456543 L 17.6712760925293 10.4178991317749 C 17.85916709899902 10.10564041137695 17.85665130615234 9.714526176452637 17.66475677490234 9.40471076965332 C 17.47286415100098 9.094895362854004 17.12381935119629 8.918413162231445 16.76055526733398 8.947529792785645 C 16.39729118347168 8.97664737701416 16.0808162689209 9.206474304199219 15.94072151184082 9.542899131774902 L 13.62683010101318 14.17067813873291 L 11.68238544464111 12.22623348236084 C 11.30115413665771 11.84500408172607 10.6830587387085 11.84500408172607 10.30182933807373 12.22623443603516 C 9.920599937438965 12.60746479034424 9.920599937438965 13.22556018829346 10.30182933807373 13.60679054260254 L 13.19905376434326 16.49428939819336 Z" fill="#fd9467" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pghhpi =
    '<svg viewBox="30.3 39.1 7.4 7.9" ><path transform="translate(-0.78, -1.06)" d="M 38.4577751159668 44.83694458007812 L 31.03000068664551 48.05500030517578 L 32.90638732910156 40.18000030517578 L 38.4577751159668 44.83694458007812 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xzhg3k =
    '<svg viewBox="3.0 2.0 56.4 58.3" ><path transform="translate(0.0, 0.0)" d="M 59.38889694213867 17.8861141204834 C 59.30780029296875 16.99697303771973 58.87353897094727 16.1774845123291 58.1833381652832 15.61111545562744 L 56.32639694213867 14.05555725097656 C 54.89511489868164 12.85651969909668 52.76306915283203 13.04361724853516 51.5625 14.47361183166504 L 49.22916793823242 17.24444770812988 L 49.22916793823242 17.24444770812988 L 45.77778244018555 21.34722518920898 L 45.77778244018555 11.55694580078125 C 45.77710723876953 10.78365802764893 45.46936416625977 10.04229068756104 44.92222595214844 9.495834350585938 L 38.28195190429688 2.855555772781372 C 37.73549270629883 2.308416604995728 36.99412536621094 2.000679492950439 36.2208366394043 2.000000238418579 L 5.916667461395264 2 C 4.305836200714111 2 2.999999523162842 3.305836915969849 3 4.916667938232422 L 3 57.41667556762695 C 3 59.02750778198242 4.30583667755127 60.33334350585938 5.916667461395264 60.33334350585938 L 42.86111831665039 60.33333969116211 C 44.47194671630859 60.33334350585938 45.77778244018555 59.02750778198242 45.77778244018555 57.41667938232422 L 45.77778244018555 35.63889312744141 L 58.60139465332031 20.35555839538574 C 59.18129730224609 19.66958236694336 59.46461486816406 18.78116226196289 59.38889694213867 17.88611221313477 Z M 38.00000381469727 5.31527853012085 L 42.46250534057617 9.777779579162598 L 38.00000381469727 9.777779579162598 L 38.00000381469727 5.31527853012085 Z M 43.83333969116211 57.41667556762695 C 43.83333969116211 57.95361709594727 43.3980598449707 58.38889694213867 42.86111831665039 58.38889694213867 L 5.916667461395264 58.38889694213867 C 5.37972354888916 58.38889694213867 4.944445133209229 57.95361709594727 4.944445133209229 57.41667556762695 L 4.944445133209229 4.916667461395264 C 4.944445133209229 4.37972354888916 5.37972354888916 3.94444465637207 5.916667461395264 3.94444465637207 L 36.05556106567383 3.94444465637207 L 36.05556106567383 10.75000190734863 C 36.05556106567383 11.28694534301758 36.49084091186523 11.72222423553467 37.02778244018555 11.72222423553467 L 43.83333969116211 11.72222423553467 L 43.83333969116211 23.38889312744141 C 43.82473754882812 23.46318054199219 43.82473754882812 23.5382137298584 43.83333969116211 23.61250305175781 L 31.38889312744141 38.49722671508789 C 31.29614639282227 38.60352325439453 31.22955513000488 38.73004150390625 31.19444847106934 38.86667251586914 C 31.19444847106934 38.86667251586914 31.19444847106934 38.86667251586914 31.19444847106934 38.86667251586914 L 29.31805801391602 46.74167633056641 C 29.23189353942871 47.10037612915039 29.35615921020508 47.47693634033203 29.63889503479004 47.71389770507812 C 29.81245613098145 47.86234664916992 30.03273773193359 47.9449577331543 30.2611141204834 47.94723892211914 C 30.39436531066895 47.94490051269531 30.52610397338867 47.91855621337891 30.65000152587891 47.86945343017578 L 38.07778167724609 44.64167785644531 L 38.07778167724609 44.64167785644531 C 38.21287536621094 44.58190536499023 38.33257293701172 44.49213409423828 38.42778015136719 44.37917709350586 L 43.83333969116211 37.97222518920898 L 43.83333969116211 57.41667556762695 Z M 32.71111679077148 40.88889312744141 L 35.85139465332031 43.52361679077148 L 31.65139389038086 45.35139465332031 L 32.71111679077148 40.88889312744141 Z M 37.57222747802734 42.42500686645508 L 33.50833892822266 39.0222282409668 L 50.09445190429688 19.21805763244629 L 54.15834045410156 22.63055801391602 L 37.57222747802734 42.42500686645508 Z M 57.11389923095703 19.09167098999023 L 55.40278625488281 21.13333702087402 L 51.3486213684082 17.73055839538574 L 53.05001068115234 15.6986141204834 C 53.56455612182617 15.09259986877441 54.47135925292969 15.01450443267822 55.08194732666016 15.52361583709717 L 56.92918014526367 17.07917022705078 C 57.53519058227539 17.59371757507324 57.6132926940918 18.50052452087402 57.10417938232422 19.11111640930176 Z" fill="#4e5b5f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
