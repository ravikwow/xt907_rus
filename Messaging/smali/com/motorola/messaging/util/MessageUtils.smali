.class public Lcom/motorola/messaging/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field private static final DEBUG:Z

.field private static final FDN_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field private static sGeoSuffix:Ljava/lang/String;

.field private static sPushInAnimation:Landroid/view/animation/Animation;

.field private static sPushOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 109
    sput-boolean v1, Lcom/motorola/messaging/util/MessageUtils;->DEBUG:Z

    .line 110
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v0, v2

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/messaging/util/MessageUtils;->FDN_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    return v0
.end method

.method public static addLocationFavorite(Landroid/app/Activity;Lcom/motorola/messaging/model/VcardModel;)V
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "model"    # Lcom/motorola/messaging/model/VcardModel;

    .prologue
    .line 638
    new-instance v0, Lcom/motorola/messaging/util/MessageUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/util/MessageUtils$2;-><init>(Landroid/app/Activity;Lcom/motorola/messaging/model/VcardModel;)V

    .line 691
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "save_location_favorites"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    .line 692
    return-void
.end method

.method public static adjustIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1012
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_1

    const-string v1, "mailto"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sms"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1016
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "foo://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1020
    invoke-static {p0, v1, v0}, Lcom/motorola/messaging/util/MessageUtils;->ajustAddressesToIntent(Landroid/content/Intent;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1022
    invoke-static {p0, v1}, Lcom/motorola/messaging/util/MessageUtils;->adjustSubjectAndBodyToIntent(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 1024
    :cond_1
    return-void
.end method

.method private static adjustSubjectAndBodyToIntent(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1111
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1113
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    :cond_0
    const-string v0, "body"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1118
    const-string v1, "android.intent.extra.TEXT"

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    :cond_1
    return-void
.end method

.method private static ajustAddressesToIntent(Landroid/content/Intent;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 1028
    .line 1030
    const-string v0, "mailto"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/motorola/messaging/util/MessageUtils;->extractMailtoAddress(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/motorola/messaging/util/MessageUtils;->setAddressesToIntent(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1037
    return-void

    .line 1033
    :cond_0
    invoke-static {p2}, Lcom/motorola/messaging/util/MessageUtils;->extractSmsAddress(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildMultipleWhereClause(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 931
    const-string v2, ","

    .line 932
    const/4 v0, 0x0

    .line 933
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " IN ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 937
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 940
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 943
    :cond_1
    return-object v0
.end method

.method public static buildMultipleWhereClause(Ljava/lang/String;[J)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 915
    const-string v2, ","

    .line 916
    const/4 v0, 0x0

    .line 917
    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    array-length v3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-wide v4, p1, v1

    .line 921
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 925
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    :cond_1
    return-object v0
.end method

.method public static canResize(Landroid/content/Context;Lcom/motorola/messaging/pdu/SendReq;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdu"    # Lcom/motorola/messaging/pdu/SendReq;

    .prologue
    const/4 v5, 0x0

    .line 485
    sget-boolean v6, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v6, :cond_0

    .line 486
    const-string v6, "MessageUtils"

    const-string v7, "canResize - START"

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    const/4 v4, 0x0

    .line 491
    .local v4, "pictureSize":I
    if-nez p1, :cond_2

    .line 518
    :cond_1
    :goto_0
    return v5

    .line 495
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v0

    .line 496
    .local v0, "body":Lcom/motorola/messaging/pdu/PduBody;
    invoke-static {v0}, Lcom/motorola/messaging/dom/smil/SmilHelper;->findImage(Lcom/motorola/messaging/pdu/PduBody;)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v3

    .line 497
    .local v3, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 503
    new-instance v2, Lcom/motorola/messaging/model/ImageModel;

    sget-object v6, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, p0, v6, v7}, Lcom/motorola/messaging/model/ImageModel;-><init>(Landroid/content/Context;Lcom/motorola/messaging/model/Model$CreationMode;Landroid/net/Uri;)V

    .line 504
    .local v2, "model":Lcom/motorola/messaging/model/ImageModel;
    if-eqz v2, :cond_1

    .line 508
    invoke-virtual {v2}, Lcom/motorola/messaging/model/ImageModel;->getSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 514
    .end local v0    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v2    # "model":Lcom/motorola/messaging/model/ImageModel;
    .end local v3    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :goto_1
    sget-boolean v6, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v6, :cond_3

    .line 515
    const-string v6, "MessageUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canResize, size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v6

    if-le v4, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "MessageUtils"

    const-string v7, "MMS-STATUS - exception while parsing media"

    invoke-static {v6, v7, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 511
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    throw v5
.end method

.method public static copyToFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1334
    .line 1335
    const/4 v1, 0x0

    .line 1337
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1339
    instance-of v2, v1, Ljava/io/FileInputStream;

    if-nez v2, :cond_1

    .line 1340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "error reading file"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 1347
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1346
    :cond_0
    throw v0

    .line 1343
    :cond_1
    :try_start_1
    invoke-static {v1, v0}, Lcom/motorola/messaging/util/StreamUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1346
    if-eqz v1, :cond_2

    .line 1347
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1351
    :cond_2
    return-object v0
.end method

.method public static extractEncStr(Landroid/content/Context;Lcom/motorola/messaging/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 554
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnRawBytes"    # I
    .param p2, "columnCharset"    # I

    .prologue
    .line 538
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "rawBytes":Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 541
    .local v0, "charset":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    const-string v1, ""

    .line 546
    .end local v1    # "rawBytes":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 543
    .restart local v1    # "rawBytes":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 546
    new-instance v2, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractMailtoAddress(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1046
    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1047
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 1048
    const/4 v0, 0x0

    .line 1053
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1054
    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1061
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1058
    :catch_0
    move-exception v1

    .line 1059
    const-string v1, "MessageUtils"

    const-string v2, "UnsupportedEncodingException while decoding address from mailto intent"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static extractSmsAddress(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1040
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1041
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1042
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static fillBuilderForActivityNotFound(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 890
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 891
    const-string v0, "MessageUtils"

    const-string v1, "fillBuilderForActivityNotFound"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 894
    :cond_0
    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 895
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 896
    const v0, 0x7f0b006d

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 897
    const v0, 0x7f0b007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 898
    return-void
.end method

.method public static fillBuilderForAddMultipleImagesSizeExceeded(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .prologue
    .line 908
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 909
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 910
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 911
    const v0, 0x7f0b007a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 912
    return-void
.end method

.method public static fillBuilderForCannotSendMsgSizeExceededDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 2

    .prologue
    .line 901
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 902
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 903
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 904
    const v0, 0x7f0b007a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 905
    return-void
.end method

.method public static fillBuilderForLocationWarningDialog(Landroid/app/AlertDialog$Builder;Landroid/content/Context;)V
    .locals 4
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 791
    const v2, 0x7f030010

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 792
    .local v0, "contents":Landroid/view/View;
    const v2, 0x7f09003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 793
    .local v1, "msg":Landroid/widget/TextView;
    const v2, 0x7f0b0180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 795
    const v2, 0x7f0b0182

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 796
    const v2, 0x1080027

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 797
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 798
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 799
    const v2, 0x7f0b007a

    invoke-virtual {p0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    const v2, 0x7f0b007b

    invoke-virtual {p0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    return-void
.end method

.method public static fillBuilderForPictureResizeDialog(Landroid/app/AlertDialog$Builder;I)V
    .locals 4
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 850
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 851
    const-string v0, "MessageUtils"

    const-string v1, "fillBuilderForPictureResizeDialog"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 854
    :cond_0
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 855
    const/4 v0, -0x6

    if-ne p1, v0, :cond_1

    .line 856
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 861
    :goto_0
    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 862
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 863
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 864
    return-void

    .line 859
    :cond_1
    const v0, 0x7f0b0056

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public static fillBuilderForVideoResizeDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 867
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "MessageUtils"

    const-string v1, "fillBuilderForVideoResizeDialog"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 871
    :cond_0
    const v0, 0x1080027

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 872
    const v0, 0x7f0b01aa

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 873
    const v0, 0x7f0b01ab

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 874
    const v0, 0x1040013

    invoke-virtual {p0, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 875
    const v0, 0x1040009

    invoke-virtual {p0, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 876
    return-void
.end method

.method public static fillBuilderForVideoResizeError(Landroid/content/Context;Landroid/app/AlertDialog$Builder;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "error"    # I

    .prologue
    const/4 v2, 0x1

    .line 879
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 880
    const-string v0, "MessageUtils"

    const-string v1, "fillBuilderForVideoResizeError"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 883
    :cond_0
    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 884
    const v0, 0x7f0b01ac

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 885
    invoke-static {p0, p2}, Lcom/motorola/messaging/model/VideoResizingUtils;->getVideoResizeErrorDialogBody(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 886
    const v0, 0x7f0b007a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 887
    return-void
.end method

.method public static fillErrorDialogBuilder(Landroid/content/Context;Landroid/app/AlertDialog$Builder;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "error"    # I
    .param p3, "mediaTypeStringId"    # I

    .prologue
    .line 784
    const v0, 0x1080027

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 785
    invoke-static {p0, p2, p3}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 786
    invoke-static {p0, p2, p3}, Lcom/motorola/messaging/util/MessageUtils;->getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 787
    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 788
    return-void
.end method

.method public static formatLongTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 233
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/util/DateUtil;->getLongDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatShortTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 228
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/util/DateUtil;->getShortDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorDialogBody(Landroid/content/Context;II)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I
    .param p2, "mediaTypeStringId"    # I

    .prologue
    const v7, 0x7f0b0060

    const v6, 0x7f0b005c

    const v5, 0x7f0b005f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 823
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 824
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "mediaType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 846
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 827
    :pswitch_1
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 829
    :pswitch_2
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 831
    :pswitch_3
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 833
    :pswitch_4
    const v2, 0x7f0b00f0

    if-ne p2, v2, :cond_0

    .line 834
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 836
    :cond_0
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 839
    :pswitch_5
    const v2, 0x7f0b00f0

    if-ne p2, v2, :cond_1

    .line 840
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 842
    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 825
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getErrorDialogTitle(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "error"    # I
    .param p2, "mediaTypeStringId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 805
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "mediaType":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 819
    :pswitch_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 808
    :pswitch_1
    const v2, 0x7f0b0104

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 810
    :pswitch_2
    const v2, 0x7f0b005b

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 812
    :pswitch_3
    const v2, 0x7f0b0075

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 814
    :pswitch_4
    const v2, 0x7f0b005d

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 816
    :pswitch_5
    const v2, 0x7f0b005e

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public static getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 972
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 973
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 976
    invoke-static {p1}, Lcom/motorola/messaging/model/MediaModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "content"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 980
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v0

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 983
    if-eqz v1, :cond_3

    .line 986
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 987
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 990
    :cond_1
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 991
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image file path from database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    :cond_2
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1003
    :cond_3
    :goto_0
    return-object v4

    .line 994
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .line 1000
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static getMMSMediaType(Lcom/motorola/messaging/model/SmilModel;)I
    .locals 9
    .param p0, "smilModel"    # Lcom/motorola/messaging/model/SmilModel;

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 151
    if-nez p0, :cond_1

    .line 152
    const/16 v4, 0x9

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getSlideCount()I

    move-result v2

    .line 165
    .local v2, "numberOfSlides":I
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->getAttachmentsCount()I

    move-result v1

    .line 167
    .local v1, "numberOfAttachments":I
    if-gt v1, v6, :cond_0

    .line 171
    if-ne v1, v6, :cond_3

    .line 172
    if-gt v2, v6, :cond_0

    .line 176
    if-ne v2, v6, :cond_2

    .line 177
    invoke-virtual {p0, v7}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v3

    .line 178
    .local v3, "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->hasNonTextMedia()Z

    move-result v8

    if-nez v8, :cond_0

    .line 182
    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/motorola/messaging/model/SmilModel;->getAttachment(I)Lcom/motorola/messaging/model/MediaModel;

    move-result-object v0

    .line 184
    .local v0, "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/MediaModel;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 196
    .end local v0    # "model":Lcom/motorola/messaging/model/MediaModel;
    :cond_3
    if-le v2, v6, :cond_5

    move v4, v5

    .line 197
    goto :goto_0

    .line 186
    .restart local v0    # "model":Lcom/motorola/messaging/model/MediaModel;
    :pswitch_0
    const/4 v4, 0x7

    goto :goto_0

    .line 188
    :pswitch_1
    check-cast v0, Lcom/motorola/messaging/model/VcardModel;

    .end local v0    # "model":Lcom/motorola/messaging/model/MediaModel;
    invoke-virtual {v0}, Lcom/motorola/messaging/model/VcardModel;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 189
    const/4 v4, 0x6

    goto :goto_0

    .line 191
    :cond_4
    const/4 v4, 0x5

    goto :goto_0

    .line 200
    :cond_5
    if-ne v2, v6, :cond_9

    .line 203
    invoke-virtual {p0}, Lcom/motorola/messaging/model/SmilModel;->hasSimpleSlideshow()Z

    move-result v4

    if-nez v4, :cond_6

    move v4, v5

    .line 204
    goto :goto_0

    .line 207
    :cond_6
    invoke-virtual {p0, v7}, Lcom/motorola/messaging/model/SmilModel;->getSlide(I)Lcom/motorola/messaging/model/SlideModel;

    move-result-object v3

    .line 208
    .restart local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    const/4 v4, 0x2

    goto :goto_0

    .line 212
    :cond_7
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 213
    const/4 v4, 0x3

    goto :goto_0

    .line 216
    :cond_8
    invoke-virtual {v3}, Lcom/motorola/messaging/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v6

    .line 217
    goto :goto_0

    .end local v3    # "slide":Lcom/motorola/messaging/model/SlideModel;
    :cond_9
    move v4, v7

    .line 223
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getMediaIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 308
    return-object v0
.end method

.method public static getMediaIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    return-object v0
.end method

.method public static getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J
    .locals 8
    .param p0, "restriction"    # Lcom/motorola/messaging/model/ContentRestriction;
    .param p1, "currentNonTextMediaSize"    # I

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getNonTextMediaSizeLimit()J

    move-result-wide v0

    .line 359
    .local v0, "mediaSizeLimit":J
    invoke-virtual {p0}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxMessageSize()J

    move-result-wide v4

    int-to-long v6, p1

    sub-long v2, v4, v6

    .line 361
    .local v2, "msgRemainingSize":J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method public static getMmsFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1304
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 1305
    sget-object v1, Lcom/motorola/messaging/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1307
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v3, v4

    const-string v0, "charset"

    aput-object v0, v3, v6

    const-string v4, "type=137"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1313
    if-eqz v1, :cond_1

    .line 1315
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1316
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1319
    invoke-static {v0}, Lcom/motorola/messaging/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1320
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1321
    new-instance v3, Lcom/motorola/messaging/pdu/EncodedStringValue;

    invoke-direct {v3, v2, v0}, Lcom/motorola/messaging/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1325
    :cond_0
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1328
    :cond_1
    return-object v5

    .line 1325
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getNameCursorFromFdn(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "content://icc/fdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/motorola/messaging/util/MessageUtils;->FDN_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1270
    :goto_0
    return-object v0

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    const-string v1, "MessageUtils"

    const-string v2, "Error in getNameCursorFromFdn"

    invoke-static {v1, v2, v0}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v7

    .line 1270
    goto :goto_0
.end method

.method public static getNameFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1278
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    :cond_0
    return-object v0

    .line 1283
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method

.method public static getNameFromFdn(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1235
    .line 1236
    if-nez p0, :cond_1

    .line 1254
    :cond_0
    :goto_0
    return-object v1

    .line 1240
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1241
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1242
    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1246
    invoke-static {p1}, Lcom/motorola/messaging/util/MessageUtils;->getNameCursorFromFdn(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    .line 1247
    if-eqz v2, :cond_2

    .line 1249
    :try_start_0
    invoke-static {v2, p0}, Lcom/motorola/messaging/util/MessageUtils;->getNameFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1251
    invoke-static {v2}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    :goto_1
    move-object v1, v0

    .line 1254
    goto :goto_0

    .line 1251
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getRecordSoundIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;
    .locals 8
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "currentNonTextMediaSize"    # I

    .prologue
    .line 271
    sget-boolean v4, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 272
    const-string v4, "MessageUtils"

    const-string v5, "getRecordSoundIntent"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    const/4 v0, 0x0

    .line 276
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v3

    .line 277
    .local v3, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-static {v3, p1}, Lcom/motorola/messaging/util/MessageUtils;->getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long v1, v4, v6

    .line 279
    .local v1, "maxSize":J
    const-wide/16 v4, 0x1388

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 280
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 284
    :cond_1
    return-object v0
.end method

.method public static getRecordVideoIntent(Lcom/motorola/messaging/model/Model$CreationMode;I)Landroid/content/Intent;
    .locals 9
    .param p0, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;
    .param p1, "currentNonTextMediaSize"    # I

    .prologue
    .line 243
    sget-boolean v5, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 244
    const-string v5, "MessageUtils"

    const-string v6, "getRecordVideoIntent"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    const/4 v0, 0x0

    .line 248
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v4

    .line 249
    .local v4, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    invoke-static {v4, p1}, Lcom/motorola/messaging/util/MessageUtils;->getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    sub-long v2, v5, v7

    .line 251
    .local v2, "maxSize":J
    const-wide/16 v5, 0x1388

    cmp-long v5, v2, v5

    if-lez v5, :cond_1

    .line 252
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.videoQuality"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    const-string v5, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaxVideoRecordingSeconds()I

    move-result v1

    .line 257
    .local v1, "maxRecordingTime":I
    if-lez v1, :cond_1

    .line 258
    const-string v5, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    .end local v1    # "maxRecordingTime":I
    :cond_1
    return-object v0
.end method

.method public static getTypeFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 563
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/messaging/mime/MmsContentType;->getMimeTypeFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .end local v0    # "file":Ljava/io/File;
    .local v1, "type":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 565
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "type":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getViewMediaIntent(Landroid/content/Context;Lcom/motorola/messaging/model/MediaModel;)Landroid/content/Intent;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 702
    .line 706
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    move-object v0, p1

    .line 707
    check-cast v0, Lcom/motorola/messaging/model/VcardModel;

    invoke-virtual {v0}, Lcom/motorola/messaging/model/VcardModel;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_0
    if-eqz v0, :cond_1

    .line 711
    sget-object v1, Lcom/motorola/messaging/util/MessageUtils;->sGeoSuffix:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v3, 0x7f0b016a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/messaging/util/MessageUtils;->sGeoSuffix:Ljava/lang/String;

    .line 715
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geo:0,0?q="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/motorola/messaging/util/MessageUtils;->sGeoSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v2

    .line 722
    :goto_1
    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->getViewMediaIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 724
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    .line 726
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 727
    if-nez v3, :cond_2

    .line 728
    const-string v0, "MessageUtils"

    const-string v1, "No file to be viewed"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :goto_2
    return-object v2

    .line 717
    :cond_1
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 718
    invoke-virtual {p1}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 737
    :cond_2
    const/4 v0, 0x0

    .line 740
    :try_start_0
    invoke-static {p0, v3}, Lcom/motorola/calendarcommon/vcal/VCalUtils;->parseVcal(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;

    move-result-object v2

    .line 741
    iget-boolean v0, v2, Lcom/motorola/calendarcommon/vcal/common/CalendarEvent;->isVtodo:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 750
    :goto_3
    if-eqz v0, :cond_4

    .line 751
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_3

    .line 752
    const-string v0, "MessageUtils"

    const-string v2, "VTODO type"

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v0, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileUri is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/motorola/messaging/activity/VTodoViewActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 756
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 758
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 759
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    move-object v2, v0

    .line 770
    goto :goto_2

    .line 742
    :catch_0
    move-exception v2

    .line 743
    const-string v2, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to open the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 744
    :catch_1
    move-exception v2

    .line 745
    const-string v2, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "I/O error when reading the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 746
    :catch_2
    move-exception v2

    .line 747
    const-string v2, "MessageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no permisson  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 761
    :cond_4
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 762
    const-string v0, "MessageUtils"

    const-string v2, "VEVENT type"

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    .line 764
    goto :goto_4

    :cond_6
    move-object v0, v1

    .line 767
    goto :goto_4

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static getViewMediaIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 621
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 623
    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    :goto_0
    return-object v0

    .line 626
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static initEditorFromSystemSettings(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 3

    .prologue
    .line 1130
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1131
    new-instance v0, Lcom/motorola/messaging/util/MessageUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/util/MessageUtils$3;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 1152
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "init_editor"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runLowPriorityTask(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1154
    :cond_0
    return-void
.end method

.method public static isActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 1290
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1291
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAnonymousMessage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 572
    if-nez p0, :cond_0

    .line 573
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAnonymousRecipientPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isHdmiOn(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1196
    .line 1198
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1199
    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1200
    if-nez v0, :cond_0

    .line 1231
    :goto_0
    return v7

    .line 1203
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1205
    if-lez v1, :cond_4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.motorola.videoplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1206
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 1207
    const-string v0, "MessageUtils"

    const-string v1, "isHdmiOn : videoplayer is running"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    :cond_1
    const-string v0, "content://com.motorola.provider.hdmi_status/hdmi_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "name=\'hdmi\'"

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1213
    if-eqz v1, :cond_4

    .line 1215
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_3

    .line 1216
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1217
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    .line 1223
    :goto_1
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 1228
    :goto_2
    sget-boolean v1, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_2

    .line 1229
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHdmiOn status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move v7, v0

    .line 1231
    goto :goto_0

    .line 1223
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    move v0, v7

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method public static isValidLatLong(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 950
    .line 953
    invoke-static {p0, p1}, Lcom/motorola/messaging/util/MessageUtils;->getFilePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 955
    if-nez v1, :cond_0

    .line 967
    :goto_0
    return v0

    .line 960
    :cond_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 961
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 963
    invoke-virtual {v2, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 965
    :catch_0
    move-exception v1

    .line 966
    const-string v2, "MessageUtils"

    const-string v3, "Failed to read EXIF for lat/long"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isValidSmsUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1356
    .line 1358
    if-eqz p1, :cond_0

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1362
    if-eqz v1, :cond_0

    .line 1363
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    .line 1364
    :goto_0
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v8, v0

    .line 1368
    :cond_0
    if-nez v8, :cond_1

    .line 1369
    const-string v0, "MessageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    :cond_1
    return v8

    :cond_2
    move v0, v8

    .line 1363
    goto :goto_0
.end method

.method private static persistResizedImageAsPart(Landroid/content/Context;Ljava/io/File;J)Landroid/net/Uri;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resizedImageFile"    # Ljava/io/File;
    .param p2, "messageId"    # J

    .prologue
    .line 374
    const/4 v4, 0x0

    .line 376
    .local v4, "persistedUri":Landroid/net/Uri;
    if-eqz p1, :cond_1

    .line 378
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 380
    .local v8, "uri":Landroid/net/Uri;
    sget-boolean v9, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v9, :cond_0

    .line 381
    const-string v9, "MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uri to be persisted as image part: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    new-instance v2, Lcom/motorola/messaging/pdu/PduPart;

    invoke-direct {v2}, Lcom/motorola/messaging/pdu/PduPart;-><init>()V

    .line 385
    .local v2, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual {v2, v8}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 387
    const-string v9, "image/jpeg"

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/motorola/messaging/pdu/PduPart;->setContentType([B)V

    .line 388
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 389
    .local v6, "src":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 390
    .local v7, "srcBytes":[B
    invoke-virtual {v2, v7}, Lcom/motorola/messaging/pdu/PduPart;->setContentLocation([B)V

    .line 391
    invoke-virtual {v2, v7}, Lcom/motorola/messaging/pdu/PduPart;->setFilename([B)V

    .line 392
    const-string v9, "."

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 393
    .local v3, "period":I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 394
    .local v0, "contentId":[B
    :goto_0
    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/PduPart;->setContentId([B)V

    .line 396
    invoke-static {p0}, Lcom/motorola/messaging/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/motorola/messaging/pdu/PduPersister;

    move-result-object v5

    .line 399
    .local v5, "persister":Lcom/motorola/messaging/pdu/PduPersister;
    invoke-virtual {v5, v2, p2, p3}, Lcom/motorola/messaging/pdu/PduPersister;->persistPart(Lcom/motorola/messaging/pdu/PduPart;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 406
    .end local v0    # "contentId":[B
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "period":I
    .end local v5    # "persister":Lcom/motorola/messaging/pdu/PduPersister;
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "srcBytes":[B
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v4

    .restart local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v3    # "period":I
    .restart local v6    # "src":Ljava/lang/String;
    .restart local v7    # "srcBytes":[B
    .restart local v8    # "uri":Landroid/net/Uri;
    :cond_2
    move-object v0, v7

    .line 393
    goto :goto_0

    .line 400
    .end local v2    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v3    # "period":I
    .end local v6    # "src":Ljava/lang/String;
    .end local v7    # "srcBytes":[B
    .end local v8    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "MessageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while persisting resized image file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static queryReadReport(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J

    .prologue
    const/4 v5, 0x0

    .line 523
    const-string v4, "m_type = 132 AND read = 0 AND rr = 128"

    .line 527
    .local v4, "selection":Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v0

    const/4 v0, 0x1

    const-string v6, "m_id"

    aput-object v6, v3, v0

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;JLcom/motorola/messaging/model/ContentRestriction;I)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "messageId"    # J
    .param p4, "restriction"    # Lcom/motorola/messaging/model/ContentRestriction;
    .param p5, "currentNonTextMediaSize"    # I

    .prologue
    .line 318
    const/4 v9, 0x0

    .line 321
    .local v9, "resizedImageFile":Ljava/io/File;
    :try_start_0
    new-instance v0, Lcom/motorola/messaging/model/ImageResizer;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/model/ImageResizer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 322
    .local v0, "resizer":Lcom/motorola/messaging/model/ImageResizer;
    const/4 v1, 0x0

    invoke-virtual {p4}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageWidth()I

    move-result v2

    invoke-virtual {p4}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageHeight()I

    move-result v3

    invoke-static {p4, p5}, Lcom/motorola/messaging/util/MessageUtils;->getMediaSizeLimit(Lcom/motorola/messaging/model/ContentRestriction;I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/motorola/messaging/model/ImageResizer;->getResizedImageFile(ZIIJ)Ljava/io/File;

    move-result-object v9

    .line 328
    sget-boolean v1, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 329
    const-string v1, "MessageUtils"

    const/4 v2, 0x1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resizedImageFile ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V
    :try_end_0
    .catch Lcom/motorola/messaging/util/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "resizer":Lcom/motorola/messaging/model/ImageResizer;
    :cond_0
    :goto_0
    invoke-static {p0, v9, p2, p3}, Lcom/motorola/messaging/util/MessageUtils;->persistResizedImageAsPart(Landroid/content/Context;Ljava/io/File;J)Landroid/net/Uri;

    move-result-object v8

    .line 340
    .local v8, "persistedUri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 343
    invoke-static {}, Lcom/motorola/messaging/model/BitmapCache;->getResizedImageDimensions()Lcom/motorola/messaging/model/BitmapCache$Dimensions;

    move-result-object v6

    .line 345
    .local v6, "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    if-eqz v6, :cond_1

    .line 346
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->width:I

    iget v3, v6, Lcom/motorola/messaging/model/BitmapCache$Dimensions;->height:I

    invoke-static {v1, v8, v2, v3}, Lcom/motorola/messaging/model/BitmapCache;->setDimensions(Ljava/lang/String;Landroid/net/Uri;II)V

    .line 350
    .end local v6    # "dim":Lcom/motorola/messaging/model/BitmapCache$Dimensions;
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    const-string v1, "MessageUtils"

    const-string v2, "Could not delete resized image file."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_2
    return-object v8

    .line 331
    .end local v8    # "persistedUri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 332
    .local v7, "e1":Lcom/motorola/messaging/util/MmsException;
    const-string v1, "MessageUtils"

    const-string v2, "Unknown error when resizing image."

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resizeImage(Landroid/content/Context;Landroid/net/Uri;Lcom/motorola/messaging/pdu/SendReq;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pdu"    # Lcom/motorola/messaging/pdu/SendReq;

    .prologue
    .line 411
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 412
    const-string v2, "MessageUtils"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string v5, "resizeImage (pdu) - START"

    invoke-static {v2, v3, v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 415
    :cond_0
    const/4 v14, 0x0

    .line 416
    .local v14, "resizedImageFile":Ljava/io/File;
    const/4 v10, 0x0

    .line 418
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v7

    .line 419
    .local v7, "body":Lcom/motorola/messaging/pdu/PduBody;
    invoke-static {v7}, Lcom/motorola/messaging/dom/smil/SmilHelper;->findImage(Lcom/motorola/messaging/pdu/PduBody;)Lcom/motorola/messaging/pdu/PduPart;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 420
    .local v12, "part":Lcom/motorola/messaging/pdu/PduPart;
    if-nez v12, :cond_4

    .line 465
    if-eqz v10, :cond_1

    .line 466
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 473
    :cond_1
    :goto_0
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 474
    const-string v2, "MessageUtils"

    const-string v3, "Could not delete file."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_2
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 478
    const-string v2, "MessageUtils"

    const-string v3, "resizeImage - END"

    .end local v7    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v12    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :goto_1
    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_3
    :goto_2
    return-void

    .line 425
    .restart local v7    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .restart local v12    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :cond_4
    :try_start_2
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_5

    .line 427
    const-string v2, "MMS before picture resize"

    invoke-static {v2, v7}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V

    .line 430
    :cond_5
    new-instance v1, Lcom/motorola/messaging/model/ImageResizer;

    invoke-virtual {v12}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2}, Lcom/motorola/messaging/model/ImageResizer;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 431
    .local v1, "resizer":Lcom/motorola/messaging/model/ImageResizer;
    sget-object v2, Lcom/motorola/messaging/model/Model$CreationMode;->COMPOSE:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v2}, Lcom/motorola/messaging/model/ContentRestrictionManager;->getContentRestriction(Lcom/motorola/messaging/model/Model$CreationMode;)Lcom/motorola/messaging/model/ContentRestriction;

    move-result-object v15

    .line 432
    .local v15, "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    const/4 v2, 0x1

    invoke-virtual {v15}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageWidth()I

    move-result v3

    invoke-virtual {v15}, Lcom/motorola/messaging/model/ContentRestriction;->getMmsMaxImageHeight()I

    move-result v4

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsMaximumPictureSizeForRetry()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual/range {v1 .. v6}, Lcom/motorola/messaging/model/ImageResizer;->getResizedImageFile(ZIIJ)Ljava/io/File;

    move-result-object v14

    .line 438
    if-eqz v14, :cond_a

    .line 443
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    long-to-int v8, v2

    .line 446
    .local v8, "bufferSize":I
    new-array v13, v8, [B

    .line 447
    .local v13, "pictureData":[B
    invoke-virtual {v11, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-eq v2, v8, :cond_9

    .line 448
    const-string v2, "MessageUtils"

    const-string v3, "resizeImage, failure to read all bytes from image file"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 465
    if-eqz v11, :cond_6

    .line 466
    :try_start_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 473
    :cond_6
    :goto_3
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_7

    .line 474
    const-string v2, "MessageUtils"

    const-string v3, "Could not delete file."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_7
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_8

    .line 478
    const-string v2, "MessageUtils"

    const-string v3, "resizeImage - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object v10, v11

    .line 449
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 456
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :cond_9
    :try_start_5
    invoke-static {}, Lcom/motorola/messaging/pdu/util/PduCache;->getInstance()Lcom/motorola/messaging/pdu/util/PduCache;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/motorola/messaging/pdu/util/PduCache;->purge(Landroid/net/Uri;)Lcom/motorola/messaging/pdu/util/PduCacheEntry;

    .line 457
    invoke-virtual {v12, v13}, Lcom/motorola/messaging/pdu/PduPart;->setData([B)V

    .line 458
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/motorola/messaging/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 459
    const-string v2, "MMS with picture resized"

    invoke-static {v2, v7}, Lcom/motorola/messaging/dom/smil/SmilHelper;->showPdu(Ljava/lang/String;Lcom/motorola/messaging/pdu/PduBody;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v10, v11

    .line 465
    .end local v8    # "bufferSize":I
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "pictureData":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_a
    if-eqz v10, :cond_b

    .line 466
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 473
    :cond_b
    :goto_4
    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_c

    .line 474
    const-string v2, "MessageUtils"

    const-string v3, "Could not delete file."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_c
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 478
    const-string v2, "MessageUtils"

    const-string v3, "resizeImage - END"

    goto/16 :goto_1

    .line 461
    .end local v1    # "resizer":Lcom/motorola/messaging/model/ImageResizer;
    .end local v7    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .end local v12    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v15    # "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    :catch_0
    move-exception v9

    .line 462
    .local v9, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    const-string v2, "MessageUtils"

    const-string v3, "exception while resizing picture"

    invoke-static {v2, v3, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 465
    if-eqz v10, :cond_d

    .line 466
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 473
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_6
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_e

    .line 474
    const-string v2, "MessageUtils"

    const-string v3, "Could not delete file."

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_e
    sget-boolean v2, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 478
    const-string v2, "MessageUtils"

    const-string v3, "resizeImage - END"

    goto/16 :goto_1

    .line 464
    :catchall_0
    move-exception v2

    .line 465
    :goto_7
    if-eqz v10, :cond_f

    .line 466
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 473
    :cond_f
    :goto_8
    if-eqz v14, :cond_10

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_10

    .line 474
    const-string v3, "MessageUtils"

    const-string v4, "Could not delete file."

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_10
    sget-boolean v3, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_11

    .line 478
    const-string v3, "MessageUtils"

    const-string v4, "resizeImage - END"

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_11
    throw v2

    .line 468
    :catch_1
    move-exception v9

    .line 470
    .local v9, "e":Ljava/io/IOException;
    const-string v3, "MessageUtils"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 468
    .local v9, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v9

    .line 470
    .local v9, "e":Ljava/io/IOException;
    const-string v2, "MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 468
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v7    # "body":Lcom/motorola/messaging/pdu/PduBody;
    .restart local v12    # "part":Lcom/motorola/messaging/pdu/PduPart;
    :catch_3
    move-exception v9

    .line 470
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v2, "MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 468
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "resizer":Lcom/motorola/messaging/model/ImageResizer;
    .restart local v8    # "bufferSize":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "pictureData":[B
    .restart local v15    # "restriction":Lcom/motorola/messaging/model/ContentRestriction;
    :catch_4
    move-exception v9

    .line 470
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v2, "MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 468
    .end local v8    # "bufferSize":I
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "pictureData":[B
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v9

    .line 470
    .restart local v9    # "e":Ljava/io/IOException;
    const-string v2, "MessageUtils"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v9}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 464
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 461
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v9

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static setAddressesToIntent(Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1068
    const-string v0, "to"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1069
    const-string v1, "cc"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1075
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 1076
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1077
    if-eqz v0, :cond_5

    .line 1078
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1082
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1083
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1084
    if-eqz v0, :cond_0

    .line 1085
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1090
    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1092
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 1095
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1097
    :cond_1
    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 1098
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1100
    :cond_2
    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    .line 1101
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1104
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1105
    const-string v0, "address"

    const-string v1, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    :cond_4
    return-void

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method

.method public static showRestrictionWarning(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "warning"    # Ljava/lang/String;

    .prologue
    .line 599
    sget-boolean v1, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 600
    const-string v1, "MessageUtils"

    const-string v2, "showRestrictionWarning"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    :cond_0
    const v0, 0x7f0b0072

    .line 604
    .local v0, "resId":I
    const-string v1, "in"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    const v0, 0x7f0b0073

    .line 607
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 608
    return-void
.end method

.method public static showUnsupportedContentWarning(Landroid/app/Activity;Lcom/motorola/messaging/model/SmilModel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1376
    sget-boolean v0, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1377
    const-string v0, "MessageUtils"

    const-string v1, "showUnsupportedContentWarning"

    invoke-static {v0, v2, v2, v1}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 1381
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->isRestrictedContentRemoved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1382
    new-instance v0, Lcom/motorola/messaging/util/MessageUtils$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/util/MessageUtils$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1397
    :cond_1
    :goto_0
    return-void

    .line 1387
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->isOversizedContentRemoved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1388
    new-instance v0, Lcom/motorola/messaging/util/MessageUtils$5;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/util/MessageUtils$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1393
    :cond_3
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/motorola/messaging/model/SmilModel;->isUnsupportedContentRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    const-string v0, "MessageUtils"

    const-string v1, "unsupported content was removed"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final slideBottomPanel(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1163
    if-nez p0, :cond_0

    .line 1193
    :goto_0
    return-void

    .line 1167
    :cond_0
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 1168
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushInAnimation:Landroid/view/animation/Animation;

    .line 1171
    :cond_1
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 1172
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushOutAnimation:Landroid/view/animation/Animation;

    .line 1175
    :cond_2
    if-eqz p1, :cond_4

    .line 1179
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 1180
    invoke-virtual {p0, v3, v3, v3, v3}, Landroid/view/View;->layout(IIII)V

    .line 1182
    :cond_3
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1183
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1184
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1187
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1188
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 1189
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1190
    sget-object v0, Lcom/motorola/messaging/util/MessageUtils;->sPushOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1191
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 580
    sget-boolean v1, Lcom/motorola/messaging/util/MessageUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 581
    const-string v1, "MessageUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG-THREAD START - startService, intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    if-nez p1, :cond_1

    .line 596
    :goto_0
    return-void

    .line 587
    :cond_1
    new-instance v0, Lcom/motorola/messaging/util/MessageUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/motorola/messaging/util/MessageUtils$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 595
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/motorola/messaging/concurrent/TaskManager;->getInstance()Lcom/motorola/messaging/concurrent/TaskManager;

    move-result-object v1

    const-string v2, "start_service"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/messaging/concurrent/TaskManager;->runBackgroundTask(Ljava/lang/Runnable;Ljava/lang/String;)Lcom/motorola/messaging/concurrent/TaskManager$Task;

    goto :goto_0
.end method
