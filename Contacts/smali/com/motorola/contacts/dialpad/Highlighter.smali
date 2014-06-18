.class public abstract Lcom/motorola/contacts/dialpad/Highlighter;
.super Ljava/lang/Object;
.source "Highlighter.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/dialpad/Highlighter;->DBG:Z

    .line 44
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->VDBG:Z

    sput-boolean v0, Lcom/motorola/contacts/dialpad/Highlighter;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static coreLang2Alpha(C)C
    .locals 4
    .param p0, "ch"    # C

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "mapCh":C
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "newCh":Ljava/lang/String;
    const/16 v3, 0x30

    if-lt p0, v3, :cond_0

    const/16 v3, 0x39

    if-gt p0, v3, :cond_0

    .line 231
    move v0, p0

    .line 236
    :goto_0
    return v0

    .line 233
    :cond_0
    sget-object v3, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v1, v3}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "normalizer":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private static getHighlighter(Landroid/text/Spannable;)Lcom/motorola/contacts/dialpad/Highlighter;
    .locals 3
    .param p0, "name"    # Landroid/text/Spannable;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "highlighter":Lcom/motorola/contacts/dialpad/Highlighter;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "nameStyle":I
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 124
    sget-boolean v2, Lcom/motorola/contacts/dialpad/Highlighter;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "it\'s Korean name."

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->log(Ljava/lang/String;)V

    .line 125
    :cond_0
    invoke-static {}, Lcom/motorola/contacts/dialpad/KoreanHighlighter;->getInstance()Lcom/motorola/contacts/dialpad/KoreanHighlighter;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 126
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 127
    :cond_2
    sget-boolean v2, Lcom/motorola/contacts/dialpad/Highlighter;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "it\'s Chinese name."

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->log(Ljava/lang/String;)V

    .line 128
    :cond_3
    invoke-static {}, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->getInstance()Lcom/motorola/contacts/dialpad/ChineseHighlighter;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 130
    sget-boolean v2, Lcom/motorola/contacts/dialpad/Highlighter;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "it\'s Western name."

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->log(Ljava/lang/String;)V

    .line 131
    :cond_5
    invoke-static {}, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->getInstance()Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_6
    sget-boolean v2, Lcom/motorola/contacts/dialpad/Highlighter;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Not recognized name style, default use Western highlight."

    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->log(Ljava/lang/String;)V

    .line 134
    :cond_7
    invoke-static {}, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->getInstance()Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    move-result-object v0

    goto :goto_0
.end method

.method private static guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    .local v1, "length":I
    :goto_0
    if-ge p1, v1, :cond_2

    .line 211
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 212
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 214
    .local v2, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const/4 v3, 0x4

    .line 224
    .end local v0    # "codePoint":I
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 217
    .restart local v0    # "codePoint":I
    .restart local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/motorola/contacts/dialpad/Highlighter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    const/4 v3, 0x5

    goto :goto_1

    .line 221
    .end local v2    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p1, v3

    .line 222
    goto :goto_0

    .line 224
    .end local v0    # "codePoint":I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private static guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const/4 v2, 0x0

    .line 172
    :cond_0
    :goto_0
    return v2

    .line 144
    :cond_1
    const/4 v2, 0x0

    .line 145
    .local v2, "nameStyle":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 146
    .local v1, "length":I
    const/4 v3, 0x0

    .line 147
    .local v3, "offset":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 148
    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 149
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 150
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 152
    .local v4, "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/Highlighter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 154
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/Highlighter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {p0, v5}, Lcom/motorola/contacts/dialpad/Highlighter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/Highlighter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    const/4 v2, 0x4

    goto :goto_0

    .line 164
    :cond_3
    invoke-static {v4}, Lcom/motorola/contacts/dialpad/Highlighter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 165
    const/4 v2, 0x5

    goto :goto_0

    .line 168
    :cond_4
    const/4 v2, 0x1

    .line 170
    .end local v4    # "unicodeBlock":Ljava/lang/Character$UnicodeBlock;
    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 171
    goto :goto_1
.end method

.method public static highlight(Landroid/text/Spannable;Ljava/lang/String;ZIII)V
    .locals 1
    .param p0, "name"    # Landroid/text/Spannable;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "isNumber"    # Z
    .param p3, "matchOffset"    # I
    .param p4, "color"    # I
    .param p5, "text_color"    # I

    .prologue
    .line 50
    if-eqz p2, :cond_0

    .line 51
    invoke-static {p0, p1, p3, p4, p5}, Lcom/motorola/contacts/dialpad/Highlighter;->numHighlight(Landroid/text/Spannable;Ljava/lang/String;III)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/motorola/contacts/dialpad/Highlighter;->getHighlighter(Landroid/text/Spannable;)Lcom/motorola/contacts/dialpad/Highlighter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p4, p5}, Lcom/motorola/contacts/dialpad/Highlighter;->nameHighlight(Landroid/text/Spannable;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .param p0, "block"    # Ljava/lang/Character$UnicodeBlock;

    .prologue
    .line 184
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
    .line 202
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
    .line 196
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
    .line 176
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

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 241
    const-string v0, "Highlighter"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method private static numHighlight(Landroid/text/Spannable;Ljava/lang/String;III)V
    .locals 15
    .param p0, "name"    # Landroid/text/Spannable;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "matchOffset"    # I
    .param p3, "color"    # I
    .param p4, "text_color"    # I

    .prologue
    .line 62
    const/4 v7, 0x0

    .line 63
    .local v7, "match":Z
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "str":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "orig":Ljava/lang/String;
    const/4 v10, -0x1

    .line 67
    .local v10, "startPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 70
    .local v5, "len":I
    invoke-static/range {p1 .. p1}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->hasDigitsChar(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 71
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "pat":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v12, v12, p2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    add-int/lit8 v6, v12, 0x1

    .line 78
    .local v6, "length":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 82
    add-int v12, v4, p2

    :try_start_0
    invoke-virtual {v8, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v12, v13, :cond_2

    .line 83
    const/4 v7, 0x1

    .line 84
    add-int v12, v4, p2

    add-int/lit8 v1, v12, 0x1

    .line 85
    .local v1, "currPos":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 86
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v12, v13, :cond_0

    .line 87
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->isSeparator(C)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 88
    add-int/lit8 v5, v5, 0x1

    .line 89
    add-int/lit8 v3, v3, -0x1

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_1
    const/4 v7, 0x0

    .line 92
    const/4 v10, -0x1

    .line 93
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 106
    .end local v1    # "currPos":I
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eqz v7, :cond_5

    .line 107
    add-int v10, v4, p2

    .line 111
    :cond_3
    const/4 v12, -0x1

    if-eq v10, v12, :cond_4

    .line 112
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v13, v10, v5

    if-lt v12, v13, :cond_4

    .line 113
    new-instance v12, Landroid/text/style/BackgroundColorSpan;

    move/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v13, v10, v5

    const/16 v14, 0x21

    invoke-interface {p0, v12, v10, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 114
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    move/from16 v0, p4

    invoke-direct {v12, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v13, v10, v5

    const/16 v14, 0x21

    invoke-interface {p0, v12, v10, v13, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 117
    .end local v4    # "j":I
    .end local v6    # "length":I
    .end local v9    # "pat":Ljava/lang/String;
    :cond_4
    return-void

    .line 100
    .restart local v4    # "j":I
    .restart local v6    # "length":I
    .restart local v9    # "pat":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v7, 0x0

    .line 102
    const/4 v10, -0x1

    .line 103
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_2

    .line 78
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method abstract nameHighlight(Landroid/text/Spannable;Ljava/lang/String;II)V
.end method
