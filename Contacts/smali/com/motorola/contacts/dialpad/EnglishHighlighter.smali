.class public Lcom/motorola/contacts/dialpad/EnglishHighlighter;
.super Lcom/motorola/contacts/dialpad/Highlighter;
.source "EnglishHighlighter.java"


# static fields
.field private static mEnglishHighlighter:Lcom/motorola/contacts/dialpad/EnglishHighlighter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->mEnglishHighlighter:Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/motorola/contacts/dialpad/Highlighter;-><init>()V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/motorola/contacts/dialpad/EnglishHighlighter;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->mEnglishHighlighter:Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    invoke-direct {v0}, Lcom/motorola/contacts/dialpad/EnglishHighlighter;-><init>()V

    sput-object v0, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->mEnglishHighlighter:Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    .line 41
    :cond_0
    sget-object v0, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->mEnglishHighlighter:Lcom/motorola/contacts/dialpad/EnglishHighlighter;

    return-object v0
.end method


# virtual methods
.method public nameHighlight(Landroid/text/Spannable;Ljava/lang/String;II)V
    .locals 31
    .param p1, "name"    # Landroid/text/Spannable;
    .param p2, "matchStr"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "text_color"    # I

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 48
    .local v22, "str":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 49
    .local v14, "orig":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, "pat":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v13

    .line 51
    .local v13, "len":I
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v17

    .line 52
    .local v17, "size":I
    move/from16 v18, v17

    .line 53
    .local v18, "size1":I
    const/16 v21, -0x1

    .line 54
    .local v21, "startPos":I
    const/4 v11, -0x1

    .line 56
    .local v11, "endPos":I
    if-nez v13, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 62
    .local v19, "specialArray":[I
    const/16 v20, 0x0

    .line 64
    .local v20, "specialIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_4

    .line 65
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 66
    .local v10, "ch":C
    const/16 v28, 0xdf

    move/from16 v0, v28

    if-eq v10, v0, :cond_2

    const/16 v28, 0x153

    move/from16 v0, v28

    if-eq v10, v0, :cond_2

    const/16 v28, 0xe6

    move/from16 v0, v28

    if-eq v10, v0, :cond_2

    const/16 v28, 0xc6

    move/from16 v0, v28

    if-eq v10, v0, :cond_2

    const/16 v28, 0x152

    move/from16 v0, v28

    if-ne v10, v0, :cond_3

    .line 67
    :cond_2
    add-int/lit8 v28, v12, 0x1

    aput v28, v19, v20

    .line 68
    add-int/lit8 v20, v20, 0x1

    .line 64
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 71
    .end local v10    # "ch":C
    :cond_4
    const/16 v28, 0x0

    aget v28, v19, v28

    if-eqz v28, :cond_5

    .line 73
    const-string v28, "\u00df"

    const-string v29, "SS"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\u00e6"

    const-string v30, "AE"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\u0153"

    const-string v30, "OE"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\u00c6"

    const-string v30, "AE"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    const-string v29, "\u0152"

    const-string v30, "OE"

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v27

    .line 74
    .local v27, "tmpStr":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    .line 75
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    .line 79
    .end local v27    # "tmpStr":Ljava/lang/String;
    :cond_5
    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 80
    .local v26, "stripStrB":Ljava/lang/StringBuilder;
    move/from16 v0, v18

    new-array v5, v0, [I

    .line 81
    .local v5, "acroArray":[I
    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .line 82
    .local v23, "stripArray":[I
    move/from16 v0, v18

    new-array v7, v0, [I

    .line 83
    .local v7, "acroStripArray":[I
    const/4 v9, 0x1

    .line 85
    .local v9, "canAcro":Z
    const/4 v6, 0x0

    .line 86
    .local v6, "acroIndex":I
    const/16 v24, 0x0

    .line 88
    .local v24, "stripIndex":I
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    .line 89
    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 90
    .local v8, "c":C
    const/16 v28, 0x20

    move/from16 v0, v28

    if-eq v8, v0, :cond_6

    const/16 v28, 0x2e

    move/from16 v0, v28

    if-eq v8, v0, :cond_6

    const/16 v28, 0x2c

    move/from16 v0, v28

    if-eq v8, v0, :cond_6

    const/16 v28, 0x2d

    move/from16 v0, v28

    if-ne v8, v0, :cond_8

    .line 92
    :cond_6
    const/4 v9, 0x1

    .line 88
    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 93
    :cond_8
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 96
    invoke-static {v8}, Lcom/motorola/contacts/dialpad/EnglishHighlighter;->coreLang2Alpha(C)C

    move-result v4

    .line 97
    .local v4, "NormalizedCh":C
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    aput v12, v23, v24

    .line 100
    if-eqz v9, :cond_9

    .line 101
    aput v12, v5, v6

    .line 102
    aput v24, v7, v6

    .line 103
    add-int/lit8 v6, v6, 0x1

    .line 105
    :cond_9
    add-int/lit8 v24, v24, 0x1

    .line 106
    const/4 v9, 0x0

    goto :goto_3

    .line 111
    .end local v4    # "NormalizedCh":C
    .end local v8    # "c":C
    :cond_a
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 112
    .local v25, "stripStr":Ljava/lang/String;
    invoke-static {v15}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->noAlphaChar(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 113
    invoke-static/range {v25 .. v25}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 116
    :cond_b
    const/16 v16, 0x0

    .line 117
    .local v16, "pos":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v6, :cond_c

    aget v28, v7, v16

    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v15, v2, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v28

    if-nez v28, :cond_c

    .line 118
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 121
    :cond_c
    move/from16 v0, v16

    if-ge v0, v6, :cond_0

    .line 123
    aget v21, v5, v16

    .line 124
    aget v28, v7, v16

    add-int v28, v28, v13

    add-int/lit8 v28, v28, -0x1

    aget v28, v23, v28

    add-int/lit8 v11, v28, 0x1

    .line 126
    const/4 v12, 0x0

    :goto_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_d

    .line 127
    aget v28, v19, v12

    if-nez v28, :cond_e

    .line 133
    :cond_d
    :try_start_0
    new-instance v28, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v21

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 134
    new-instance v28, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v28

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move/from16 v2, v21

    move/from16 v3, v29

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v28

    goto/16 :goto_0

    .line 128
    :cond_e
    aget v28, v19, v12

    move/from16 v0, v28

    move/from16 v1, v21

    if-ge v0, v1, :cond_f

    add-int/lit8 v21, v21, -0x1

    .line 129
    :cond_f
    aget v28, v19, v12

    move/from16 v0, v28

    if-ge v0, v11, :cond_10

    add-int/lit8 v11, v11, -0x1

    .line 126
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_5
.end method
