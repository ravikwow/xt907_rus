.class public Lcom/android/mms/model/VcardUtil;
.super Ljava/lang/Object;
.source "VcardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/model/VcardUtil$EntryImplementer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static judgeVersion(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, -0x1

    .line 75
    const/4 v2, 0x0

    .line 78
    .local v2, "input":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 84
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v0, v8, [B

    .line 85
    .local v0, "data":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 86
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 88
    if-nez v0, :cond_2

    .line 116
    .end local v0    # "data":[B
    :cond_0
    :goto_1
    return v7

    .line 81
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v2    # "input":Ljava/io/InputStream;
    .local v3, "input":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v2    # "input":Ljava/io/InputStream;
    goto :goto_0

    .line 92
    .restart local v0    # "data":[B
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 93
    .local v4, "vcardStr":Ljava/lang/String;
    const-string v8, "\nVERSION:"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, "verIndex":I
    if-eq v5, v7, :cond_0

    .line 99
    const-string v8, "\n"

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "verStr":Ljava/lang/String;
    const-string v8, "2.1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3

    .line 102
    const/4 v7, 0x1

    goto :goto_1

    .line 103
    :cond_3
    const-string v8, "3.0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lez v8, :cond_0

    .line 104
    const/4 v7, 0x2

    goto :goto_1

    .line 109
    .end local v0    # "data":[B
    .end local v4    # "vcardStr":Ljava/lang/String;
    .end local v5    # "verIndex":I
    .end local v6    # "verStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    if-eqz v2, :cond_4

    .line 112
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_4
    :goto_2
    const-string v8, "VcardUtil"

    const-string v9, "Exception while computing version"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 113
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public static parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/vcard/VCardEntry;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 121
    const/4 v3, 0x0

    .line 124
    .local v3, "input":Ljava/io/InputStream;
    :try_start_0
    const-string v8, "VcardUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseVCard, uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p0, p1}, Lcom/android/mms/model/VcardUtil;->judgeVersion(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v6

    .line 130
    .local v6, "version":I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    .line 131
    new-instance v5, Lcom/android/mms/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/mms/vcard/VCardParser_V30;-><init>()V

    .line 132
    .local v5, "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    new-instance v0, Lcom/android/mms/vcard/VCardEntryConstructor;

    const v8, -0x3fffffff

    invoke-direct {v0, v8}, Lcom/android/mms/vcard/VCardEntryConstructor;-><init>(I)V

    .line 141
    .local v0, "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    :goto_0
    new-instance v2, Lcom/android/mms/model/VcardUtil$EntryImplementer;

    invoke-direct {v2}, Lcom/android/mms/model/VcardUtil$EntryImplementer;-><init>()V

    .line 142
    .local v2, "eImplementer":Lcom/android/mms/model/VcardUtil$EntryImplementer;
    invoke-virtual {v0, v2}, Lcom/android/mms/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/mms/vcard/VCardEntryHandler;)V

    .line 144
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v9, "content"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 150
    :goto_1
    invoke-virtual {v5, v3, v0}, Lcom/android/mms/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/mms/vcard/VCardInterpreter;)V

    .line 152
    const-string v8, "VcardUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "value of Contact Struct"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    # getter for: Lcom/android/mms/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/android/mms/vcard/VCardEntry;
    invoke-static {v2}, Lcom/android/mms/model/VcardUtil$EntryImplementer;->access$000(Lcom/android/mms/model/VcardUtil$EntryImplementer;)Lcom/android/mms/vcard/VCardEntry;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    # getter for: Lcom/android/mms/model/VcardUtil$EntryImplementer;->mContactStruct:Lcom/android/mms/vcard/VCardEntry;
    invoke-static {v2}, Lcom/android/mms/model/VcardUtil$EntryImplementer;->access$000(Lcom/android/mms/model/VcardUtil$EntryImplementer;)Lcom/android/mms/vcard/VCardEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 161
    invoke-static {v3}, Lcom/android/mms/model/VcardUtil;->closeQuietly(Ljava/io/InputStream;)V

    .end local v0    # "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    .end local v2    # "eImplementer":Lcom/android/mms/model/VcardUtil$EntryImplementer;
    .end local v5    # "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    .end local v6    # "version":I
    :goto_2
    return-object v7

    .line 133
    .restart local v6    # "version":I
    :cond_0
    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    .line 134
    :try_start_1
    new-instance v5, Lcom/android/mms/vcard/VCardParser_V21;

    invoke-direct {v5}, Lcom/android/mms/vcard/VCardParser_V21;-><init>()V

    .line 135
    .restart local v5    # "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    new-instance v0, Lcom/android/mms/vcard/VCardEntryConstructor;

    const/high16 v8, -0x40000000

    invoke-direct {v0, v8}, Lcom/android/mms/vcard/VCardEntryConstructor;-><init>(I)V

    .restart local v0    # "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    goto :goto_0

    .line 137
    .end local v0    # "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    .end local v5    # "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    :cond_1
    const-string v8, "VcardUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Error while identifying version:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {v3}, Lcom/android/mms/model/VcardUtil;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 147
    .restart local v0    # "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    .restart local v2    # "eImplementer":Lcom/android/mms/model/VcardUtil$EntryImplementer;
    .restart local v5    # "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_1

    .line 154
    .end local v0    # "builder":Lcom/android/mms/vcard/VCardEntryConstructor;
    .end local v2    # "eImplementer":Lcom/android/mms/model/VcardUtil$EntryImplementer;
    .end local v5    # "mVCardParser":Lcom/android/mms/vcard/VCardParser;
    .end local v6    # "version":I
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v8, "VcardUtil"

    const-string v9, "exception in parseVCard - IO"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    invoke-static {v3}, Lcom/android/mms/model/VcardUtil;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "VcardUtil"

    const-string v9, "exception in parseVCard - generic"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    invoke-static {v3}, Lcom/android/mms/model/VcardUtil;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/android/mms/model/VcardUtil;->closeQuietly(Ljava/io/InputStream;)V

    throw v7
.end method
