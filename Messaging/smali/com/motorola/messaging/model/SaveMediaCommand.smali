.class public Lcom/motorola/messaging/model/SaveMediaCommand;
.super Ljava/lang/Object;
.source "SaveMediaCommand.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/SaveMediaCommand$1;,
        Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

.field private mCanOverwrite:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mMessagingSubFolder:Ljava/lang/String;

.field private mModel:Lcom/motorola/messaging/model/MediaModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/motorola/messaging/model/SaveMediaCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/motorola/messaging/model/MediaModel;
    .param p3, "outputFolder"    # Ljava/lang/String;
    .param p4, "canOverwrite"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    iput-object p2, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    .line 54
    iput-object p3, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mMessagingSubFolder:Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->getFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    .line 56
    iput-boolean p4, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mCanOverwrite:Z

    .line 57
    return-void
.end method

.method private convertAndSaveDataToFile(Ljava/io/File;)Z
    .locals 11
    .param p1, "fileToSave"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x1

    .line 231
    const/4 v3, 0x0

    .line 234
    .local v3, "dataSaved":Z
    new-instance v4, Landroid/drm/DrmManagerClient;

    iget-object v8, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    .line 235
    .local v4, "drmClient":Landroid/drm/DrmManagerClient;
    iget-object v8, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v8}, Lcom/motorola/messaging/model/MediaModel;->getRawContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/drm/DrmManagerClient;->openConvertSession(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "convertSessionId":I
    if-ltz v0, :cond_1

    .line 238
    iget-object v8, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v8}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/drm/DrmManagerClient;->convertData(I[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    .line 241
    .local v2, "convertedStatus":Landroid/drm/DrmConvertedStatus;
    if-eqz v2, :cond_0

    iget v8, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    if-ne v8, v9, :cond_0

    iget-object v8, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v8, :cond_0

    .line 244
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v8, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 245
    .local v1, "convertedData":Ljava/io/ByteArrayInputStream;
    invoke-static {v1, p1}, Lcom/motorola/messaging/util/StreamUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v3

    .line 248
    .end local v1    # "convertedData":Ljava/io/ByteArrayInputStream;
    :cond_0
    invoke-virtual {v4, v0}, Landroid/drm/DrmManagerClient;->closeConvertSession(I)Landroid/drm/DrmConvertedStatus;

    move-result-object v2

    .line 252
    if-eqz v3, :cond_1

    .line 254
    const/4 v3, 0x0

    .line 256
    iget v8, v2, Landroid/drm/DrmConvertedStatus;->statusCode:I

    if-ne v8, v9, :cond_3

    iget-object v8, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    if-eqz v8, :cond_3

    .line 258
    const/4 v6, 0x0

    .line 260
    .local v6, "savedFile":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v7, p1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    .end local v6    # "savedFile":Ljava/io/RandomAccessFile;
    .local v7, "savedFile":Ljava/io/RandomAccessFile;
    :try_start_1
    iget v8, v2, Landroid/drm/DrmConvertedStatus;->offset:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 262
    iget-object v8, v2, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    const/4 v3, 0x1

    .line 268
    if-eqz v7, :cond_4

    .line 270
    :try_start_2
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 283
    .end local v2    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .end local v7    # "savedFile":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_0
    return v3

    .line 271
    .restart local v2    # "convertedStatus":Landroid/drm/DrmConvertedStatus;
    .restart local v7    # "savedFile":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v5

    .line 272
    .local v5, "e":Ljava/io/IOException;
    sget-object v8, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v9, "Exception closing RandomAccessFile"

    invoke-static {v8, v9, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 273
    .end local v7    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "savedFile":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 265
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 266
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    sget-object v8, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v9, "Error on appending signature to saved file."

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    if-eqz v6, :cond_1

    .line 270
    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 271
    :catch_2
    move-exception v5

    .line 272
    sget-object v8, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v9, "Exception closing RandomAccessFile"

    invoke-static {v8, v9, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v6, :cond_2

    .line 270
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 273
    :cond_2
    :goto_3
    throw v8

    .line 271
    :catch_3
    move-exception v5

    .line 272
    .restart local v5    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v10, "Exception closing RandomAccessFile"

    invoke-static {v9, v10, v5}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 278
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "savedFile":Ljava/io/RandomAccessFile;
    :cond_3
    sget-object v8, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v9, "Error on closing convert session."

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .restart local v7    # "savedFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "savedFile":Ljava/io/RandomAccessFile;
    goto :goto_2

    .line 265
    .end local v6    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "savedFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v5

    move-object v6, v7

    .end local v7    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "savedFile":Ljava/io/RandomAccessFile;
    goto :goto_1

    .end local v6    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "savedFile":Ljava/io/RandomAccessFile;
    :cond_4
    move-object v6, v7

    .end local v7    # "savedFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "savedFile":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private getAsyncResult()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 2

    .prologue
    .line 365
    monitor-enter p0

    .line 366
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mAsyncResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 368
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    iget-object v1, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mAsyncResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    return-object v1
.end method

.method private getFileName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "fileName":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "originalName":Ljava/lang/String;
    const-string v0, ""

    .line 309
    .local v0, "fileExtension":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v5}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 315
    iget-object v3, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v3}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/MediaModel;->getRawContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/motorola/messaging/drm/DrmWrapper;->fixDrmFileNameExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_1
    return-object v1
.end method

.method private getSDCardFile()Ljava/io/File;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 326
    const/4 v3, 0x0

    .line 327
    .local v3, "fileToSave":Ljava/io/File;
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mMessagingSubFolder:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/motorola/messaging/model/SaveMediaCommand;->processOutputFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, "outputFolder":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mCanOverwrite:Z

    if-eqz v6, :cond_0

    .line 330
    new-instance v3, Ljava/io/File;

    .end local v3    # "fileToSave":Ljava/io/File;
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .restart local v3    # "fileToSave":Ljava/io/File;
    :goto_0
    return-object v3

    .line 332
    :cond_0
    const/4 v5, 0x0

    .line 333
    .local v5, "retryCounter":I
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 335
    .local v0, "dotIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v1, "fileName":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "fileNameStr":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    .end local v3    # "fileToSave":Ljava/io/File;
    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .restart local v3    # "fileToSave":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    .line 342
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 343
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 347
    iput-object v2, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method private processOutputFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "outputFolder"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const-string p1, "Messaging"

    .line 294
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 295
    .local v0, "outputFolderFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    .end local v0    # "outputFolderFile":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Messaging/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 301
    .restart local v0    # "outputFolderFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private saveToDrmProvider()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 9

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    const/4 v3, 0x0

    .line 112
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .local v1, "fileToSave":Ljava/io/File;
    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 117
    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v5}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 118
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 121
    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    invoke-static {v5, v1, v6}, Lcom/motorola/messaging/frameworkadapter/drm/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 122
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 123
    new-instance v4, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .end local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;ZLcom/motorola/messaging/model/SaveMediaCommand$1;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .restart local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :goto_0
    if-eqz v3, :cond_0

    .line 133
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    sget-object v5, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v6, "Could not delete temporary file while saving media"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v1    # "fileToSave":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return-object v4

    .line 125
    .restart local v1    # "fileToSave":Ljava/io/File;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_2
    new-instance v4, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .end local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v6, "Exception saving media"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileToSave":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :catch_1
    move-exception v0

    .line 128
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v6, "Exception saving media"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    new-instance v4, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    .restart local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    if-eqz v3, :cond_3

    .line 133
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 140
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 141
    sget-object v5, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v6, "Could not delete temporary file while saving media"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :catch_2
    move-exception v0

    .line 135
    sget-object v5, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v6, "Exception saving media"

    invoke-static {v5, v6, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_4

    .line 133
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 140
    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 141
    sget-object v6, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v7, "Could not delete temporary file while saving media"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v5

    .line 134
    :catch_3
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v7, "Exception saving media"

    invoke-static {v6, v7, v0}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method private saveToSdCard()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 17

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->validateSdCardStatus()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v9

    .line 151
    .local v9, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    if-eqz v9, :cond_0

    move-object v12, v9

    .line 227
    :goto_0
    return-object v12

    .line 155
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->getSDCardFile()Ljava/io/File;

    move-result-object v5

    .line 157
    .local v5, "fileToSave":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mCanOverwrite:Z

    if-eqz v12, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 159
    new-instance v12, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    invoke-direct {v12, v13, v5, v14}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;Lcom/motorola/messaging/model/SaveMediaCommand$1;)V

    goto :goto_0

    .line 162
    :cond_1
    const/4 v8, 0x0

    .line 165
    .local v8, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 167
    .local v1, "dataSaved":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v12}, Lcom/motorola/messaging/model/MediaModel;->isForwardable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 168
    const/4 v11, 0x0

    .line 172
    .local v11, "uriToSave":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v12}, Lcom/motorola/messaging/model/MediaModel;->isDrmProtected()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v12}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v11

    .line 178
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v12, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 179
    instance-of v12, v8, Ljava/io/FileInputStream;

    if-eqz v12, :cond_2

    .line 180
    invoke-static {v8, v5}, Lcom/motorola/messaging/util/StreamUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v1

    .line 188
    .end local v11    # "uriToSave":Landroid/net/Uri;
    :cond_2
    :goto_2
    if-eqz v1, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-static {v12, v13, v14, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 194
    invoke-direct/range {p0 .. p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->getAsyncResult()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 218
    :goto_3
    if-eqz v8, :cond_3

    .line 220
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_4
    move-object v12, v9

    .line 227
    goto :goto_0

    .line 175
    .restart local v11    # "uriToSave":Landroid/net/Uri;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v12}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    goto :goto_1

    .line 185
    .end local v11    # "uriToSave":Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/motorola/messaging/model/SaveMediaCommand;->convertAndSaveDataToFile(Ljava/io/File;)Z

    move-result v1

    goto :goto_2

    .line 197
    :cond_6
    const-wide/16 v3, 0x0

    .line 199
    .local v3, "fileSize":J
    if-eqz v8, :cond_7

    .line 200
    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    .line 204
    :goto_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 205
    .local v6, "freeSpace":J
    cmp-long v12, v3, v6

    if-lez v12, :cond_8

    .line 206
    new-instance v10, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V

    .end local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .local v10, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    move-object v9, v10

    .line 211
    .end local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 213
    .end local v3    # "fileSize":J
    .end local v6    # "freeSpace":J
    :catch_0
    move-exception v2

    move-object v10, v9

    .line 214
    .end local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .local v2, "e":Ljava/io/IOException;
    .restart local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :try_start_3
    sget-object v12, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v13, "Exception saving media"

    invoke-static {v12, v13, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 216
    new-instance v9, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v9, v12, v13}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 218
    .end local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    if-eqz v8, :cond_3

    .line 220
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 221
    :catch_1
    move-exception v2

    .line 222
    sget-object v12, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v13, "Exception closing InputStream"

    invoke-static {v12, v13, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 202
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fileSize":J
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v12}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/motorola/messaging/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v12

    array-length v12, v12

    int-to-long v3, v12

    goto :goto_5

    .line 208
    .restart local v6    # "freeSpace":J
    :cond_8
    new-instance v10, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v10, v12, v13}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    move-object v9, v10

    .end local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    goto :goto_6

    .line 221
    .end local v3    # "fileSize":J
    .end local v6    # "freeSpace":J
    :catch_2
    move-exception v2

    .line 222
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v13, "Exception closing InputStream"

    invoke-static {v12, v13, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_7
    if-eqz v8, :cond_9

    .line 220
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 223
    :cond_9
    :goto_8
    throw v12

    .line 221
    :catch_3
    move-exception v2

    .line 222
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v14, "Exception closing InputStream"

    invoke-static {v13, v14, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 218
    .end local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :catchall_1
    move-exception v12

    move-object v9, v10

    .end local v10    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .restart local v9    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    goto :goto_7
.end method

.method private validateSdCardStatus()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "status":Ljava/lang/String;
    const-string v2, "shared"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "unmounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .end local v0    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    const/4 v2, 0x3

    invoke-direct {v0, v2, v3}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V

    .line 104
    .restart local v0    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :cond_1
    :goto_0
    return-object v0

    .line 100
    :cond_2
    const-string v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .end local v0    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    const/4 v2, 0x2

    invoke-direct {v0, v2, v3}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V

    .restart local v0    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    goto :goto_0
.end method


# virtual methods
.method public execute()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    .locals 6

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 68
    .local v2, "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :try_start_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/MediaModel;->isForwardable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->saveToSdCard()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v2

    .line 90
    :goto_0
    return-object v2

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v1

    .line 72
    .local v1, "modelType":I
    iget-object v4, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mModel:Lcom/motorola/messaging/model/MediaModel;

    invoke-virtual {v4}, Lcom/motorola/messaging/model/MediaModel;->getDrmObject()Lcom/motorola/messaging/drm/DrmWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "contentType":Ljava/lang/String;
    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    invoke-static {v0}, Lcom/motorola/messaging/mime/MmsContentType;->isMidiType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->saveToDrmProvider()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0}, Lcom/motorola/messaging/model/SaveMediaCommand;->saveToSdCard()Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 85
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "modelType":I
    :catch_0
    move-exception v3

    .line 86
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/motorola/messaging/model/SaveMediaCommand;->TAG:Ljava/lang/String;

    const-string v5, "Exception saving media"

    invoke-static {v4, v5, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    new-instance v2, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .end local v2    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V

    .restart local v2    # "result":Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;
    goto :goto_0
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 354
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p2, v1, v2}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(Landroid/net/Uri;Ljava/io/File;Lcom/motorola/messaging/model/SaveMediaCommand$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mAsyncResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    .line 359
    :goto_0
    monitor-enter p0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    return-void

    .line 357
    :cond_0
    new-instance v0, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;-><init>(ILcom/motorola/messaging/model/SaveMediaCommand$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/model/SaveMediaCommand;->mAsyncResult:Lcom/motorola/messaging/model/SaveMediaCommand$SaveMediaResult;

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
