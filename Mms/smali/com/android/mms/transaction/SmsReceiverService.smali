.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;,
        Lcom/android/mms/transaction/SmsReceiverService$Retry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOCAL_LOG:Z

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mIsRegisteredForService:Z

.field private mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

.field private mManager:Lcom/android/mms/transaction/TransactionManager;

.field private mResultCode:I

.field private mSending:Z

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->DEBUG:Z

    .line 88
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Mms:transaction"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    .line 201
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "thread_id"

    aput-object v3, v0, v1

    const-string v3, "address"

    aput-object v3, v0, v5

    const-string v3, "body"

    aput-object v3, v0, v6

    const/4 v3, 0x4

    const-string v4, "priority"

    aput-object v4, v0, v3

    const/4 v3, 0x5

    const-string v4, "status"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 1003
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "address"

    aput-object v2, v0, v1

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsRegisteredForService:Z

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleResend(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/transaction/SmsReceiverService;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendInactiveMessage()V

    return-void
.end method

.method private couldBeEmailGateway(Ljava/lang/String;)Z
    .locals 2
    .param p1, "smsOrigAddress"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayClassZeroMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pdu"

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1198
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1199
    return-void
.end method

.method private displayErrorCodeMultiple(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # Ljava/lang/String;
    .param p3, "destsSetId"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 741
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 742
    const-string v0, "SmsReceiverService"

    const-string v1, "displayErrorCodeMultiple"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    invoke-static {p2, p3, p1}, Lcom/android/mms/ui/SMSRetryActivity;->initRetryMultiple(Ljava/lang/String;ILandroid/content/Context;)V

    .line 746
    return-void
.end method

.method private displayErrorCodeOne(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "retry"    # Z
    .param p4, "errorCode"    # I

    .prologue
    .line 729
    sget-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 730
    const-string v1, "SmsReceiverService"

    const-string v2, "displayErrorCodeOne"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    invoke-static {p2, p4, p3, p1}, Lcom/android/mms/ui/SMSRetryActivity;->initRetrySingle(Landroid/net/Uri;IZLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 735
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x7f0a00f3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 738
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private extractAddressAndSubject(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "sms"    # Landroid/telephony/SmsMessage;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1434
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->isSMSEmail(Landroid/telephony/SmsMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1435
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->extractAddressAndSubjectForSMSEmail(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V

    .line 1441
    :goto_0
    return-void

    .line 1439
    :cond_0
    const-string v0, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractAddressAndSubjectForSMSEmail(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1394
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1398
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1399
    const-string v1, ""

    .line 1400
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1402
    if-eqz v2, :cond_2

    .line 1408
    const-string v3, "[\\s#(/]"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1410
    if-eqz v3, :cond_2

    .line 1411
    aget-object v0, v3, v5

    .line 1412
    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1413
    invoke-direct {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractSubjectFromBodyForSMSEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1416
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1417
    const-string v2, "subject"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    :cond_3
    invoke-static {v0}, Lcom/android/mms/transaction/SmsReceiverService;->formatEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1422
    const-string v1, "address"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 1234
    array-length v2, p1

    .line 1236
    .local v2, "pduCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1237
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 1239
    .local v3, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1240
    aget-object v3, p1, v1

    .line 1241
    if-nez v3, :cond_0

    .line 1239
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1252
    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->isSMSEmail(Landroid/telephony/SmsMessage;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1253
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->extractBodyForSMSEmail(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1256
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1259
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private extractBodyForSMSEmail(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1308
    if-nez p1, :cond_1

    .line 1309
    const-string v0, ""

    .line 1340
    :cond_0
    :goto_0
    return-object v0

    .line 1312
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1314
    if-eqz v0, :cond_2

    .line 1315
    const-string v1, "[\\s#(/]"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1317
    if-eqz v1, :cond_2

    .line 1318
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1319
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getSubjectToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1320
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1323
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1324
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1327
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1329
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1336
    :cond_2
    sget-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1337
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS body parsed by App: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1149
    aget-object v3, p1, v2

    .line 1151
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1153
    invoke-direct {p0, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->extractAddressAndSubject(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->extractBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v5

    .line 1159
    new-instance v6, Ljava/util/GregorianCalendar;

    const/16 v0, 0x7db

    const/16 v1, 0x8

    const/16 v7, 0x12

    invoke-direct {v6, v0, v1, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 1160
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-direct {v7}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1162
    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1164
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1168
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v0

    .line 1171
    :cond_0
    const-string v6, "body"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v5, "date"

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1173
    const-string v0, "date_sent"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    const-string v0, "protocol"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1175
    const-string v0, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    const-string v0, "seen"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1177
    const-string v1, "reply_path_present"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    const-string v0, "service_center"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v0, "priority"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    return-object v4

    :cond_1
    move v0, v2

    .line 1177
    goto :goto_0
.end method

.method private extractSubjectFromBodyForSMSEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getSubjectToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1369
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1372
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1373
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1374
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    const/4 v0, 0x1

    .line 1377
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1378
    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    const/4 v0, 0x2

    .line 1382
    :cond_0
    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1390
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1476
    move-object v0, p0

    .line 1479
    .local v0, "formattedEmail":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1482
    return-object v0
.end method

.method private getSubjectToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1358
    const-string v0, "^\\s*##((.*?))#|^\\s*\\((.*?)\\)"

    .line 1359
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsEmailSubjectWithSlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|^\\s*\\/((.*?))\\/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    :cond_0
    return-object v0
.end method

.method private getTotalOccurances(Landroid/net/Uri;II)I
    .locals 16
    .param p1, "msgPendingUri"    # Landroid/net/Uri;
    .param p2, "destsSetId"    # I
    .param p3, "noOfSegments"    # I

    .prologue
    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destinations_set_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "total_segments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 705
    .local v13, "cidCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 707
    .local v15, "totalOccurances":I
    if-eqz v13, :cond_0

    .line 708
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v15, v1

    .line 709
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 710
    const/4 v13, 0x0

    .line 713
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destinations_set_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "total_segments"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 715
    .local v10, "where1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-static/range {v6 .. v12}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 718
    .local v14, "cidCursor1":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 719
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v15, v1

    .line 720
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v14, 0x0

    .line 724
    :cond_1
    return v15
.end method

.method private handleBootCompleted()V
    .locals 4

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v0

    .line 950
    .local v0, "numMoved":I
    if-lez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 955
    :cond_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 958
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 960
    return-void
.end method

.method private handleResend(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 603
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$Retry;

    invoke-direct {v2, v0}, Lcom/android/mms/transaction/SmsReceiverService$Retry;-><init>(Landroid/os/Bundle;)V

    .line 604
    .local v2, "smsRetry":Lcom/android/mms/transaction/SmsReceiverService$Retry;
    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getRetryType()I

    move-result v1

    .line 605
    .local v1, "retryType":I
    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 607
    .local v3, "uri":Landroid/net/Uri;
    sget-boolean v4, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 608
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleResend, retryType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    invoke-static {v3}, Lcom/android/mms/transaction/RetryScheduler;->removeSmsRetryAlarm(Landroid/net/Uri;)V

    .line 614
    packed-switch v1, :pswitch_data_0

    .line 628
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong retry type, type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :goto_0
    return-void

    .line 616
    :pswitch_0
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    goto :goto_0

    .line 620
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getRetryCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getPendingId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V

    goto :goto_0

    .line 624
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getDestsCommonId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MOSmsManager;->retryMultipleSms(Ljava/util/List;I)V

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleSendCompleted(Landroid/net/Uri;I)V
    .locals 25
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "destsSetId"    # I

    .prologue
    .line 484
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_0

    .line 485
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendCompleted START, uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 489
    .local v4, "context":Landroid/content/Context;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v21, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v7, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 493
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 599
    :cond_1
    :goto_0
    return-void

    .line 498
    :cond_2
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_3

    .line 588
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 502
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_f

    .line 503
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 504
    .local v16, "id":I
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 506
    .local v14, "destsSetIdStored":I
    move/from16 v0, p2

    if-ne v14, v0, :cond_7

    .line 507
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 508
    .local v18, "msgIdStored":I
    const/4 v5, 0x7

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 510
    .local v19, "pErrorCode":I
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_4

    .line 511
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendCompleted, id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pending error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MOSmsManager;->pErrorCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 519
    .local v9, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 521
    .local v17, "msgIdPresentCursor":Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 522
    .local v23, "totalOccurances":I
    if-eqz v17, :cond_5

    .line 523
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 524
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 527
    :cond_5
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_6

    .line 528
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendCompleted, total="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_6
    if-nez v23, :cond_8

    .line 532
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MOSmsManager;->finishSmsSent(I)V

    .line 534
    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 585
    .end local v9    # "where":Ljava/lang/String;
    .end local v17    # "msgIdPresentCursor":Landroid/database/Cursor;
    .end local v18    # "msgIdStored":I
    .end local v19    # "pErrorCode":I
    .end local v23    # "totalOccurances":I
    :cond_7
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 588
    .end local v14    # "destsSetIdStored":I
    .end local v16    # "id":I
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 536
    .restart local v9    # "where":Ljava/lang/String;
    .restart local v14    # "destsSetIdStored":I
    .restart local v16    # "id":I
    .restart local v17    # "msgIdPresentCursor":Landroid/database/Cursor;
    .restart local v18    # "msgIdStored":I
    .restart local v19    # "pErrorCode":I
    .restart local v23    # "totalOccurances":I
    :cond_8
    :try_start_2
    const-string v5, "content://sms"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move/from16 v0, v18

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 537
    .local v22, "smsUri":Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MOSmsManager;->isNoError(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 538
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_9

    .line 539
    const-string v5, "SmsReceiverService"

    const-string v6, "handleSendCompleted success"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/android/mms/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 544
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 545
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MOSmsManager;->finishSmsSent(I)V

    goto :goto_2

    .line 548
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MOSmsManager;->getErrorCodeFromPendingError(I)I

    move-result v15

    .line 549
    .local v15, "errorCode":I
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MOSmsManager;->getResultCodeFromPendingError(I)I

    move-result v20

    .line 551
    .local v20, "resultCode":I
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_b

    .line 552
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendCompleted - failure, resultCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_b
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v13

    .line 558
    .local v13, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v13, :cond_c

    .line 559
    const/4 v5, 0x2

    move/from16 v0, v20

    invoke-virtual {v13, v4, v5, v0, v15}, Lcom/android/mms/checkin/CheckinLogger;->logAddSmsFailedItem(Landroid/content/Context;III)V

    .line 563
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsReceiverService;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    const/4 v6, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v5, v0, v6, v1, v15}, Lcom/android/mms/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 565
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 567
    const-wide/16 v5, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 569
    const/16 v5, 0xff

    move/from16 v0, v20

    if-ne v0, v5, :cond_e

    .line 571
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_d

    .line 572
    const-string v5, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleSendCompleted - add uri to resend list, uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_d
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    const-string v5, ";"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 580
    :cond_e
    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MOSmsManager;->finishSmsSent(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 588
    .end local v9    # "where":Ljava/lang/String;
    .end local v13    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    .end local v14    # "destsSetIdStored":I
    .end local v15    # "errorCode":I
    .end local v16    # "id":I
    .end local v17    # "msgIdPresentCursor":Landroid/database/Cursor;
    .end local v18    # "msgIdStored":I
    .end local v19    # "pErrorCode":I
    .end local v20    # "resultCode":I
    .end local v22    # "smsUri":Landroid/net/Uri;
    .end local v23    # "totalOccurances":I
    :cond_f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 591
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 592
    .local v24, "uriSet":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/mms/transaction/SmsReceiverService;->displayErrorCodeMultiple(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 596
    :cond_10
    sget-boolean v5, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_1

    .line 597
    const-string v5, "SmsReceiverService"

    const-string v6, "handleSendCompleted END"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private handleSendInactiveMessage()V
    .locals 2

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToQueuedBox()I

    .line 757
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 758
    return-void
.end method

.method private handleSendMessage()V
    .locals 2

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 750
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 752
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 367
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 368
    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "newServiceState":I
    if-nez v1, :cond_2

    .line 370
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 371
    const-string v3, "SmsReceiverService"

    const-string v4, "SMS-STATUS - IN_SERVICE received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    const-wide/32 v3, 0xafc8

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 383
    .end local v1    # "newServiceState":I
    :cond_1
    :goto_0
    return-void

    .line 376
    .restart local v1    # "newServiceState":I
    :cond_2
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_3

    .line 377
    const-string v3, "SmsReceiverService"

    const-string v4, "SMS-STATUS - NOT_IN_SERVICE received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_3
    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$Retry;

    invoke-direct {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;-><init>()V

    .line 380
    .local v2, "retryFirst":Lcom/android/mms/transaction/SmsReceiverService$Retry;
    invoke-virtual {v2}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/mms/transaction/RetryScheduler;->cancelSmsRetryAlarm(Landroid/net/Uri;Lcom/android/mms/transaction/SmsReceiverService$Retry;)V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    .line 908
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 909
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const-string v10, "format"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    .local v1, "format":Ljava/lang/String;
    const-string v10, "stack_type"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 911
    .local v6, "stackType":I
    invoke-direct {p0, p0, v4, p2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 912
    .local v3, "messageUri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 913
    invoke-static {v3, v6}, Lcom/android/mms/transaction/MOSmsManager;->updateSmsStackType(Landroid/net/Uri;I)V

    .line 915
    :cond_0
    const/4 v10, 0x0

    aget-object v5, v4, v10

    .line 917
    .local v5, "sms":Landroid/telephony/SmsMessage;
    const-string v10, "Mms:transaction"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 924
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .local v0, "bodySB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v10, v4

    if-ge v2, v10, :cond_3

    .line 926
    aget-object v10, v4, v2

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 918
    .end local v0    # "bodySB":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_1
    const-string v11, "SmsReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSmsReceived"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "(replace)"

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " messageUri: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", address: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", body: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v10, ""

    goto :goto_2

    .line 929
    .restart local v0    # "bodySB":Ljava/lang/StringBuilder;
    .restart local v2    # "i":I
    :cond_3
    if-eqz v3, :cond_4

    .line 930
    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v8

    .line 932
    .local v8, "threadId":J
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    .local v7, "theintent":Landroid/content/Intent;
    const-string v10, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v10, "tid"

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 935
    const-string v10, "address"

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    const-string v10, "body"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 937
    const-string v10, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v7, v10}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 940
    const-string v10, "SmsReceiverService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleSmsReceived messageUri: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " threadId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v10, 0x0

    invoke-static {p0, v8, v9, v10}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 943
    .end local v7    # "theintent":Landroid/content/Intent;
    .end local v8    # "threadId":J
    :cond_4
    return-void
.end method

.method private handleSmsSent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x2

    .line 386
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent() - START, intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 392
    .local v1, "uri":Landroid/net/Uri;
    const-string v0, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 393
    .local v8, "error":I
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v0, p1}, Lcom/android/mms/transaction/TransactionManager;->getSMSResultFromIntent(Landroid/content/Intent;)Lcom/android/mms/transaction/TransactionManager$SmsResultData;

    move-result-object v9

    .line 394
    .local v9, "smsResult":Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - Sms Sent status, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->resultCode:I

    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 400
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent, destsSetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->destsSetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number of segments="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number of destinations="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MOSmsManager;->isValidSmsUri(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 445
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 446
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_2
    :goto_0
    return-void

    .line 411
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 413
    :cond_4
    const-string v0, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 414
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 421
    const/4 v0, 0x6

    invoke-static {p0, v1, v0, v8}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 422
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v2, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 441
    :cond_6
    :goto_1
    iget v2, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->destsSetId:I

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v4, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->errorCode:I

    iget v5, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    iget v6, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/net/Uri;IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 446
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_7
    :try_start_2
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v0, v5, :cond_6

    .line 429
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v2, p0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v7

    .line 436
    .local v7, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v7, :cond_6

    .line 437
    const/4 v0, 0x2

    iget v2, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v3, v9, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v7, p0, v0, v2, v3}, Lcom/android/mms/checkin/CheckinLogger;->logAddSmsFailedItem(Landroid/content/Context;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 445
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "checkin":Lcom/android/mms/checkin/CheckinLogger;
    .end local v8    # "error":I
    .end local v9    # "smsResult":Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_8

    .line 446
    const-string v2, "SmsReceiverService"

    const-string v3, "handleSmsSent() - END"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    throw v0
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "error"    # I

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x0

    const/4 v7, 0x2

    .line 836
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 837
    .local v3, "uri":Landroid/net/Uri;
    iput-boolean v5, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 838
    const-string v4, "SendNextMsg"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 846
    .local v1, "sendNextMsg":Z
    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    .line 847
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 848
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent move message to sent folder uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    invoke-static {p0, v3, v7, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 851
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent: failed to move message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to sent folder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    :cond_1
    if-eqz v1, :cond_2

    .line 854
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 858
    :cond_2
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 897
    :cond_3
    :goto_0
    return-void

    .line 859
    :cond_4
    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v4, v7, :cond_5

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 861
    :cond_5
    const-string v4, "Mms:transaction"

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 862
    const-string v4, "SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 869
    invoke-static {p0, v3, v8, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 870
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v5, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 876
    :cond_7
    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v4, v8, :cond_8

    .line 877
    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-direct {p0, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;I)V

    .line 878
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v5, p0}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 885
    :cond_8
    iget-object v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v4, p1}, Lcom/android/mms/transaction/TransactionManager;->getSMSResultFromIntent(Landroid/content/Intent;)Lcom/android/mms/transaction/TransactionManager$SmsResultData;

    move-result-object v2

    .line 886
    .local v2, "smsResult":Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v0

    .line 887
    .local v0, "checkin":Lcom/android/mms/checkin/CheckinLogger;
    if-eqz v0, :cond_9

    .line 888
    iget v4, v2, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v5, v2, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v0, p0, v7, v4, v5}, Lcom/android/mms/checkin/CheckinLogger;->logAddSmsFailedItem(Landroid/content/Context;III)V

    .line 891
    :cond_9
    invoke-direct {p0, v3, p2}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;I)V

    .line 892
    if-eqz v1, :cond_3

    .line 894
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    goto :goto_0
.end method

.method private handleSmsSent(Landroid/net/Uri;IIIII)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "destsSetId"    # I
    .param p3, "resultCode"    # I
    .param p4, "recErrorCode"    # I
    .param p5, "noOfSegments"    # I
    .param p6, "noOfDestinations"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 455
    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "SmsReceiverService"

    const-string v3, "handleSmsSent (error code enabled)"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    if-ne p5, v0, :cond_4

    if-ne p6, v0, :cond_4

    .line 460
    const/4 v2, -0x1

    if-ne p3, v2, :cond_2

    .line 461
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS-STATUS - SMS successfully sent, uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/android/mms/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 465
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(J)V

    .line 466
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 467
    invoke-static {p1}, Lcom/android/mms/transaction/MOSmsManager;->deletePendingUsingSmsUri(Landroid/net/Uri;)V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    invoke-static {p1, v1}, Lcom/android/mms/transaction/MOSmsManager;->sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V

    .line 471
    const/16 v2, 0xff

    if-ne p3, v2, :cond_3

    :goto_1
    invoke-direct {p0, p0, p1, v0, p4}, Lcom/android/mms/transaction/SmsReceiverService;->displayErrorCodeOne(Landroid/content/Context;Landroid/net/Uri;ZI)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    move v5, p5

    move v6, p6

    .line 475
    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/SmsReceiverService;->updateAllTheDestinations(Landroid/net/Uri;IIIII)Z

    move-result v7

    .line 477
    .local v7, "isComplete":Z
    if-eqz v7, :cond_1

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendCompleted(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method private hasSmsEmailFormat(Landroid/telephony/SmsMessage;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1456
    .line 1458
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 1459
    if-eqz v1, :cond_0

    .line 1460
    const-string v2, "[\\s#(/]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1461
    if-eqz v1, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1464
    const/4 v0, 0x1

    .line 1468
    :cond_0
    sget-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1469
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasSmsEmailFormat, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_1
    return v0
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "error"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    .line 1021
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 1023
    .local v0, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    .line 1024
    invoke-direct {p0, p1, v0, p4}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;Ljava/lang/String;)V

    .line 1025
    const/4 v1, 0x0

    .line 1029
    :goto_0
    return-object v1

    .line 1026
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1027
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1029
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private isSMSEmail(Landroid/telephony/SmsMessage;)Z
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1263
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1264
    const-string v3, "SmsReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSMSEmail, emailProtocolId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", originationAddress="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", SmsEmail enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSmsEmailEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", emailGatewayNumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1272
    if-nez v0, :cond_2

    .line 1304
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 1264
    goto :goto_0

    .line 1279
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3

    .line 1282
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1300
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 1301
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSMSEmail, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v2, v1

    .line 1304
    goto :goto_1

    .line 1289
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSmsEmailEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1294
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDynamic4DigitsEmailGatewayEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->couldBeEmailGateway(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->hasSmsEmailFormat(Landroid/telephony/SmsMessage;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method private messageFailedToSend(Landroid/net/Uri;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "error"    # I

    .prologue
    .line 900
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    :goto_0
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 904
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 905
    return-void

    .line 901
    :cond_0
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private moveOutboxMessagesToFailedBox()I
    .locals 6

    .prologue
    .line 985
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 987
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 988
    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 994
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 997
    :goto_0
    return v0

    .line 995
    :cond_0
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private moveOutboxMessagesToQueuedBox()I
    .locals 6

    .prologue
    .line 967
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 969
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 974
    const-string v1, "Mms:transaction"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    :goto_0
    return v0

    .line 975
    :cond_0
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveOutboxMessagesToQueuedBox messageCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 1202
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1203
    iget-boolean v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsRegisteredForService:Z

    if-eqz v1, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1206
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsRegisteredForService:Z

    .line 1208
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1209
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1210
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1214
    :goto_1
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 1211
    :cond_1
    const-string v2, "SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1086
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1043
    aget-object v0, p2, v8

    .line 1044
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v7

    .line 1045
    const-string v1, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1046
    array-length v1, p2

    .line 1048
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1049
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    .line 1050
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    .line 1051
    const-string v4, "address = ? AND protocol = ?"

    .line 1054
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    aput-object v2, v5, v8

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1058
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1061
    if-eqz v6, :cond_2

    .line 1063
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1065
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1068
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v3, v7

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1070
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/checkin/CheckinLogger;->logAddSmsReceivedActionItem(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1081
    :goto_0
    return-object v2

    .line 1078
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1081
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1092
    aget-object v0, p2, v1

    .line 1095
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1096
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1097
    array-length v0, p2

    .line 1101
    const-string v0, "thread_id"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1102
    const-string v0, "address"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1118
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    .line 1119
    if-eqz v4, :cond_0

    .line 1120
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_0
    :goto_0
    invoke-static {p1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->createThreadIdAndInsert(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/Long;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1128
    const-string v2, "THREAD_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1129
    const-string v3, "URI"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1131
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1132
    invoke-static {}, Lcom/android/mms/checkin/CheckinLogger;->getInstance()Lcom/android/mms/checkin/CheckinLogger;

    move-result-object v4

    .line 1133
    if-eqz v4, :cond_1

    .line 1134
    if-nez v0, :cond_3

    move v0, v1

    .line 1135
    :goto_1
    const/4 v5, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isEmail()Z

    move-result v1

    invoke-virtual {v4, p1, v5, v1, v0}, Lcom/android/mms/checkin/CheckinLogger;->logAddSmsReceivedItem(Landroid/content/Context;IZI)V

    .line 1139
    :cond_1
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 1140
    invoke-static {p1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1142
    return-object v3

    .line 1123
    :cond_2
    const v0, 0x7f0a00ee

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1124
    const-string v4, "address"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1134
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1
.end method

.method private static translateResultCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "resultCode"    # I

    .prologue
    .line 277
    sparse-switch p0, :sswitch_data_0

    .line 295
    const-string v0, "Unknown error code"

    :goto_0
    return-object v0

    .line 279
    :sswitch_0
    const-string v0, "Activity.RESULT_OK"

    goto :goto_0

    .line 281
    :sswitch_1
    const-string v0, "SmsManager.RESULT_ERROR_GENERIC_FAILURE"

    goto :goto_0

    .line 283
    :sswitch_2
    const-string v0, "SmsManager.RESULT_ERROR_RADIO_OFF"

    goto :goto_0

    .line 285
    :sswitch_3
    const-string v0, "SmsManager.RESULT_ERROR_NULL_PDU"

    goto :goto_0

    .line 287
    :sswitch_4
    const-string v0, "SmsManager.RESULT_ERROR_NO_SERVICE"

    goto :goto_0

    .line 289
    :sswitch_5
    const-string v0, "SmsManager.RESULT_ERROR_LIMIT_EXCEEDED"

    goto :goto_0

    .line 291
    :sswitch_6
    const-string v0, "SmsManager.RESULT_ERROR_FDN_CHECK_FAILURE"

    goto :goto_0

    .line 293
    :sswitch_7
    const-string v0, "SmsManager.RESULT_ERROR_TEMPORARY_FAILURE"

    goto :goto_0

    .line 277
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 2

    .prologue
    .line 1218
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1223
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mIsRegisteredForService:Z

    .line 1228
    return-void

    .line 1219
    :cond_0
    const-string v0, "SmsReceiverService"

    const-string v1, "unRegisterForServiceStateChanges"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    .line 247
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mManager:Lcom/android/mms/transaction/TransactionManager;

    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionManager;->getMOSmsManager()Lcom/android/mms/transaction/MOSmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    .line 251
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 252
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 254
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 255
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 256
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 306
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    if-eqz p1, :cond_0

    const-string v2, "result"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 264
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eqz v1, :cond_1

    .line 265
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mResultCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 271
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    const/4 v1, 0x2

    return v1
.end method

.method public declared-synchronized sendFirstQueuedMessage(J)V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 761
    monitor-enter p0

    :try_start_0
    const-string v0, "SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS-STATUS sendFirstQueuedMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/android/mms/transaction/TransactionManager;->getInstance()Lcom/android/mms/transaction/TransactionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/TransactionManager;->getNetworkManager()Lcom/android/mms/transaction/NetworkManager;

    move-result-object v0

    .line 765
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/transaction/NetworkManager;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    const-string v0, "SmsReceiverService"

    const-string v1, "SMS-STATUS - Resend of queued SMSs not performed (airplane mode)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 771
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2

    .line 772
    :try_start_1
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$Retry;

    invoke-direct {v0}, Lcom/android/mms/transaction/SmsReceiverService$Retry;-><init>()V

    .line 773
    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p1

    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/mms/transaction/RetryScheduler;->setSmsRetryAlarm(Landroid/net/Uri;ZLcom/android/mms/transaction/SmsReceiverService$Retry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 777
    :cond_2
    :try_start_2
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 778
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 779
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 783
    if-eqz v11, :cond_6

    .line 785
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 786
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 787
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 789
    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 790
    const/4 v0, 0x5

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 792
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 793
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 795
    new-instance v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    int-to-long v4, v12

    const/16 v6, 0x20

    if-ne v1, v6, :cond_4

    move v6, v9

    :goto_1
    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;I)V

    .line 799
    const-string v1, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 802
    const-string v1, "SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendFirstQueuedMessage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 808
    :cond_3
    const-wide/16 v1, -0x1

    :try_start_4
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v0, v9

    .line 825
    :goto_2
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 828
    :goto_3
    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_4
    move v6, v10

    .line 795
    goto :goto_1

    .line 810
    :catch_0
    move-exception v0

    .line 811
    :try_start_6
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 814
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;I)V

    .line 818
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v0, v10

    goto :goto_2

    .line 825
    :catchall_1
    move-exception v0

    :try_start_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    move v0, v9

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_3
.end method

.method public updateAllTheDestinations(Landroid/net/Uri;IIIII)Z
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultCode"    # I
    .param p3, "errorCode"    # I
    .param p4, "destsSetId"    # I
    .param p5, "noOfSegments"    # I
    .param p6, "noOfDestinations"    # I

    .prologue
    .line 635
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 636
    const-string v3, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAllTheDestinations, uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", destsSetId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", resultCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", errorCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 644
    .local v12, "msgId":I
    const/4 v10, 0x0

    .line 645
    .local v10, "complete":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 646
    .local v4, "r":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 647
    .local v13, "oneSeg":Z
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_1

    .line 648
    const/4 v13, 0x1

    .line 651
    :cond_1
    move/from16 v0, p4

    invoke-static {v12, v0, v13}, Lcom/android/mms/transaction/MOSmsManager;->updateSegmentInPendingTable(IIZ)I

    move-result v14

    .line 652
    .local v14, "pendingTableId":I
    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v3, v1, v2}, Lcom/android/mms/transaction/SmsReceiverService;->getTotalOccurances(Landroid/net/Uri;II)I

    move-result v16

    .line 654
    .local v16, "totalOccurances":I
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 655
    const-string v3, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAllTheDestinations, pending Table Id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", totalOccurances="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_2
    const/4 v3, -0x1

    if-ne v14, v3, :cond_6

    .line 661
    add-int/lit8 v3, p6, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    if-eqz v13, :cond_3

    .line 662
    const/4 v10, 0x1

    .line 665
    :cond_3
    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    move/from16 v0, p4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v3, v12, v0, v1, v2}, Lcom/android/mms/transaction/MOSmsManager;->insertPendingTable(Landroid/net/Uri;IIII)V

    .line 691
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_5

    .line 692
    const-string v3, "SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAllTheDestinations, complete="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_5
    return v10

    .line 668
    :cond_6
    sget-object v3, Lcom/android/mms/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v6, v14

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 669
    .local v5, "msgUri":Landroid/net/Uri;
    sget-object v6, Lcom/android/mms/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 672
    .local v11, "msgCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 674
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 675
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 676
    .local v15, "segs":I
    move/from16 v0, v16

    move/from16 v1, p6

    if-ne v0, v1, :cond_7

    .line 677
    const/4 v10, 0x1

    .line 680
    :cond_7
    if-nez v13, :cond_9

    move/from16 v0, p5

    if-gt v15, v0, :cond_9

    const/16 v17, 0x1

    .line 681
    .local v17, "updateSegment":Z
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v5, v0, v15, v1, v2}, Lcom/android/mms/transaction/MOSmsManager;->updatePendingTable(Landroid/net/Uri;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .end local v15    # "segs":I
    .end local v17    # "updateSegment":Z
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 680
    .restart local v15    # "segs":I
    :cond_9
    const/16 v17, 0x0

    goto :goto_1

    .line 686
    .end local v15    # "segs":I
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
.end method
