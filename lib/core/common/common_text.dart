import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_tmdb/core/app_constant.dart';

import 'common_color.dart';

class CommonText {
  //heading
  static final TextStyle fHeading1 = GoogleFonts.inter(
    fontSize: 40,
    color: CommonColor.fontWhite,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle fHeading2 = GoogleFonts.inter(
    fontSize: 28,
    color: CommonColor.fontWhite,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle fHeading3 = GoogleFonts.inter(
    fontSize: 22,
    color: CommonColor.fontWhite,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle fHeading4 = GoogleFonts.inter(
    fontSize: 20,
    color: CommonColor.fontWhite,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle fHeading5 = GoogleFonts.inter(
    fontSize: AppConstant.fontSize18,
    color: CommonColor.fontWhite,
    fontWeight: FontWeight.w700,
  );

  //body
  static final TextStyle fBodyLarge = GoogleFonts.inter(
    fontSize: AppConstant.fontSize14,
    color: CommonColor.fontWhite,
  );
  static final TextStyle fBodySmall = GoogleFonts.inter(
    fontSize: AppConstant.fontSize12,
    color: CommonColor.fontWhite,
  );

  //caption
  static final TextStyle fCaption = GoogleFonts.inter(
    fontSize: AppConstant.fontSize10,
    color: CommonColor.fontWhite,
  );
}
