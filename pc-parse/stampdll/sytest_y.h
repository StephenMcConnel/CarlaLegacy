#define LX_IDENTIFIER 257
#define LX_ALLOMORPH 258
#define LX_CURRENT 259
#define LX_FINAL 260
#define LX_FA_LEFT 261
#define LX_FA_RIGHT 262
#define LX_FS_LEFT 263
#define LX_FS_RIGHT 264
#define LX_FLEFT 265
#define LX_FRIGHT 266
#define LX_IF 267
#define LX_IFF 268
#define LX_THEN 269
#define LX_INITIAL 270
#define LX_MEMBER 271
#define LX_MORPHNAME 272
#define LX_PFINAL 273
#define LX_PINITIAL 274
#define LX_PROPERTY 275
#define LX_PUNCTUATION 276
#define LX_SURFACE 277
#define LX_TYPE 278
#define LX_XOR 279
#define LX_AND 280
#define LX_EQ 281
#define LX_GE 282
#define LX_GT 283
#define LX_INFX 284
#define LX_IS 285
#define LX_LE 286
#define LX_LEFT 287
#define LX_LT 288
#define LX_MATCHES 289
#define LX_NE 290
#define LX_NOT 291
#define LX_OR 292
#define LX_PRFX 293
#define LX_RIGHT 294
#define LX_ROOT 295
#define LX_SUFX 296
#define LX_TOCATEGORY 297
#define LX_FROMCATEGORY 298
#define LX_ORDRCLASS 299
#define LX_NEXT 300
#define LX_LAST 301
#define LX_INSERT 302
#define LX_AFTER 303
#define LX_BEFORE 304
#define LX_REPORT 305
#define LX_MESSAGE 306
typedef union  {
	int ival;
	char *cval;
	AmpleTestNode *tstval;
	StampAction *actval;
	} YYSTYPE;
extern YYSTYPE stampyylval;
