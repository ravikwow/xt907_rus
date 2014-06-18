.class public Lcom/android/contacts/vcard/ImportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ImportProcessor.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# instance fields
.field private volatile mCanceled:Z

.field private mCurrentCount:I

.field private volatile mDone:Z

.field private final mFailedUris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

.field private final mJobId:I

.field private final mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;

.field private mTotalCount:I

.field private mVCardParser:Lcom/android/vcard/VCardParser;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V
    .locals 2
    .param p1, "service"    # Lcom/android/contacts/vcard/VCardService;
    .param p2, "listener"    # Lcom/android/contacts/vcard/VCardImportExportListener;
    .param p3, "request"    # Lcom/android/contacts/vcard/ImportRequest;
    .param p4, "jobId"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    .line 65
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 66
    iput v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 70
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 72
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    .line 74
    iput-object p3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 75
    iput p4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    .line 76
    return-void
.end method

.method private readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "vcardType"    # I
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "interpreter"    # Lcom/android/vcard/VCardInterpreter;
    .param p5, "possibleVCardVersions"    # [I

    .prologue
    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, "successful":Z
    array-length v3, p5

    .line 228
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 229
    aget v5, p5, v2

    .line 231
    .local v5, "vcardVersion":I
    if-lez v2, :cond_0

    :try_start_0
    instance-of v6, p4, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v6, :cond_0

    .line 233
    move-object v0, p4

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 240
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :try_start_1
    new-instance v6, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V30;-><init>(I)V

    :goto_1
    iput-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 244
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 245
    const-string v6, "VCardImport"

    const-string v7, "ImportProcessor already recieves cancel request, so send cancel request to vCard parser too."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 249
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    iget-object v6, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v6, p1, p4}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 252
    const/4 v4, 0x1

    .line 276
    if-eqz p1, :cond_2

    .line 278
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 285
    .end local v5    # "vcardVersion":I
    :cond_2
    :goto_2
    return v4

    .line 241
    .restart local v5    # "vcardVersion":I
    :cond_3
    :try_start_4
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v6, p2}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v6, "VCardImport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException was emitted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 276
    if-eqz p1, :cond_4

    .line 278
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    .line 228
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 256
    :catch_1
    move-exception v1

    .line 264
    .local v1, "e":Lcom/android/vcard/exception/VCardNestedException;
    :try_start_8
    const-string v6, "VCardImport"

    const-string v7, "Nested Exception is found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 276
    if-eqz p1, :cond_4

    .line 278
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    .line 279
    :catch_2
    move-exception v6

    goto :goto_3

    .line 265
    .end local v1    # "e":Lcom/android/vcard/exception/VCardNestedException;
    :catch_3
    move-exception v1

    .line 266
    .local v1, "e":Lcom/android/vcard/exception/VCardNotSupportedException;
    :try_start_a
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 276
    if-eqz p1, :cond_4

    .line 278
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_3

    .line 279
    :catch_4
    move-exception v6

    goto :goto_3

    .line 267
    .end local v1    # "e":Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v1

    .line 268
    .local v1, "e":Lcom/android/vcard/exception/VCardVersionException;
    add-int/lit8 v6, v3, -0x1

    if-ne v2, v6, :cond_5

    .line 269
    :try_start_c
    const-string v6, "VCardImport"

    const-string v7, "Appropriate version for this vCard is not found."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 276
    :cond_5
    if-eqz p1, :cond_4

    .line 278
    :try_start_d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_3

    .line 279
    :catch_6
    move-exception v6

    goto :goto_3

    .line 273
    .end local v1    # "e":Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v1

    .line 274
    .local v1, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_e
    const-string v6, "VCardImport"

    invoke-virtual {v1}, Lcom/android/vcard/exception/VCardException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 276
    if-eqz p1, :cond_4

    .line 278
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_3

    .line 279
    :catch_8
    move-exception v6

    goto :goto_3

    .line 276
    .end local v1    # "e":Lcom/android/vcard/exception/VCardException;
    :catchall_1
    move-exception v6

    if-eqz p1, :cond_6

    .line 278
    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 280
    :cond_6
    :goto_4
    throw v6

    .line 279
    :catch_9
    move-exception v6

    goto :goto_2

    .local v1, "e":Ljava/io/IOException;
    :catch_a
    move-exception v6

    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v7

    goto :goto_4
.end method

.method private runInternal()V
    .locals 23

    .prologue
    .line 124
    const-string v3, "VCardImport"

    const-string v19, "vCard import (id: %d) has started."

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    .line 126
    .local v15, "request":Lcom/android/contacts/vcard/ImportRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v3, "VCardImport"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Canceled before actually handling parameter ("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v15, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v3, v15, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    if-nez v3, :cond_5

    .line 136
    const/4 v3, 0x2

    new-array v8, v3, [I

    fill-array-data v8, :array_0

    .line 146
    .local v8, "possibleVCardVersions":[I
    :goto_1
    iget-object v0, v15, Lcom/android/contacts/vcard/ImportRequest;->uri:Landroid/net/Uri;

    move-object/from16 v17, v0

    .line 147
    .local v17, "uri":Landroid/net/Uri;
    iget-object v9, v15, Lcom/android/contacts/vcard/ImportRequest;->account:Landroid/accounts/Account;

    .line 148
    .local v9, "account":Landroid/accounts/Account;
    iget v5, v15, Lcom/android/contacts/vcard/ImportRequest;->estimatedVCardType:I

    .line 149
    .local v5, "estimatedVCardType":I
    iget-object v6, v15, Lcom/android/contacts/vcard/ImportRequest;->estimatedCharset:Ljava/lang/String;

    .line 150
    .local v6, "estimatedCharset":Ljava/lang/String;
    iget v12, v15, Lcom/android/contacts/vcard/ImportRequest;->entryCount:I

    .line 151
    .local v12, "entryCount":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    add-int/2addr v3, v12

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    .line 153
    new-instance v7, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v7, v5, v9, v6}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 155
    .local v7, "constructor":Lcom/android/vcard/VCardEntryConstructor;
    new-instance v10, Lcom/android/vcard/VCardEntryCommitter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v10, v3}, Lcom/android/vcard/VCardEntryCommitter;-><init>(Landroid/content/ContentResolver;)V

    .line 156
    .local v10, "committer":Lcom/android/vcard/VCardEntryCommitter;
    invoke-virtual {v7, v10}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 159
    const/4 v4, 0x0

    .line 160
    .local v4, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 162
    .local v16, "successful":Z
    if-eqz v17, :cond_6

    .line 163
    :try_start_0
    const-string v3, "VCardImport"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "start importing one vCard (Uri: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 170
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    move-object/from16 v3, p0

    .line 171
    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/vcard/ImportProcessor;->readOneVCard(Ljava/io/InputStream;ILjava/lang/String;Lcom/android/vcard/VCardInterpreter;[I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 177
    :cond_2
    if-eqz v4, :cond_3

    .line 179
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 186
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v19, v0

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/contacts/vcard/VCardService;->handleFinishImportNotification(IZ)V

    .line 188
    if-eqz v16, :cond_a

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 192
    const-string v3, "VCardImport"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "vCard import has been canceled (uri: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    :goto_4
    const-string v3, "VCardImport"

    const-string v19, "runInternal():  send import complete intent"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v13, Landroid/content/Intent;

    const-string v3, "com.android.contacts.vard.import_complete"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v13, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v3, v13}, Lcom/android/contacts/vcard/VCardService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 141
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "estimatedVCardType":I
    .end local v6    # "estimatedCharset":Ljava/lang/String;
    .end local v7    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .end local v8    # "possibleVCardVersions":[I
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v10    # "committer":Lcom/android/vcard/VCardEntryCommitter;
    .end local v12    # "entryCount":I
    .end local v13    # "i":Landroid/content/Intent;
    .end local v16    # "successful":Z
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v3, 0x1

    new-array v8, v3, [I

    const/4 v3, 0x0

    iget v0, v15, Lcom/android/contacts/vcard/ImportRequest;->vcardVersion:I

    move/from16 v19, v0

    aput v19, v8, v3

    .restart local v8    # "possibleVCardVersions":[I
    goto/16 :goto_1

    .line 165
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "estimatedVCardType":I
    .restart local v6    # "estimatedCharset":Ljava/lang/String;
    .restart local v7    # "constructor":Lcom/android/vcard/VCardEntryConstructor;
    .restart local v9    # "account":Landroid/accounts/Account;
    .restart local v10    # "committer":Lcom/android/vcard/VCardEntryCommitter;
    .restart local v12    # "entryCount":I
    .restart local v16    # "successful":Z
    .restart local v17    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_2
    iget-object v3, v15, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    if-eqz v3, :cond_1

    .line 166
    const-string v3, "VCardImport"

    const-string v19, "start importing one vCard (byte[])"

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v14, Ljava/io/ByteArrayInputStream;

    iget-object v3, v15, Lcom/android/contacts/vcard/ImportRequest;->data:[B

    invoke-direct {v14, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4    # "is":Ljava/io/InputStream;
    .local v14, "is":Ljava/io/InputStream;
    move-object v4, v14

    .end local v14    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto/16 :goto_2

    .line 174
    :catch_0
    move-exception v11

    .line 175
    .local v11, "e":Ljava/io/IOException;
    const/16 v16, 0x0

    .line 177
    if-eqz v4, :cond_3

    .line 179
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 180
    :catch_1
    move-exception v3

    goto/16 :goto_3

    .line 177
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v4, :cond_7

    .line 179
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :cond_7
    :goto_5
    throw v3

    .line 195
    :cond_8
    const-string v3, "VCardImport"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Successfully finished importing one vCard file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntryCommitter;->getCreatedUris()Ljava/util/ArrayList;

    move-result-object v18

    .line 197
    .local v18, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v3, :cond_4

    .line 198
    if-eqz v18, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v21, v0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_4

    .line 203
    :cond_9
    const-string v3, "VCardImport"

    const-string v19, "Created Uris is null or 0 length though the creation itself is successful."

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v3, v0, v1, v2}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFinished(Lcom/android/contacts/vcard/ImportRequest;ILandroid/net/Uri;)V

    goto/16 :goto_4

    .line 218
    .end local v18    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_a
    const-string v3, "VCardImport"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to read one vCard file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportProcessor;->mFailedUris:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 180
    :catch_2
    move-exception v3

    goto/16 :goto_3

    :catch_3
    move-exception v19

    goto/16 :goto_5

    .line 136
    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    const/4 v0, 0x1

    .line 291
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 292
    :cond_0
    const/4 v0, 0x0

    .line 300
    :goto_0
    monitor-exit p0

    return v0

    .line 294
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z

    .line 295
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    :try_start_2
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 299
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 6
    .param p1, "entry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    .line 91
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    iget v4, p0, Lcom/android/contacts/vcard/ImportProcessor;->mCurrentCount:I

    iget v5, p0, Lcom/android/contacts/vcard/ImportProcessor;->mTotalCount:I

    move-object v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportParsed(Lcom/android/contacts/vcard/ImportRequest;ILcom/android/vcard/VCardEntry;II)V

    .line 94
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportProcessor;->runInternal()V

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mImportRequest:Lcom/android/contacts/vcard/ImportRequest;

    iget v3, p0, Lcom/android/contacts/vcard/ImportProcessor;->mJobId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportCanceled(Lcom/android/contacts/vcard/ImportRequest;I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    :cond_0
    monitor-enter p0

    .line 118
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 119
    monitor-exit p0

    .line 121
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v1, "VCardImport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v1

    monitor-enter p0

    .line 118
    const/4 v2, 0x1

    :try_start_3
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportProcessor;->mDone:Z

    .line 119
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v1, "VCardImport"

    const-string v2, "RuntimeException thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method
