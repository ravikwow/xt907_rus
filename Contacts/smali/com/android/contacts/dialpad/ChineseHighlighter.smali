.class public Lcom/android/contacts/dialpad/ChineseHighlighter;
.super Lcom/android/contacts/dialpad/Highlighter;
.source "ChineseHighlighter.java"


# static fields
.field private static mChineseHighlighter:Lcom/android/contacts/dialpad/ChineseHighlighter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/android/contacts/dialpad/ChineseHighlighter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/contacts/dialpad/Highlighter;-><init>()V

    .line 48
    return-void
.end method

.method public static getInstance()Lcom/android/contacts/dialpad/ChineseHighlighter;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/android/contacts/dialpad/ChineseHighlighter;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/android/contacts/dialpad/ChineseHighlighter;

    invoke-direct {v0}, Lcom/android/contacts/dialpad/ChineseHighlighter;-><init>()V

    sput-object v0, Lcom/android/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/android/contacts/dialpad/ChineseHighlighter;

    .line 53
    :cond_0
    sget-object v0, Lcom/android/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/android/contacts/dialpad/ChineseHighlighter;

    return-object v0
.end method


# virtual methods
.method public nameHighlight(Landroid/text/Spannable;Ljava/lang/String;II)V
    .locals 35
    .param p1, "name"    # Landroid/text/Spannable;
    .param p2, "matchStr"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "text_color"    # I

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 60
    .local v24, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 61
    .local v20, "matchedStr":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    .line 62
    .local v16, "len":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v23

    .line 64
    .local v23, "size":I
    if-nez v16, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 67
    .local v10, "acronymStrB":Ljava/lang/StringBuilder;
    new-instance v28, Ljava/lang/StringBuilder;

    mul-int/lit8 v31, v23, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .local v28, "stripStrB":Ljava/lang/StringBuilder;
    move/from16 v0, v23

    new-array v6, v0, [I

    .line 70
    .local v6, "acroArray":[I
    mul-int/lit8 v31, v23, 0xa

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 71
    .local v25, "stripArray":[I
    move/from16 v0, v23

    new-array v8, v0, [I

    .line 72
    .local v8, "acroStripArray":[I
    const/4 v12, 0x1

    .line 74
    .local v12, "canAcro":Z
    const/4 v7, 0x0

    .line 75
    .local v7, "acroIndex":I
    const/16 v26, 0x0

    .line 77
    .local v26, "stripIndex":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v14, v0, :cond_8

    .line 78
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 80
    .local v11, "c":C
    const/16 v31, 0x4e00

    move/from16 v0, v31

    if-lt v11, v0, :cond_4

    const v31, 0x9fa5

    move/from16 v0, v31

    if-gt v11, v0, :cond_4

    .line 83
    invoke-static {}, Lcom/android/contacts/dialpad/HanziToPinyin;->getInstance()Lcom/android/contacts/dialpad/HanziToPinyin;

    move-result-object v31

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/android/contacts/dialpad/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 84
    .local v30, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/dialpad/HanziToPinyin$Token;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_3

    .line 85
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/contacts/dialpad/HanziToPinyin$Token;

    .line 86
    .local v29, "token":Lcom/android/contacts/dialpad/HanziToPinyin$Token;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/contacts/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 90
    .local v21, "pinyinChar":Ljava/lang/String;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 91
    .local v13, "ch":C
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    aput v14, v6, v7

    .line 93
    aput v26, v8, v7

    .line 94
    add-int/lit8 v7, v7, 0x1

    .line 101
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v17

    .line 102
    .local v17, "length":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 103
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 104
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    aput v14, v25, v26

    .line 106
    add-int/lit8 v26, v26, 0x1

    .line 102
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 109
    :cond_2
    const/4 v12, 0x1

    .line 77
    .end local v13    # "ch":C
    .end local v15    # "j":I
    .end local v17    # "length":I
    .end local v21    # "pinyinChar":Ljava/lang/String;
    .end local v29    # "token":Lcom/android/contacts/dialpad/HanziToPinyin$Token;
    .end local v30    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/dialpad/HanziToPinyin$Token;>;"
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 111
    :cond_4
    const/16 v31, 0x20

    move/from16 v0, v31

    if-eq v11, v0, :cond_5

    const/16 v31, 0x2e

    move/from16 v0, v31

    if-eq v11, v0, :cond_5

    const/16 v31, 0x2c

    move/from16 v0, v31

    if-ne v11, v0, :cond_6

    .line 113
    :cond_5
    const/4 v12, 0x1

    goto :goto_3

    .line 114
    :cond_6
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 120
    invoke-static {v11}, Lcom/android/contacts/dialpad/ChineseHighlighter;->coreLang2Alpha(C)C

    move-result v5

    .line 121
    .local v5, "NormalizedCh":C
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    aput v14, v25, v26

    .line 125
    if-eqz v12, :cond_7

    .line 126
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    aput v14, v6, v7

    .line 128
    aput v26, v8, v7

    .line 129
    add-int/lit8 v7, v7, 0x1

    .line 132
    :cond_7
    add-int/lit8 v26, v26, 0x1

    .line 133
    const/4 v12, 0x0

    goto :goto_3

    .line 139
    .end local v5    # "NormalizedCh":C
    .end local v11    # "c":C
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 140
    .local v9, "acronymStr":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 143
    .local v27, "stripStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/contacts/dialpad/SmartDialerUtil;->noAlphaChar(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 144
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 145
    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 149
    :cond_9
    const/16 v22, 0x0

    .line 152
    .local v22, "pos":I
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_a

    const/16 v31, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v31

    move/from16 v3, v16

    invoke-virtual {v9, v0, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v31

    if-nez v31, :cond_a

    .line 153
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 156
    :cond_a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 158
    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v19, v0

    .line 159
    .local v19, "markupArray":[Landroid/text/style/BackgroundColorSpan;
    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v18, v0

    .line 163
    .local v18, "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 164
    :try_start_0
    new-instance v31, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v31, v19, v14

    .line 165
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v31, v18, v14

    .line 166
    aget-object v31, v19, v14

    aget v32, v6, v22

    aget v33, v6, v22

    add-int/lit8 v33, v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 167
    aget-object v31, v18, v14

    aget v32, v6, v22

    aget v33, v6, v22

    add-int/lit8 v33, v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    add-int/lit8 v22, v22, 0x1

    .line 163
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 176
    .end local v18    # "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    .end local v19    # "markupArray":[Landroid/text/style/BackgroundColorSpan;
    :cond_b
    const/16 v22, 0x0

    .line 177
    :goto_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_c

    aget v31, v8, v22

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move-object/from16 v2, v20

    move/from16 v3, v32

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v31

    if-nez v31, :cond_c

    .line 179
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 181
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 185
    :try_start_1
    new-instance v31, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aget v32, v6, v22

    aget v33, v8, v22

    add-int v33, v33, v16

    add-int/lit8 v33, v33, -0x1

    aget v33, v25, v33

    add-int/lit8 v33, v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 187
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aget v32, v6, v22

    aget v33, v8, v22

    add-int v33, v33, v16

    add-int/lit8 v33, v33, -0x1

    aget v33, v25, v33

    add-int/lit8 v33, v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v31

    goto/16 :goto_0

    .line 170
    .restart local v18    # "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    .restart local v19    # "markupArray":[Landroid/text/style/BackgroundColorSpan;
    :catch_1
    move-exception v31

    goto/16 :goto_0
.end method
