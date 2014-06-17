.class public Lcom/android/mms/checkin/CheckinLogger;
.super Ljava/lang/Object;
.source "CheckinLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/checkin/CheckinLogger$EventPair;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/mms/checkin/CheckinLogger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/android/mms/checkin/CheckinLogger;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/mms/checkin/CheckinLogger;->mInstance:Lcom/android/mms/checkin/CheckinLogger;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/android/mms/checkin/CheckinLogger;

    invoke-direct {v0}, Lcom/android/mms/checkin/CheckinLogger;-><init>()V

    sput-object v0, Lcom/android/mms/checkin/CheckinLogger;->mInstance:Lcom/android/mms/checkin/CheckinLogger;

    .line 38
    :cond_0
    sget-object v0, Lcom/android/mms/checkin/CheckinLogger;->mInstance:Lcom/android/mms/checkin/CheckinLogger;

    return-object v0
.end method

.method private getLogLevel(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "logLevel":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal level argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :pswitch_0
    const-string v0, "MOT_MSG_STATS_L1"

    .line 108
    :goto_0
    return-object v0

    .line 97
    :pswitch_1
    const-string v0, "MOT_MSG_STATS_L2"

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    const-string v0, "MOT_MSG_STATS_L3"

    .line 101
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v0, "MOT_MSG_STATS_L4"

    .line 104
    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # Ljava/lang/String;
    .param p3, "segName"    # Ljava/lang/String;
    .param p4, "pairArray"    # [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    .prologue
    .line 123
    invoke-static {}, Lcom/android/mms/checkin/CheckinEventWrapper;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    new-instance v0, Lcom/android/mms/checkin/CheckinLogger$1;

    const-string v2, "logEventThread"

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/checkin/CheckinLogger$1;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;Landroid/content/Context;)V

    .line 140
    .local v0, "logThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    .end local v0    # "logThread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public logAddMmsReceivedItem(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "numParts"    # I

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    const-string v3, "CheckinLogger"

    const-string v4, "bad context, aborting checkin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "MMS_rcvd"

    .line 223
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v3, "numParts"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 224
    .local v1, "numPartsPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 225
    .local v2, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0
.end method

.method public logAddMmsSentItem(Landroid/content/Context;IIJIII)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "numParts"    # I
    .param p4, "size"    # J
    .param p6, "msgType"    # I
    .param p7, "destCnt"    # I
    .param p8, "destBccCnt"    # I

    .prologue
    .line 167
    if-nez p1, :cond_0

    .line 168
    const-string v7, "CheckinLogger"

    const-string v8, "bad context, aborting checkin"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string v2, "MMS_sent"

    .line 175
    .local v2, "header":Ljava/lang/String;
    new-instance v4, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "numParts"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 176
    .local v4, "numPartsPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "size"

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 177
    .local v6, "sizePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v3, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "msgType"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 178
    .local v3, "msgTypePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v1, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "dest_cnt"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v1, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 179
    .local v1, "destCntPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v0, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "dest_bcc_cnt"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v0, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 180
    .local v0, "destBccCntPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v7, 0x5

    new-array v5, v7, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object v3, v5, v7

    const/4 v7, 0x3

    aput-object v1, v5, v7

    const/4 v7, 0x4

    aput-object v0, v5, v7

    .line 182
    .local v5, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v2, v5}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0
.end method

.method public logAddMmsTransactionItem(Landroid/content/Context;ILjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 245
    if-nez p1, :cond_0

    .line 246
    const-string v4, "CheckinLogger"

    const-string v5, "bad context, aborting checkin"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v0, "MMS_transaction"

    .line 253
    .local v0, "header":Ljava/lang/String;
    new-instance v2, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v4, "status"

    invoke-direct {v2, p0, v4, p3, v8}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 254
    .local v2, "statusPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const-string v4, "apnSwFail"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    new-instance v3, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v4, "timeout"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v8}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 256
    .local v3, "timeoutPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v4, 0x2

    new-array v1, v4, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    aput-object v2, v1, v7

    aput-object v3, v1, v6

    .line 261
    .end local v3    # "timeoutPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    .local v1, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0, v1}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0

    .line 258
    .end local v1    # "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    :cond_1
    new-array v1, v6, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    aput-object v2, v1, v7

    .restart local v1    # "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    goto :goto_1
.end method

.method public logAddSmsFailedItem(Landroid/content/Context;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "resultCode"    # I
    .param p4, "errorCode"    # I

    .prologue
    const/4 v6, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    const-string v4, "CheckinLogger"

    const-string v5, "bad context, aborting checkin"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v1, "SMS_failed"

    .line 237
    .local v1, "header":Ljava/lang/String;
    new-instance v3, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v4, "resultCode"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 238
    .local v3, "resultCodePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v0, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v4, "errorCode"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 239
    .local v0, "errorCodePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v4, 0x2

    new-array v2, v4, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 241
    .local v2, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0
.end method

.method public logAddSmsReceivedActionItem(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    const-string v3, "CheckinLogger"

    const-string v4, "bad context, aborting checkin"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v1, "SMS_received"

    .line 209
    .local v1, "header":Ljava/lang/String;
    new-instance v0, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v3, "action"

    const-string v4, "replaceMsg"

    const/4 v5, 0x0

    invoke-direct {v0, p0, v3, v4, v5}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 210
    .local v0, "actionPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v3, 0x1

    new-array v2, v3, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 211
    .local v2, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0
.end method

.method public logAddSmsReceivedItem(Landroid/content/Context;IZI)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "isEmail"    # Z
    .param p4, "msgSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    const-string v4, "CheckinLogger"

    const-string v5, "bad context, aborting checkin"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v0, "SMS_received"

    .line 194
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v5, "isEmail"

    if-eqz p3, :cond_1

    const-string v4, "true"

    :goto_1
    invoke-direct {v1, p0, v5, v4, v6}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 195
    .local v1, "isEmailPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v2, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v4, "msgSize"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v4, v5, v6}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 196
    .local v2, "msgSizePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v4, 0x2

    new-array v3, v4, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 197
    .local v3, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4, v0, v3}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0

    .line 194
    .end local v1    # "isEmailPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    .end local v2    # "msgSizePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    .end local v3    # "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    :cond_1
    const-string v4, "false"

    goto :goto_1
.end method

.method public logAddSmsSentItem(Landroid/content/Context;IIIZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "level"    # I
    .param p3, "msgSize"    # I
    .param p4, "numSeg"    # I
    .param p5, "requestReport"    # Z
    .param p6, "isEmail"    # Z

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const-string v7, "CheckinLogger"

    const-string v8, "bad context, aborting checkin"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "SMS_sent"

    .line 155
    .local v0, "header":Ljava/lang/String;
    new-instance v2, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "msgSize"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 156
    .local v2, "msgSizePair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v3, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "numDests"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v3, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 157
    .local v3, "numDestsPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v4, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v7, "numSeg"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v4, p0, v7, v8, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 158
    .local v4, "numSegPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v6, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v8, "requestReport"

    if-eqz p5, :cond_1

    const-string v7, "true"

    :goto_1
    const/4 v9, 0x0

    invoke-direct {v6, p0, v8, v7, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 159
    .local v6, "requestReportPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    new-instance v1, Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const-string v8, "isEmail"

    if-eqz p6, :cond_2

    const-string v7, "true"

    :goto_2
    const/4 v9, 0x0

    invoke-direct {v1, p0, v8, v7, v9}, Lcom/android/mms/checkin/CheckinLogger$EventPair;-><init>(Lcom/android/mms/checkin/CheckinLogger;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/checkin/CheckinLogger$1;)V

    .line 160
    .local v1, "isEmailPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    const/4 v7, 0x5

    new-array v5, v7, [Lcom/android/mms/checkin/CheckinLogger$EventPair;

    const/4 v7, 0x0

    aput-object v2, v5, v7

    const/4 v7, 0x1

    aput-object v3, v5, v7

    const/4 v7, 0x2

    aput-object v4, v5, v7

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v7, 0x4

    aput-object v1, v5, v7

    .line 162
    .local v5, "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    invoke-direct {p0, p2}, Lcom/android/mms/checkin/CheckinLogger;->getLogLevel(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v7, v0, v5}, Lcom/android/mms/checkin/CheckinLogger;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Lcom/android/mms/checkin/CheckinLogger$EventPair;)V

    goto :goto_0

    .line 158
    .end local v1    # "isEmailPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    .end local v5    # "pairArray":[Lcom/android/mms/checkin/CheckinLogger$EventPair;
    .end local v6    # "requestReportPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    :cond_1
    const-string v7, "false"

    goto :goto_1

    .line 159
    .restart local v6    # "requestReportPair":Lcom/android/mms/checkin/CheckinLogger$EventPair;
    :cond_2
    const-string v7, "false"

    goto :goto_2
.end method
