.class public Lcom/motorola/contacts/dialpad/ChineseHighlighter;
.super Lcom/motorola/contacts/dialpad/Highlighter;
.source "ChineseHighlighter.java"


# static fields
.field private static mChineseHighlighter:Lcom/motorola/contacts/dialpad/ChineseHighlighter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/motorola/contacts/dialpad/ChineseHighlighter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/motorola/contacts/dialpad/Highlighter;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Lcom/motorola/contacts/dialpad/ChineseHighlighter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/motorola/contacts/dialpad/ChineseHighlighter;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/motorola/contacts/dialpad/ChineseHighlighter;

    invoke-direct {v0}, Lcom/motorola/contacts/dialpad/ChineseHighlighter;-><init>()V

    sput-object v0, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/motorola/contacts/dialpad/ChineseHighlighter;

    .line 47
    :cond_0
    sget-object v0, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->mChineseHighlighter:Lcom/motorola/contacts/dialpad/ChineseHighlighter;

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
    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    .line 54
    .local v24, "str":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    .line 55
    .local v20, "matchedStr":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v16

    .line 56
    .local v16, "len":I
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v23

    .line 58
    .local v23, "size":I
    if-nez v16, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    move/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 61
    .local v10, "acronymStrB":Ljava/lang/StringBuilder;
    new-instance v28, Ljava/lang/StringBuilder;

    mul-int/lit8 v31, v23, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 63
    .local v28, "stripStrB":Ljava/lang/StringBuilder;
    move/from16 v0, v23

    new-array v6, v0, [I

    .line 64
    .local v6, "acroArray":[I
    mul-int/lit8 v31, v23, 0xa

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 65
    .local v25, "stripArray":[I
    move/from16 v0, v23

    new-array v8, v0, [I

    .line 66
    .local v8, "acroStripArray":[I
    const/4 v12, 0x1

    .line 68
    .local v12, "canAcro":Z
    const/4 v7, 0x0

    .line 69
    .local v7, "acroIndex":I
    const/16 v26, 0x0

    .line 71
    .local v26, "stripIndex":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v23

    if-ge v14, v0, :cond_8

    .line 72
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 74
    .local v11, "c":C
    const/16 v31, 0x4e00

    move/from16 v0, v31

    if-lt v11, v0, :cond_4

    const v31, 0x9fa5

    move/from16 v0, v31

    if-gt v11, v0, :cond_4

    .line 77
    invoke-static {}, Lcom/motorola/contacts/dialpad/HanziToPinyin;->getInstance()Lcom/motorola/contacts/dialpad/HanziToPinyin;

    move-result-object v31

    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/motorola/contacts/dialpad/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v30

    .line 78
    .local v30, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-lez v31, :cond_3

    .line 79
    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;

    .line 80
    .local v29, "token":Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 84
    .local v21, "pinyinChar":Ljava/lang/String;
    const/16 v31, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 85
    .local v13, "ch":C
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    aput v14, v6, v7

    .line 87
    aput v26, v8, v7

    .line 88
    add-int/lit8 v7, v7, 0x1

    .line 95
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v17

    .line 96
    .local v17, "length":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_2

    .line 97
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 98
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    aput v14, v25, v26

    .line 100
    add-int/lit8 v26, v26, 0x1

    .line 96
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 103
    :cond_2
    const/4 v12, 0x1

    .line 71
    .end local v13    # "ch":C
    .end local v15    # "j":I
    .end local v17    # "length":I
    .end local v21    # "pinyinChar":Ljava/lang/String;
    .end local v29    # "token":Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;
    .end local v30    # "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/dialpad/HanziToPinyin$Token;>;"
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 105
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

    .line 107
    :cond_5
    const/4 v12, 0x1

    goto :goto_3

    .line 108
    :cond_6
    invoke-static {v11}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 114
    invoke-static {v11}, Lcom/motorola/contacts/dialpad/ChineseHighlighter;->coreLang2Alpha(C)C

    move-result v5

    .line 115
    .local v5, "NormalizedCh":C
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    aput v14, v25, v26

    .line 119
    if-eqz v12, :cond_7

    .line 120
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    aput v14, v6, v7

    .line 122
    aput v26, v8, v7

    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 126
    :cond_7
    add-int/lit8 v26, v26, 0x1

    .line 127
    const/4 v12, 0x0

    goto :goto_3

    .line 133
    .end local v5    # "NormalizedCh":C
    .end local v11    # "c":C
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 134
    .local v9, "acronymStr":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 137
    .local v27, "stripStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/motorola/contacts/dialpad/SmartDialerUtil;->noAlphaChar(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 138
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 139
    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 143
    :cond_9
    const/16 v22, 0x0

    .line 146
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

    .line 147
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 150
    :cond_a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 152
    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v19, v0

    .line 153
    .local v19, "markupArray":[Landroid/text/style/BackgroundColorSpan;
    move/from16 v0, v16

    new-array v0, v0, [Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v18, v0

    .line 157
    .local v18, "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    const/4 v14, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v14, v0, :cond_0

    .line 158
    :try_start_0
    new-instance v31, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    aput-object v31, v19, v14

    .line 159
    new-instance v31, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v31

    move/from16 v1, p4

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v31, v18, v14

    .line 160
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

    .line 161
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

    .line 162
    add-int/lit8 v22, v22, 0x1

    .line 157
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 170
    .end local v18    # "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    .end local v19    # "markupArray":[Landroid/text/style/BackgroundColorSpan;
    :cond_b
    const/16 v22, 0x0

    .line 171
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

    .line 173
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 175
    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_0

    .line 179
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

    .line 181
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

    .line 183
    :catch_0
    move-exception v31

    goto/16 :goto_0

    .line 164
    .restart local v18    # "makeupTextArray":[Landroid/text/style/ForegroundColorSpan;
    .restart local v19    # "markupArray":[Landroid/text/style/BackgroundColorSpan;
    :catch_1
    move-exception v31

    goto/16 :goto_0
.end method
