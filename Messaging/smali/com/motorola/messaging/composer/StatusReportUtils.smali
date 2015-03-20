.class public Lcom/motorola/messaging/composer/StatusReportUtils;
.super Ljava/lang/Object;
.source "StatusReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;,
        Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field static final MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field static final SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lcom/motorola/messaging/composer/StatusReportUtils;->DEBUG:Z

    .line 30
    sget-boolean v0, Lcom/motorola/messaging/composer/StatusReportUtils;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    .line 46
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v0, v2

    const-string v3, "delivery_status"

    aput-object v3, v0, v1

    const-string v3, "read_status"

    aput-object v3, v0, v4

    sput-object v0, Lcom/motorola/messaging/composer/StatusReportUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v0, v2

    const-string v3, "d_rpt"

    aput-object v3, v0, v1

    const-string v3, "rr"

    aput-object v3, v0, v4

    sput-object v0, Lcom/motorola/messaging/composer/StatusReportUtils;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    .line 59
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "address"

    aput-object v3, v0, v2

    const-string v2, "status"

    aput-object v2, v0, v1

    const-string v1, "stack_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/messaging/composer/StatusReportUtils;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    return-void
.end method

.method private static convertCdmaSmsStatus(I)I
    .locals 6
    .param p0, "smsStatus"    # I

    .prologue
    .line 138
    sget-boolean v3, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 139
    const-string v3, "StatusReportUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertCdmaSmsStatus, smsStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    const/4 v1, 0x1

    .line 149
    .local v1, "status":I
    shr-int/lit8 v3, p0, 0x18

    and-int/lit8 v0, v3, 0x3

    .line 150
    .local v0, "errorClass":I
    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v2, v3, 0xff

    .line 152
    .local v2, "statusCode":I
    sget v3, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->ERROR_NONE:I

    if-ne v0, v3, :cond_1

    .line 153
    sget v3, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->STATUS_DELIVERED:I

    if-ne v2, v3, :cond_3

    .line 154
    const/4 v1, 0x3

    .line 161
    :cond_1
    :goto_0
    sget-boolean v3, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 162
    const-string v3, "StatusReportUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convertCdmaSmsStatus, status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_2
    return v1

    .line 156
    :cond_3
    sget v3, Lcom/motorola/messaging/frameworkadapter/telephony/BearerData;->STATUS_ACCEPTED:I

    if-ne v2, v3, :cond_1

    .line 157
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static convertGsmSmsStatus(I)I
    .locals 4
    .param p0, "smsStatus"    # I

    .prologue
    .line 108
    sget-boolean v1, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "StatusReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertGsmSmsStatus, smsStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const/16 v1, 0x40

    if-lt p0, v1, :cond_2

    .line 121
    const/4 v0, 0x1

    .line 130
    .local v0, "status":I
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 131
    const-string v1, "StatusReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertGsmSmsStatus, status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_1
    return v0

    .line 122
    .end local v0    # "status":I
    :cond_2
    const/16 v1, 0x20

    if-lt p0, v1, :cond_3

    .line 124
    const/4 v0, 0x2

    .restart local v0    # "status":I
    goto :goto_0

    .line 127
    .end local v0    # "status":I
    :cond_3
    const/4 v0, 0x3

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method public static convertSmsStatus(II)I
    .locals 4
    .param p0, "smsStatus"    # I
    .param p1, "stackType"    # I

    .prologue
    .line 170
    sget-boolean v1, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "StatusReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSmsStatus, smsStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gsm mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isGSM()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", world="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stackType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_0
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    .line 181
    const/4 v0, 0x0

    .line 191
    .local v0, "convertedSmsStatus":I
    :goto_0
    sget-boolean v1, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "StatusReportUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertSmsStatus, convertedSmsStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_1
    return v0

    .line 183
    .end local v0    # "convertedSmsStatus":I
    :cond_2
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isCDMA()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isWorldPhone()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->SMS_STACK_TYPE_CDMA:I

    if-ne p1, v1, :cond_5

    .line 185
    :cond_4
    invoke-static {p0}, Lcom/motorola/messaging/composer/StatusReportUtils;->convertCdmaSmsStatus(I)I

    move-result v0

    .restart local v0    # "convertedSmsStatus":I
    goto :goto_0

    .line 188
    .end local v0    # "convertedSmsStatus":I
    :cond_5
    invoke-static {p0}, Lcom/motorola/messaging/composer/StatusReportUtils;->convertGsmSmsStatus(I)I

    move-result v0

    .restart local v0    # "convertedSmsStatus":I
    goto :goto_0
.end method

.method public static fetchReportStatus(Landroid/content/Context;JLjava/util/List;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "reportStatus":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;>;"
    const/4 v4, 0x0

    .line 248
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 250
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/composer/StatusReportUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 253
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 277
    :goto_0
    return-void

    .line 258
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 260
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, "recipient":Ljava/lang/String;
    invoke-static {v9}, Lcom/motorola/messaging/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v9}, Lcom/motorola/messaging/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 263
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;

    .line 266
    .local v10, "report":Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;
    invoke-virtual {v10}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->getRecipient()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->setDeliveryReportStatus(I)V

    .line 268
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->setReadReportStatus(I)V

    .line 272
    .end local v10    # "report":Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 275
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "recipient":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 261
    .restart local v9    # "recipient":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_1

    .line 275
    .end local v9    # "recipient":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getCombinedDeliveryStatus(Landroid/content/Context;J)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mMsgId"    # J

    .prologue
    .line 312
    sget-boolean v4, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 313
    const-string v4, "StatusReportUtils"

    const-string v5, "getCombinedDeliveryStatus"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    const-string v4, "mms"

    invoke-static {p0, v4, p1, p2}, Lcom/motorola/messaging/composer/StatusReportUtils;->getDeliveryReportsForMsg(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v3

    .line 317
    .local v3, "reportItems":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    const/4 v0, 0x3

    .line 319
    .local v0, "combinedDeliveryStatus":I
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 320
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;

    .line 321
    .local v2, "report":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    iget v4, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    if-eq v4, v0, :cond_1

    .line 322
    iget v4, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 323
    const/4 v0, 0x1

    .line 332
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "report":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    :cond_2
    return v0

    .line 325
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "report":Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;
    :cond_3
    iget v4, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 326
    iget v0, v2, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;->mStatus:I

    goto :goto_0
.end method

.method private static getDeliveryReportsForMms(Landroid/content/Context;J)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-static {p0, p1, p2}, Lcom/motorola/messaging/composer/StatusReportUtils;->initMmsReportStatus(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "reportStatus":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 234
    :cond_0
    const/4 v1, 0x0

    .line 244
    :cond_1
    return-object v1

    .line 237
    :cond_2
    invoke-static {p0, p1, p2, v3}, Lcom/motorola/messaging/composer/StatusReportUtils;->fetchReportStatus(Landroid/content/Context;JLjava/util/List;)V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;

    .line 241
    .local v2, "report":Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;
    new-instance v4, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->getRecipient()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->getDeliveryStatus()I

    move-result v6

    invoke-virtual {v2}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->getDeliveryStatusText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getDeliveryReportsForMsg(Landroid/content/Context;Ljava/lang/String;J)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p2, p3}, Lcom/motorola/messaging/composer/StatusReportUtils;->getDeliveryReportsForSms(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/motorola/messaging/composer/StatusReportUtils;->getDeliveryReportsForMms(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static getDeliveryReportsForSms(Landroid/content/Context;J)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "selection":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/composer/StatusReportUtils;->SMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 85
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 101
    :goto_0
    return-object v5

    .line 90
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 103
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 94
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    new-instance v0, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/composer/StatusReportUtils;->convertSmsStatus(II)I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x2

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {p0, v3, v5}, Lcom/motorola/messaging/composer/StatusReportUtils;->getSmsStatusText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 103
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    .restart local v8    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$DeliveryReportItem;>;"
    :cond_2
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move-object v5, v8

    .line 101
    goto :goto_0
.end method

.method private static getSmsStatusText(Landroid/content/Context;II)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "smsStatus"    # I
    .param p2, "stackType"    # I

    .prologue
    .line 199
    sget-boolean v2, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 200
    const-string v2, "StatusReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmsStatusText IN, smsStatus= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", stackType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-static {p1, p2}, Lcom/motorola/messaging/composer/StatusReportUtils;->convertSmsStatus(II)I

    move-result v0

    .line 207
    .local v0, "status":I
    if-nez v0, :cond_2

    .line 209
    const v2, 0x7f0b00ce

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "statusText":Ljava/lang/String;
    :goto_0
    sget-boolean v2, Lcom/motorola/messaging/composer/StatusReportUtils;->LOCAL_LOG:Z

    if-eqz v2, :cond_1

    .line 222
    const-string v2, "StatusReportUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSmsStatusText OUT, statusText="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_1
    return-object v1

    .line 210
    .end local v1    # "statusText":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 212
    const v2, 0x7f0b00d2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "statusText":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v1    # "statusText":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 215
    const v2, 0x7f0b00cf

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "statusText":Ljava/lang/String;
    goto :goto_0

    .line 218
    .end local v1    # "statusText":Ljava/lang/String;
    :cond_4
    const v2, 0x7f0b00d1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "statusText":Ljava/lang/String;
    goto :goto_0
.end method

.method private static initMmsReportStatus(Landroid/content/Context;J)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 280
    sget-object v0, Lcom/motorola/messaging/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 282
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/motorola/messaging/composer/StatusReportUtils;->MMS_REPORT_REQUEST_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 285
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 304
    :goto_0
    return-object v4

    .line 290
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gtz v0, :cond_1

    .line 306
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 294
    :cond_1
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v8, "reqList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    :cond_2
    new-instance v0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 306
    :cond_3
    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move-object v4, v8

    .line 304
    goto :goto_0

    .line 306
    .end local v8    # "reqList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;>;"
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0
.end method
