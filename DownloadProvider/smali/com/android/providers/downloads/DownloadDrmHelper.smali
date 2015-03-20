.class public Lcom/android/providers/downloads/DownloadDrmHelper;
.super Ljava/lang/Object;
.source "DownloadDrmHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final TransferDrmFile(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 161
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v10, "file":Ljava/io/File;
    const/4 v11, 0x0

    .line 164
    .local v11, "result":Landroid/content/Intent;
    invoke-static {p0, v10, v0}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 165
    if-eqz v11, :cond_0

    .line 166
    invoke-virtual {v11}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "contentPath":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "contentMime":Ljava/lang/String;
    const-string v0, "content://drm/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v11}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, "contentUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 173
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 174
    if-nez v8, :cond_1

    .line 175
    const/4 v11, 0x0

    .line 198
    .end local v1    # "contentUri":Landroid/net/Uri;
    .end local v6    # "contentMime":Ljava/lang/String;
    .end local v7    # "contentPath":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v11

    .line 176
    .restart local v1    # "contentUri":Landroid/net/Uri;
    .restart local v6    # "contentMime":Ljava/lang/String;
    .restart local v7    # "contentPath":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 177
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 178
    const/4 v8, 0x0

    .line 179
    const/4 v11, 0x0

    goto :goto_0

    .line 181
    :cond_2
    const-string v0, "deleteUri"

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 184
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
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

    .line 186
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 187
    invoke-virtual {v11, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v9

    .line 190
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "DownloadManager"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-eqz v8, :cond_0

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static checkMimetypeTable(Ljava/lang/String;)Z
    .locals 5
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
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

    .line 148
    .local v1, "mimetypetable":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 149
    aget-object v3, v1, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 150
    const/4 v2, 0x1

    .line 154
    :cond_0
    return v2

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getOriginalMimeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containingMime"    # Ljava/lang/String;

    .prologue
    .line 120
    move-object v2, p2

    .line 121
    .local v2, "result":Ljava/lang/String;
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 132
    :cond_0
    :goto_0
    return-object v2

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    const-string v4, "Can\'t get original mime type since path is null or empty string."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 130
    .local v1, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isDrmConvertNeeded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 85
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

.method public static isDrmMimeType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v2, 0x0

    .line 60
    .local v2, "result":Z
    if-eqz p0, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "drmClient":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 64
    const-string v3, ""

    invoke-virtual {v0, v3, p1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 73
    .end local v0    # "drmClient":Landroid/drm/DrmManagerClient;
    :cond_0
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient instance could not be created, context is Illegal."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "DownloadManager"

    const-string v4, "DrmManagerClient didn\'t initialize properly."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static modifyDrmFwLockFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p0, :cond_1

    .line 97
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "extensionIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 103
    :cond_0
    const-string v1, ".dcf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    .end local v0    # "extensionIndex":I
    :cond_1
    return-object p0
.end method
