.class public abstract Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
.super Ljava/lang/Object;
.source "SmartDialerTokenUtils.java"


# static fields
.field protected static final ALPHABET2NUM_TABLE:[C

.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field protected static final sLatinExtendedToDigitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 65
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 69
    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->ALPHABET2NUM_TABLE:[C

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    .line 88
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "a"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "b"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "c"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "d"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "e"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "f"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "g"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "h"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "i"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "j"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "k"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "l"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "m"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "n"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "o"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "q"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "r"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "s"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "t"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "u"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "v"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "w"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "x"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "y"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    const-string v1, "z"

    invoke-static {v1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    .line 130
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u00c6"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u00e6"

    const-string v2, "23"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u0152"

    const-string v2, "63"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u0153"

    const-string v2, "63"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u00df"

    const-string v2, "77"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    const-string v1, "\u0131"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void

    .line 69
    :array_0
    .array-data 2
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterDigitsForMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    const/4 v3, 0x0

    .line 260
    :goto_0
    return-object v3

    .line 257
    :cond_0
    const-string v2, "[^*0-9]"

    .line 258
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 259
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 260
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSmartDialerInstance(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, "locale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 359
    .local v1, "language":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 360
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 361
    .local v3, "nameStyleFromNameParse":Ljava/lang/Integer;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 362
    .local v4, "nameStyleFromTable":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 364
    .local v0, "judgeFromTable":Z
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 368
    :cond_0
    const-string v6, "SmartDialerTokenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current locale language is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 371
    const-string v6, "SmartDialerTokenUtils"

    const-string v7, "input name is null, unable to get corresponding name token instance !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :goto_0
    return-object v5

    .line 375
    :cond_1
    if-eqz p2, :cond_2

    .line 376
    const/4 v4, 0x0

    .line 377
    const-string v6, "data10"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 378
    if-eqz v4, :cond_2

    .line 379
    const/4 v0, 0x1

    .line 383
    :cond_2
    if-eqz v0, :cond_d

    .line 384
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v9, v6, :cond_7

    .line 387
    const-string v6, "SmartDialerTokenUtils"

    const-string v7, "name style from table is Western, need get adjust name style further."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {p1}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v9, v6, :cond_3

    .line 392
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "adjusted name style is Western."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    move-result-object v5

    goto :goto_0

    .line 394
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v10, v6, :cond_4

    .line 395
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "adjusted name style is Chinese."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    move-result-object v5

    goto :goto_0

    .line 397
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v12, v6, :cond_5

    .line 398
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "adjusted name style is Korean."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    move-result-object v5

    goto :goto_0

    .line 400
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v11, v6, :cond_6

    .line 401
    const-string v6, "SmartDialerTokenUtils"

    const-string v7, "adjusted name style is Japanese, not support yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_6
    const-string v6, "SmartDialerTokenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjusted name style is not support : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 407
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v10, v6, :cond_8

    const/4 v6, 0x3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v6, v7, :cond_8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_9

    sget-object v6, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 410
    :cond_8
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "name style is Chinese."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    move-result-object v5

    goto/16 :goto_0

    .line 412
    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v12, v6, :cond_a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_b

    sget-object v6, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 414
    :cond_a
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    move-result-object v5

    goto/16 :goto_0

    .line 415
    :cond_b
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v11, v6, :cond_c

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 417
    :cond_c
    const-string v6, "SmartDialerTokenUtils"

    const-string v7, "name style is Japanese, not support yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 423
    :cond_d
    invoke-static {p1}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 424
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v9, v6, :cond_e

    .line 425
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "name style is Western."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerWesternCoreLanguageTokenUtils;

    move-result-object v5

    goto/16 :goto_0

    .line 427
    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v10, v6, :cond_f

    .line 428
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "name style is CJK."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerChineseTokenUtils;

    move-result-object v5

    goto/16 :goto_0

    .line 430
    :cond_f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v12, v6, :cond_10

    .line 431
    const-string v5, "SmartDialerTokenUtils"

    const-string v6, "name style is Korean."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;->getInstance()Lcom/motorola/providers/contacts/smartdialer/SmartDialerKoreanTokenUtils;

    move-result-object v5

    goto/16 :goto_0

    .line 433
    :cond_10
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v11, v6, :cond_11

    .line 434
    const-string v6, "SmartDialerTokenUtils"

    const-string v7, "name style is Japanese, not support yet!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_11
    const-string v6, "SmartDialerTokenUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name style is not support : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 305
    .local v1, "length":I
    :goto_0
    if-ge p1, v1, :cond_2

    .line 306
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 307
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 309
    .local v2, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    const/4 v3, 0x4

    .line 319
    .end local v0    # "codePoint":I
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 312
    .restart local v0    # "codePoint":I
    .restart local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    const/4 v3, 0x5

    goto :goto_1

    .line 316
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 317
    goto :goto_0

    .line 319
    .end local v0    # "codePoint":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public static guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    if-nez p0, :cond_1

    .line 269
    const/4 v2, 0x0

    .line 300
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    const/4 v2, 0x0

    .line 273
    .local v2, "nameStyle":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 274
    .local v1, "length":I
    const/4 v3, 0x0

    .line 275
    .local v3, "offset":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 276
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 277
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 278
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 280
    .local v4, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 282
    invoke-static {v4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 285
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {p0, v5}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 288
    :cond_2
    invoke-static {v4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 289
    const/4 v2, 0x4

    goto :goto_0

    .line 292
    :cond_3
    invoke-static {v4}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 293
    const/4 v2, 0x5

    goto :goto_0

    .line 296
    :cond_4
    const/4 v2, 0x1

    .line 298
    .end local v4    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 299
    goto :goto_1
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "block"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 331
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 349
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 343
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "unicodeBlock"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 323
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected coreLanAlpha2Digit(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 145
    const/4 v7, 0x0

    .line 156
    :goto_0
    return-object v7

    .line 148
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v6, "tokeStrBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 150
    .local v2, "charArray":[C
    move-object v0, v2

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 151
    .local v1, "ch":C
    invoke-virtual {p0, v1}, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->coreLanAlpha2Digit(C)[C

    move-result-object v5

    .line 152
    .local v5, "mapch":[C
    const/4 v7, 0x0

    aget-char v7, v5, v7

    if-eqz v7, :cond_1

    .line 153
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 150
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v1    # "ch":C
    .end local v5    # "mapch":[C
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method protected coreLanAlpha2Digit(C)[C
    .locals 5
    .param p1, "ch"    # C

    .prologue
    const/4 v4, 0x0

    .line 163
    const/4 v3, 0x1

    new-array v2, v3, [C

    aput-char v4, v2, v4

    .line 165
    .local v2, "tkCh":[C
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "chStr":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "normalizer":Ljava/lang/String;
    const/16 v3, 0x30

    if-lt p1, v3, :cond_1

    const/16 v3, 0x39

    if-gt p1, v3, :cond_1

    .line 169
    aput-char p1, v2, v4

    .line 176
    :cond_0
    :goto_0
    return-object v2

    .line 170
    :cond_1
    sget-object v3, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    sget-object v3, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinNormalizerToBellPadDigitMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    .line 172
    :cond_2
    sget-object v3, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    sget-object v3, Lcom/motorola/providers/contacts/smartdialer/SmartDialerTokenUtils;->sLatinExtendedToDigitMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0
.end method

.method public abstract getSmartDialerToken(Ljava/lang/String;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 446
    const-string v0, "SmartDialerTokenUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    return-void
.end method

.method protected stripUnSupportCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    const/4 v3, 0x0

    .line 244
    :goto_0
    return-object v3

    .line 241
    :cond_0
    const-string v2, "[ ()-.,;*#+@$%&!\"\':?/]"

    .line 242
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 243
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 244
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
