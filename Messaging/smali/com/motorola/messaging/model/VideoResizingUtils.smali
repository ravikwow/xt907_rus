.class public Lcom/motorola/messaging/model/VideoResizingUtils;
.super Ljava/lang/Object;
.source "VideoResizingUtils.java"


# static fields
.field private static final LOCAL_LOG:Z

.field public static final RESIZED_VIDEO_FILES_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/VideoResizingUtils;->LOCAL_LOG:Z

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Messaging/resized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/model/VideoResizingUtils;->RESIZED_VIDEO_FILES_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEditVideoIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;
    .locals 11
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p3, "currentNonTextMediaSize"    # I

    .prologue
    .line 70
    sget-boolean v7, Lcom/motorola/messaging/model/VideoResizingUtils;->LOCAL_LOG:Z

    if-eqz v7, :cond_0

    .line 71
    const-string v7, "VideoResizingUtils"

    const-string v8, "getEditVideoIntent"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-static {p2}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v5

    .line 76
    .local v5, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-static {v5, p3}, Lcom/motorola/messaging/util/MessageUtils;->getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J

    move-result-wide v7

    const-wide/16 v9, 0x400

    div-long v2, v7, v9

    .line 77
    .local v2, "maxVideoSize":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1

    .line 79
    const-wide/16 v2, 0x1

    .line 83
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.EDIT"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v0, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 89
    const-string v7, "limitationMode"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/motorola/messaging/model/VideoResizingUtils;->RESIZED_VIDEO_FILES_DIR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ResizedVideo_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".3gpp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "resizedVideoFile":Ljava/lang/String;
    const-string v7, "outputPath"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v7, "maxSize"

    invoke-virtual {v0, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 99
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoResolution()Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;

    move-result-object v1

    .line 100
    .local v1, "maxResolution":Lcom/motorola/messaging/settings/MessageSettings$MmsMaxVideoResolution;
    const-string v7, "maxResolution"

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    const-string v7, "maxDuration"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessageUtils;->getTypeFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "videoMimeType":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    sget-boolean v7, Lcom/motorola/messaging/model/VideoResizingUtils;->LOCAL_LOG:Z

    if-eqz v7, :cond_2

    .line 110
    const-string v7, "VideoResizingUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Intent to Video Editor Lite with the following parameters: VideoUri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", outputPath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxSize (KB): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxResolution: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", video mime type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    return-object v0
.end method

.method public static getVideoResizeErrorDialogBody(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "errorMessages":[Ljava/lang/String;
    sget-boolean v1, Lcom/motorola/messaging/model/VideoResizingUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "VideoResizingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoResizeErrorDialogBody - error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 188
    const/16 p1, 0x12

    .line 191
    :sswitch_0
    aget-object v1, v0, p1

    return-object v1

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public static persistResizedVideoAsPart(Landroid/content/Context;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resizedVideoFileName"    # Ljava/lang/String;
    .param p2, "messageId"    # J

    .prologue
    .line 124
    sget-boolean v9, Lcom/motorola/messaging/model/VideoResizingUtils;->LOCAL_LOG:Z

    if-eqz v9, :cond_0

    .line 125
    const-string v9, "VideoResizingUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "persistResizedVideoAsPart - resizedVideoFileName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", messageId: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v4, 0x0

    .line 132
    .local v4, "persistedUri":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 134
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, "resizedVideoFile":Ljava/io/File;
    new-instance v2, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {v2}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 137
    .local v2, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 139
    const-string v9, "video/3gpp"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 140
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "src":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 142
    .local v8, "srcBytes":[B
    invoke-virtual {v2, v8}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 143
    invoke-virtual {v2, v8}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    .line 144
    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 145
    .local v3, "period":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 146
    .local v0, "contentId":[B
    :goto_0
    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 148
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v5

    .line 150
    .local v5, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    invoke-virtual {v5, v2, p2, p3}, Lcom/motorola/messaging/pdu/PduPersister;->persistPart(Lcom/motorola/messaging/pdu/PduPart;J)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 157
    .end local v0    # "contentId":[B
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "period":I
    .end local v5    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .end local v6    # "resizedVideoFile":Ljava/io/File;
    .end local v7    # "src":Ljava/lang/String;
    .end local v8    # "srcBytes":[B
    :cond_1
    :goto_1
    return-object v4

    .restart local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v3    # "period":I
    .restart local v6    # "resizedVideoFile":Ljava/io/File;
    .restart local v7    # "src":Ljava/lang/String;
    .restart local v8    # "srcBytes":[B
    :cond_2
    move-object v0, v8

    .line 145
    goto :goto_0

    .line 151
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "period":I
    .end local v6    # "resizedVideoFile":Ljava/io/File;
    .end local v7    # "src":Ljava/lang/String;
    .end local v8    # "srcBytes":[B
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lcom/motorola/messaging/util/MmsException;
    const-string v9, "VideoResizingUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while persisting resized video file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
