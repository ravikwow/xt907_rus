.class public Lcom/android/providers/downloads/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final TransferDrmFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 129
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    .local v10, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 132
    .local v11, "result":Landroid/content/Intent;
    invoke-static {p0, v10, v0}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 133
    if-eqz v11, :cond_0

    .line 134
    invoke-virtual {v11}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "contentPath":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "contentMime":Ljava/lang/String;
    const-string v0, "content://drm/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 141
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 142
    if-nez v8, :cond_1

    .line 143
    const/4 v11, 0x0

    .line 165
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "contentMime":Ljava/lang/String;
    .end local v7    # "contentPath":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v11

    .line 144
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "contentMime":Ljava/lang/String;
    .restart local v7    # "contentPath":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 146
    const/4 v8, 0x0

    .line 147
    const/4 v11, 0x0

    goto :goto_0

    .line 149
    :cond_2
    const-string v0, "deleteUri"

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 153
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    invoke-virtual {v11, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v9

    .line 158
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "DownloadManager"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v8, :cond_0

    .line 160
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static checkMimetypeTable(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "result":Z
    const/16 v3, 0x9

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio/mid"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "audio/midi"

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "audio/x-midi"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "audio/imelody"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "audio/sp-midi"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "application/x-smaf"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "application/vnd.smaf"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "audio/mobile-xmf"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "image/"

    aput-object v4, v1, v3

    .line 116
    .local v1, "mimetypetable":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 117
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    const/4 v2, 0x1

    .line 122
    :cond_0
    return v2

    .line 116
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "currentMime"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, "client":Landroid/drm/DrmManagerClient;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "rawFile":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 99
    .end local p2    # "currentMime":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    :goto_0
    return-object p2

    .restart local p2    # "currentMime":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_0

    .end local v1    # "rawFile":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    throw v2
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_1

    .line 73
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_0
    const-string v1, ".dcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
