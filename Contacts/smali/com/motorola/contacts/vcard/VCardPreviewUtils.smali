.class public Lcom/motorola/contacts/vcard/VCardPreviewUtils;
.super Ljava/lang/Object;
.source "VCardPreviewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static constructPreviewRequest(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/contacts/vcard/PreviewRequest;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 77
    .local v17, "resolver":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 78
    .local v9, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v11, 0x0

    .line 79
    .local v11, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v7, 0x1

    .line 82
    .local v7, "vcardVersion":I
    const/16 v18, 0x0

    .line 83
    .local v18, "shouldUseV30":Z
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 84
    .local v16, "is":Ljava/io/InputStream;
    new-instance v19, Lcom/android/vcard/VCardParser_V21;

    invoke-direct/range {v19 .. v19}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 86
    .local v19, "vcardParser":Lcom/android/vcard/VCardParser;
    :try_start_1
    new-instance v10, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v10}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v10, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v12, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v12}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 88
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v12, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 89
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/android/vcard/VCardParser_V21;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 90
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V21;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 110
    if-eqz v16, :cond_3

    .line 112
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_a

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .line 118
    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :goto_0
    if-eqz v18, :cond_1

    const/4 v7, 0x2

    .line 135
    :goto_1
    new-instance v2, Lcom/motorola/contacts/vcard/PreviewRequest;

    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v5

    invoke-virtual {v11}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v8

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v8}, Lcom/motorola/contacts/vcard/PreviewRequest;-><init>(Landroid/accounts/Account;Landroid/net/Uri;ILjava/lang/String;II)V

    .end local v16    # "is":Ljava/io/InputStream;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :goto_2
    return-object v2

    .line 113
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_0
    move-exception v2

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .line 114
    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_0

    .line 91
    :catch_1
    move-exception v14

    move-object v12, v11

    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v10, v9

    .line 93
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v14, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_3
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 97
    :goto_4
    const/16 v18, 0x1

    .line 98
    :try_start_6
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v16

    .line 99
    new-instance v20, Lcom/android/vcard/VCardParser_V30;

    invoke-direct/range {v20 .. v20}, Lcom/android/vcard/VCardParser_V30;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 101
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .local v20, "vcardParser":Lcom/android/vcard/VCardParser;
    :try_start_7
    new-instance v9, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v9}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_7
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 102
    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_8
    new-instance v11, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v11}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_8
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 103
    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_9
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 104
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/android/vcard/VCardParser_V30;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 105
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParser_V30;->parse(Ljava/io/InputStream;)V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 110
    if-eqz v16, :cond_2

    .line 112
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_a .. :try_end_a} :catch_6

    move-object/from16 v19, v20

    .line 114
    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    goto :goto_0

    .line 106
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_2
    move-exception v15

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .line 107
    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v15, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_5
    :try_start_b
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 110
    .end local v15    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v2

    move-object/from16 v19, v20

    .end local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :goto_6
    if-eqz v16, :cond_0

    .line 112
    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_c .. :try_end_c} :catch_6

    .line 114
    :cond_0
    :goto_7
    :try_start_d
    throw v2
    :try_end_d
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 119
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_3
    move-exception v13

    .line 120
    .local v13, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_8
    const-string v2, "VCardPreviewUtils"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v2, 0x0

    goto :goto_2

    .line 113
    .end local v13    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_4
    move-exception v2

    move-object/from16 v19, v20

    .line 114
    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    goto :goto_0

    .line 118
    .end local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    .line 124
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_5
    move-exception v13

    .line 125
    .local v13, "e":Ljava/io/FileNotFoundException;
    :goto_9
    const-string v2, "VCardPreviewUtils"

    const-string v3, "FileNotFoundException is found ."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    goto :goto_2

    .line 127
    .end local v13    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v13

    .line 128
    .local v13, "e":Lcom/android/vcard/exception/VCardException;
    :goto_a
    const-string v2, "VCardPreviewUtils"

    const-string v3, "VCardException is found ."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x0

    goto :goto_2

    .line 130
    .end local v13    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_7
    move-exception v13

    .line 131
    .local v13, "e":Ljava/io/IOException;
    const-string v2, "VCardPreviewUtils"

    const-string v3, "IOException is found ."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    goto :goto_2

    .line 94
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_8
    move-exception v2

    goto :goto_4

    .line 113
    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_9
    move-exception v3

    goto :goto_7

    .line 127
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_a
    move-exception v13

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_a

    .line 124
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_b
    move-exception v13

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_9

    .line 119
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_c
    move-exception v13

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_8

    .line 110
    :catchall_1
    move-exception v2

    goto :goto_6

    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catchall_3
    move-exception v2

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catchall_4
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_6

    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catchall_5
    move-exception v2

    move-object/from16 v19, v20

    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_6

    .line 106
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_d
    move-exception v15

    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_5

    :catch_e
    move-exception v15

    goto :goto_5

    .line 91
    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_f
    move-exception v14

    move-object v12, v11

    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_3

    :catch_10
    move-exception v14

    goto/16 :goto_3

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    :cond_2
    move-object/from16 v19, v20

    .end local v20    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v19    # "vcardParser":Lcom/android/vcard/VCardParser;
    goto/16 :goto_0

    .end local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v14    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :cond_3
    move-object v11, v12

    .end local v12    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v11    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v9, v10

    .end local v10    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v9    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_0
.end method

.method public static getVCardStrAt(Landroid/content/Context;Landroid/net/Uri;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pos"    # I

    .prologue
    const/4 v7, 0x0

    .line 243
    const/4 v1, 0x0

    .line 247
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    const-string v8, "VCardPreviewUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getVCardStrAt, uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 255
    :goto_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "ISO-8859-1"

    invoke-direct {v8, v1, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 256
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 259
    .local v6, "times":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 260
    const-string v8, "BEGIN:VCARD"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 261
    if-ne v6, p2, :cond_6

    .line 262
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_1
    if-ne v6, p2, :cond_3

    .line 270
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 271
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v8, "END:VCARD"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 285
    if-eqz v1, :cond_4

    .line 287
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 289
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "times":I
    :cond_4
    :goto_2
    return-object v7

    .line 253
    :cond_5
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "input":Ljava/io/InputStream;
    .local v2, "input":Ljava/io/InputStream;
    move-object v1, v2

    .end local v2    # "input":Ljava/io/InputStream;
    .restart local v1    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 265
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "times":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 278
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "times":I
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "VCardPreviewUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception in parseVCard - IO: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    if-eqz v1, :cond_4

    .line 287
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 288
    :catch_1
    move-exception v8

    goto :goto_2

    .line 281
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "VCardPreviewUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception in parseVCard - generic: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 285
    if-eqz v1, :cond_4

    .line 287
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 288
    :catch_3
    move-exception v8

    goto :goto_2

    .line 285
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v1, :cond_7

    .line 287
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 289
    :cond_7
    :goto_3
    throw v7

    .line 288
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v6    # "times":I
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "times":I
    :catch_5
    move-exception v8

    goto :goto_3
.end method

.method public static parseVCardStr(Landroid/content/Context;Lcom/motorola/contacts/vcard/PreviewRequest;Ljava/lang/String;)Lcom/android/vcard/VCardEntry;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "previewRequest"    # Lcom/motorola/contacts/vcard/PreviewRequest;
    .param p2, "vcardStr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 195
    const/4 v3, 0x0

    .line 199
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    const-string v7, "VCardPreviewUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseVCardStr, vcard:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-nez p1, :cond_1

    .line 233
    if-eqz v3, :cond_0

    .line 235
    :try_start_1
    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 237
    :cond_0
    :goto_0
    return-object v6

    .line 208
    :cond_1
    :try_start_2
    iget v7, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->vcardVersion:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    iget v7, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    invoke-direct {v5, v7}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    .line 212
    .local v5, "vcardParser":Lcom/android/vcard/VCardParser;
    :goto_1
    new-instance v0, Lcom/android/vcard/VCardEntryConstructor;

    iget v7, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    iget-object v8, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->account:Landroid/accounts/Account;

    iget-object v9, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedCharset:Ljava/lang/String;

    invoke-direct {v0, v7, v8, v9}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 214
    .local v0, "constructor":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v2, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;-><init>(Landroid/content/ContentResolver;)V

    .line 215
    .local v2, "eImplementer":Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    invoke-virtual {v0, v2}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 217
    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v7, "ISO-8859-1"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    :try_start_3
    invoke-virtual {v5, v4, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V

    .line 221
    const-string v7, "VCardPreviewUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "value of Contact Struct"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->mContactStruct:Lcom/android/vcard/VCardEntry;
    invoke-static {v2}, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->access$000(Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;)Lcom/android/vcard/VCardEntry;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    # getter for: Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->mContactStruct:Lcom/android/vcard/VCardEntry;
    invoke-static {v2}, Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;->access$000(Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;)Lcom/android/vcard/VCardEntry;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    .line 233
    if-eqz v4, :cond_2

    .line 235
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    :cond_2
    :goto_2
    move-object v3, v4

    .line 237
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 208
    .end local v0    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .end local v2    # "eImplementer":Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    .end local v5    # "vcardParser":Lcom/android/vcard/VCardParser;
    :cond_3
    :try_start_5
    new-instance v5, Lcom/android/vcard/VCardParser_V21;

    iget v7, p1, Lcom/motorola/contacts/vcard/PreviewRequest;->estimatedVCardType:I

    invoke-direct {v5, v7}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "VCardPreviewUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in parseVCard - IO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 233
    if-eqz v3, :cond_0

    .line 235
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 236
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 226
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 227
    .local v1, "e":Lcom/android/vcard/exception/VCardException;
    :goto_4
    :try_start_8
    const-string v7, "VCardPreviewUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in parseVCard - VCard: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 233
    if-eqz v3, :cond_0

    .line 235
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 236
    :catch_3
    move-exception v7

    goto/16 :goto_0

    .line 229
    .end local v1    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_4
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    const-string v7, "VCardPreviewUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception in parseVCard - generic: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 233
    if-eqz v3, :cond_0

    .line 235
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 236
    :catch_5
    move-exception v7

    goto/16 :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_4

    .line 235
    :try_start_c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 237
    :cond_4
    :goto_7
    throw v6

    .line 236
    :catch_6
    move-exception v7

    goto/16 :goto_0

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v0    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .restart local v2    # "eImplementer":Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catch_7
    move-exception v7

    goto :goto_2

    .end local v0    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .end local v2    # "eImplementer":Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "vcardParser":Lcom/android/vcard/VCardParser;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_8
    move-exception v7

    goto :goto_7

    .line 233
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v0    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .restart local v2    # "eImplementer":Lcom/motorola/contacts/vcard/VCardPreviewUtils$EntryImplementer;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "vcardParser":Lcom/android/vcard/VCardParser;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_6

    .line 229
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_5

    .line 226
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 223
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_3
.end method
