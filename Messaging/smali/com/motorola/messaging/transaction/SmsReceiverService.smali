.class public Lcom/motorola/messaging/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;,
        Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final IS_DUPLICATE_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_LOG:Z

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;

.field private static final SEND_PROJECTION:[Ljava/lang/String;


# instance fields
.field public mHdmiToastHandler:Landroid/os/Handler;

.field private mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

.field private mManager:Lcom/motorola/messaging/transaction/TransactionManager;

.field private mServiceHandler:Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    sput-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->DEBUG:Z

    .line 81
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    .line 178
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    sput-object v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 826
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "address"

    aput-object v3, v0, v1

    const-string v3, "protocol"

    aput-object v3, v0, v4

    sput-object v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    .line 990
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "address"

    aput-object v2, v0, v1

    const-string v1, "date_sent"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->IS_DUPLICATE_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 182
    new-instance v0, Lcom/motorola/messaging/transaction/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/SmsReceiverService$1;-><init>(Lcom/motorola/messaging/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Lcom/motorola/messaging/transaction/SmsReceiverService$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/transaction/SmsReceiverService$2;-><init>(Lcom/motorola/messaging/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mHdmiToastHandler:Landroid/os/Handler;

    .line 277
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/messaging/transaction/SmsReceiverService;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/SmsReceiverService;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleResend(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/transaction/SmsReceiverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private couldBeEmailGateway(Ljava/lang/String;)Z
    .locals 2
    .param p1, "smsOrigAddress"    # Ljava/lang/String;

    .prologue
    .line 1165
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
    .line 1102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/messaging/activity/ClassZeroActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pdu"

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1107
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1108
    return-void
.end method

.method private displayErrorCodeMultiple(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dests"    # Ljava/lang/String;
    .param p3, "destsSetId"    # I
    .param p4, "uri"    # Landroid/net/Uri;

    .prologue
    .line 780
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "SmsReceiverService"

    const-string v1, "displayErrorCodeMultiple"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_0
    invoke-static {p2, p3, p1}, Lcom/motorola/messaging/activity/SMSRetryActivity;->initRetryMultiple(Ljava/lang/String;ILandroid/content/Context;)V

    .line 785
    return-void
.end method

.method private displayErrorCodeOne(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "retry"    # Z
    .param p4, "errorCode"    # I

    .prologue
    .line 768
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 769
    const-string v1, "SmsReceiverService"

    const-string v2, "displayErrorCodeOne"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_0
    invoke-static {p2, p4, p3, p1}, Lcom/motorola/messaging/activity/SMSRetryActivity;->initRetrySingle(Landroid/net/Uri;IZLandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 773
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 774
    .local v0, "msg":Landroid/os/Message;
    const v1, 0x7f0b00f8

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 777
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private extractAddressAndSubject(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 1279
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->isSMSEmail(Landroid/telephony/SmsMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractAddressAndSubjectForSMSEmail(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V

    .line 1286
    :goto_0
    return-void

    .line 1284
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

    .line 1239
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1243
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    .line 1244
    const-string v1, ""

    .line 1245
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1247
    if-eqz v2, :cond_2

    .line 1253
    const-string v3, "[\\s#(/]"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 1255
    if-eqz v3, :cond_2

    .line 1256
    aget-object v0, v3, v5

    .line 1257
    aget-object v1, v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1258
    invoke-direct {p0, v1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractSubjectFromBodyForSMSEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1261
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1262
    const-string v2, "subject"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    :cond_3
    invoke-static {v0}, Lcom/motorola/messaging/contact/ContactUtils;->formatEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1267
    const-string v1, "address"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private extractBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p1, "msgs"    # [Landroid/telephony/SmsMessage;

    .prologue
    .line 960
    array-length v2, p1

    .line 962
    .local v2, "pduCount":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v0, "body":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 965
    .local v3, "sms":Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 966
    aget-object v3, p1, v1

    .line 967
    if-nez v3, :cond_0

    .line 965
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 978
    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->isSMSEmail(Landroid/telephony/SmsMessage;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 979
    invoke-direct {p0, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractBodyForSMSEmail(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 982
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 986
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private extractBodyForSMSEmail(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 1289
    if-nez p1, :cond_1

    .line 1290
    const-string v0, ""

    .line 1321
    :cond_0
    :goto_0
    return-object v0

    .line 1293
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 1295
    if-eqz v0, :cond_2

    .line 1296
    const-string v1, "[\\s#(/]"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1298
    if-eqz v1, :cond_2

    .line 1299
    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->getSubjectToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1301
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1304
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1305
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 1308
    :goto_1
    if-eq v1, v2, :cond_2

    .line 1310
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1317
    :cond_2
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 1318
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

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1061
    aget-object v2, p1, v1

    .line 1064
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1066
    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractAddressAndSubject(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V

    .line 1067
    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    const-string v4, "subject"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    if-eqz v4, :cond_0

    .line 1074
    invoke-static {v4}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1075
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    :cond_0
    const-string v4, "body"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1081
    const-string v0, "date_sent"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1082
    const-string v0, "protocol"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    const-string v0, "read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    const-string v0, "seen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    const-string v4, "reply_path_present"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string v0, "service_center"

    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v0, "callback_number"

    invoke-static {v2}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->getCallbackNumberAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string v0, "priority"

    invoke-static {v2}, Lcom/motorola/messaging/frameworkadapter/motorola/SmsMessageExtension;->getPriority(Landroid/telephony/SmsMessage;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    return-object v3

    :cond_1
    move v0, v1

    .line 1085
    goto :goto_0
.end method

.method private extractSubjectFromBodyForSMSEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1213
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->getSubjectToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1214
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1217
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1219
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const/4 v0, 0x1

    .line 1222
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1223
    const-string v3, "##"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1224
    const/4 v0, 0x2

    .line 1227
    :cond_0
    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1228
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

    .line 1235
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayOriginatingAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1196
    invoke-direct {p0, p1, v0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractAddressAndSubject(Landroid/telephony/SmsMessage;Landroid/content/ContentValues;)V

    .line 1197
    const-string v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubjectToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1203
    const-string v0, "^\\s*##((.*?))#|^\\s*\\((.*?)\\)"

    .line 1204
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailSubjectWithSlashEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|^\\s*\\/((.*?))\\/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1208
    :cond_0
    return-object v0
.end method

.method private getTotalOccurances(Landroid/net/Uri;II)I
    .locals 16
    .param p1, "msgPendingUri"    # Landroid/net/Uri;
    .param p2, "destsSetId"    # I
    .param p3, "noOfSegments"    # I

    .prologue
    .line 666
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

    .line 668
    .local v5, "where":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 671
    .local v13, "cidCursor":Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 673
    .local v15, "totalOccurances":I
    if-eqz v13, :cond_0

    .line 674
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v15, v1

    .line 675
    invoke-static {v13}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 676
    const/4 v13, 0x0

    .line 679
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

    .line 681
    .local v10, "where1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-static/range {v6 .. v12}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 684
    .local v14, "cidCursor1":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 685
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v15, v1

    .line 686
    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 687
    const/4 v14, 0x0

    .line 690
    :cond_1
    return v15
.end method

.method private handleBootCompleted()V
    .locals 0

    .prologue
    .line 820
    invoke-static {}, Lcom/motorola/messaging/transaction/MOSmsManager;->treatPowerUp()V

    .line 821
    return-void
.end method

.method private handleHdmiSmsReceived(Ljava/lang/String;)V
    .locals 4
    .param p1, "fromAddress"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 754
    invoke-static {p0}, Lcom/motorola/messaging/util/MessageUtils;->isHdmiOn(Landroid/content/Context;)Z

    move-result v2

    if-ne v2, v3, :cond_0

    .line 756
    iget-object v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mHdmiToastHandler:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 757
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 758
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {p1, v3}, Lcom/motorola/messaging/contact/Contact;->get(Ljava/lang/String;Z)Lcom/motorola/messaging/contact/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/messaging/contact/Contact;->getName()Ljava/lang/String;

    move-result-object p1

    .line 759
    const-string v2, "fromAddress"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 761
    iget-object v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mHdmiToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 763
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private handleResend(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 789
    .local v0, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;

    invoke-direct {v2, v0}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;-><init>(Landroid/os/Bundle;)V

    .line 790
    .local v2, "smsRetry":Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getRetryType()I

    move-result v1

    .line 791
    .local v1, "retryType":I
    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 793
    .local v3, "uri":Landroid/net/Uri;
    sget-boolean v4, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v4, :cond_0

    .line 794
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

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_0
    invoke-static {v3}, Lcom/motorola/messaging/transaction/RetryScheduler;->removeSmsRetryAlarm(Landroid/net/Uri;)V

    .line 800
    packed-switch v1, :pswitch_data_0

    .line 814
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

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_0
    return-void

    .line 802
    :pswitch_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    goto :goto_0

    .line 806
    :pswitch_1
    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getRetryCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getPendingId()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/motorola/messaging/transaction/MOSmsManager;->retrySms(Landroid/net/Uri;II)V

    goto :goto_0

    .line 810
    :pswitch_2
    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getDestsCommonId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/motorola/messaging/transaction/MOSmsManager;->retryMultipleSms(Ljava/util/List;I)V

    goto :goto_0

    .line 800
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
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

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

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 489
    .local v4, "context":Landroid/content/Context;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .local v21, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    sget-object v7, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 493
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 597
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

    .line 586
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 502
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_e

    .line 503
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 504
    .local v16, "id":I
    const/4 v5, 0x6

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 506
    .local v13, "destsSetIdStored":I
    move/from16 v0, p2

    if-ne v13, v0, :cond_7

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
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

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

    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/transaction/MOSmsManager;->pErrorCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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
    invoke-static/range {v17 .. v17}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 527
    :cond_5
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

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

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_6
    if-nez v23, :cond_8

    .line 532
    invoke-static/range {v18 .. v18}, Lcom/motorola/messaging/transaction/MOSmsManager;->finishSmsSent(I)V

    .line 583
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

    .line 586
    .end local v13    # "destsSetIdStored":I
    .end local v16    # "id":I
    :catchall_0
    move-exception v5

    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v5

    .line 534
    .restart local v9    # "where":Ljava/lang/String;
    .restart local v13    # "destsSetIdStored":I
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

    .line 535
    .local v22, "smsUri":Landroid/net/Uri;
    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/transaction/MOSmsManager;->isNoError(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 536
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_9

    .line 537
    const-string v5, "SmsReceiverService"

    const-string v6, "handleSendCompleted success"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v0, v6, v7, v8}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 542
    invoke-static/range {p0 .. p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 543
    invoke-static/range {v18 .. v18}, Lcom/motorola/messaging/transaction/MOSmsManager;->finishSmsSent(I)V

    goto :goto_2

    .line 546
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/transaction/MOSmsManager;->getErrorCodeFromPendingError(I)I

    move-result v14

    .line 547
    .local v14, "errorCode":I
    invoke-static/range {v19 .. v19}, Lcom/motorola/messaging/transaction/MOSmsManager;->getResultCodeFromPendingError(I)I

    move-result v20

    .line 549
    .local v20, "resultCode":I
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_b

    .line 550
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

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_b
    new-instance v15, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v5, 0x2

    const-string v6, "SMS_FAILED"

    invoke-direct {v15, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 556
    .local v15, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v5, "resultCode"

    move/from16 v0, v20

    invoke-virtual {v15, v5, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 557
    const-string v5, "errorCode"

    invoke-virtual {v15, v5, v14}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 558
    invoke-virtual {v15}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 561
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v6, 0x5

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v5, v0, v6, v1, v14}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 563
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 565
    const-wide/16 v5, 0x2710

    invoke-static {v5, v6}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 567
    sget v5, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    move/from16 v0, v20

    if-ne v0, v5, :cond_d

    .line 569
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_c

    .line 570
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

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_c
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const-string v5, ";"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 578
    :cond_d
    invoke-static/range {v18 .. v18}, Lcom/motorola/messaging/transaction/MOSmsManager;->finishSmsSent(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 586
    .end local v9    # "where":Ljava/lang/String;
    .end local v13    # "destsSetIdStored":I
    .end local v14    # "errorCode":I
    .end local v15    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v16    # "id":I
    .end local v17    # "msgIdPresentCursor":Landroid/database/Cursor;
    .end local v18    # "msgIdStored":I
    .end local v19    # "pErrorCode":I
    .end local v20    # "resultCode":I
    .end local v22    # "smsUri":Landroid/net/Uri;
    .end local v23    # "totalOccurances":I
    :cond_e
    invoke-static {v12}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 589
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 590
    .local v24, "uriSet":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_f

    .line 591
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->displayErrorCodeMultiple(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 594
    :cond_f
    sget-boolean v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v5, :cond_1

    .line 595
    const-string v5, "SmsReceiverService"

    const-string v6, "handleSendCompleted END"

    invoke-static {v5, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 335
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 336
    const-string v2, "state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 337
    sget-boolean v2, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 338
    const-string v2, "SmsReceiverService"

    const-string v3, "SMS-STATUS - IN_SERVICE received"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    const-wide/32 v2, 0xafc8

    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 353
    :cond_1
    :goto_0
    return-void

    .line 344
    :cond_2
    sget-boolean v2, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_3

    .line 345
    const-string v2, "SmsReceiverService"

    const-string v3, "SMS-STATUS - NOT_IN_SERVICE received"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_3
    new-instance v1, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;

    invoke-direct {v1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;-><init>()V

    .line 349
    .local v1, "retryFirst":Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;
    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/motorola/messaging/transaction/RetryScheduler;->cancelSmsRetryAlarm(Landroid/net/Uri;Lcom/motorola/messaging/transaction/SmsReceiverService$Retry;)V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    const/4 v9, 0x1

    .line 694
    sget-boolean v7, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v7, :cond_0

    .line 695
    const-string v7, "SmsReceiverService"

    const-string v8, "handleSmsReceived - START"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v7, p1}, Lcom/motorola/messaging/transaction/TransactionManager;->getSMSFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 700
    .local v4, "msgs":[Landroid/telephony/SmsMessage;
    const-string v7, "errorCode"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 701
    .local v1, "errorCode":I
    const-string v7, "format"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, "format":Ljava/lang/String;
    if-eq p2, v9, :cond_1

    array-length v7, v4

    if-ne v7, v9, :cond_3

    .line 710
    :cond_1
    invoke-direct {p0, p0, v4}, Lcom/motorola/messaging/transaction/SmsReceiverService;->isDuplicate(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 711
    const-string v7, "SmsReceiverService"

    const-string v8, "SMS-STATUS - Discard duplicate/invalid SMS"

    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    sget-boolean v7, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v7, :cond_2

    .line 746
    const-string v7, "SmsReceiverService"

    const-string v8, "handleSmsReceived() - END"

    :goto_0
    invoke-static {v7, v8}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :cond_2
    return-void

    .line 716
    :cond_3
    :try_start_1
    invoke-direct {p0, p0, v4, v1, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 718
    .local v3, "messageUri":Landroid/net/Uri;
    sget-boolean v7, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v7, :cond_4

    .line 719
    const/4 v7, 0x0

    aget-object v5, v4, v7

    .line 720
    .local v5, "sms":Landroid/telephony/SmsMessage;
    const-string v8, "SmsReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SMS-STATUS - SMS Received"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, " (replace)"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", messageUri: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", errorCode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", timestamp: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "kk:mm:ss"

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", address: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_4
    if-eqz v3, :cond_5

    .line 728
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/motorola/messaging/util/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 729
    invoke-static {v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->updateSmsStackType(Landroid/net/Uri;)V

    .line 732
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    .local v6, "theintent":Landroid/content/Intent;
    const-string v7, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v7, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v6, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 737
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.motorola.blur.messaging.SMS_RECEIVED_ACTION"

    invoke-direct {v0, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 738
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v7, "URI"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 739
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 741
    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-direct {p0, v7}, Lcom/motorola/messaging/transaction/SmsReceiverService;->getDisplayOriginatingAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleHdmiSmsReceived(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v6    # "theintent":Landroid/content/Intent;
    :cond_5
    sget-boolean v7, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v7, :cond_2

    .line 746
    const-string v7, "SmsReceiverService"

    const-string v8, "handleSmsReceived() - END"

    goto/16 :goto_0

    .line 720
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_6
    :try_start_2
    const-string v7, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 745
    .end local v1    # "errorCode":I
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "messageUri":Landroid/net/Uri;
    .end local v4    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catchall_0
    move-exception v7

    sget-boolean v8, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v8, :cond_7

    .line 746
    const-string v8, "SmsReceiverService"

    const-string v9, "handleSmsReceived() - END"

    invoke-static {v8, v9}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :cond_7
    throw v7
.end method

.method private handleSmsSent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 356
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 357
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

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 362
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v0, p1}, Lcom/motorola/messaging/transaction/TransactionManager;->getSMSResultFromIntent(Landroid/content/Intent;)Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;

    move-result-object v8

    .line 363
    .local v8, "smsResult":Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
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

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    invoke-static {v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->resultCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 369
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSmsSent, destsSetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->destsSetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number of segments="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number of destinations="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/motorola/messaging/util/MessageUtils;->isValidSmsUri(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 411
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    :goto_0
    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_2
    return-void

    .line 380
    :cond_3
    :try_start_1
    iget v0, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    if-eq v0, v4, :cond_4

    iget v0, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 382
    :cond_4
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - SMS queued to be sent later (no service), uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v2, 0x6

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v4, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    goto :goto_0

    .line 389
    :cond_5
    :try_start_2
    iget v0, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    sget v2, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_FDN_CHECK_FAILURE:I

    if-ne v0, v2, :cond_6

    .line 390
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - Fixed dial number error, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v2, 0x5

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v4, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 393
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 394
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 395
    new-instance v7, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v0, 0x2

    const-string v2, "SMS_FAILED"

    invoke-direct {v7, v0, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 396
    .local v7, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v0, "resultCode"

    iget v2, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    invoke-virtual {v7, v0, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 397
    const-string v0, "errorCode"

    iget v2, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-virtual {v7, v0, v2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v7}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 411
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    goto/16 :goto_0

    .line 403
    .end local v7    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    :cond_6
    :try_start_3
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsMmsErrorCodesEnable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 404
    iget v0, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v2, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    invoke-direct {p0, v1, v0, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsSent(Landroid/net/Uri;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 411
    :goto_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 412
    const-string v0, "SmsReceiverService"

    const-string v2, "handleSmsSent() - END"

    goto/16 :goto_0

    .line 407
    :cond_7
    :try_start_4
    iget v2, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->destsSetId:I

    iget v3, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->resultCode:I

    iget v4, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->errorCode:I

    iget v5, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    iget v6, v8, Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSmsSent(Landroid/net/Uri;IIIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 411
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "smsResult":Lcom/motorola/messaging/transaction/TransactionManager$SmsResultData;
    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_8

    .line 412
    const-string v2, "SmsReceiverService"

    const-string v3, "handleSmsSent() - END"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :cond_8
    throw v0
.end method

.method private handleSmsSent(Landroid/net/Uri;II)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resultCode"    # I
    .param p3, "errorCode"    # I

    .prologue
    const/4 v4, 0x2

    .line 418
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 419
    const-string v1, "SmsReceiverService"

    const-string v2, "handleSmsSent (error code disabled)"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 423
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - SMS successfully sent, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    invoke-virtual {v1, p1, v4, p2, p3}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 426
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 430
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 449
    :goto_0
    return-void

    .line 434
    :cond_1
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - SMS failed, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-instance v0, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const-string v1, "SMS_FAILED"

    invoke-direct {v0, v4, v1}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 438
    .local v0, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v1, "resultCode"

    invoke-virtual {v0, v1, p2}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 439
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p3}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 440
    invoke-virtual {v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 443
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 445
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/motorola/messaging/util/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 447
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

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
    sget-boolean v2, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v2, :cond_0

    .line 456
    const-string v2, "SmsReceiverService"

    const-string v3, "handleSmsSent (error code enabled)"

    invoke-static {v2, v3}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/motorola/messaging/transaction/MOSmsManager;->moveMessageToFolder(Landroid/net/Uri;III)V

    .line 465
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendFirstQueuedMessage(J)V

    .line 466
    invoke-static {p0}, Lcom/motorola/messaging/util/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 467
    invoke-static {p1}, Lcom/motorola/messaging/transaction/MOSmsManager;->deletePendingUsingSmsUri(Landroid/net/Uri;)V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    invoke-static {p1, v1}, Lcom/motorola/messaging/transaction/MOSmsManager;->sendSmsSendingStatusBroadcast(Landroid/net/Uri;Z)V

    .line 471
    sget v2, Lcom/motorola/messaging/frameworkadapter/motorola/SmsManagerExtension;->RESULT_ERROR_TEMPORARY_FAILURE:I

    if-ne p3, v2, :cond_3

    :goto_1
    invoke-direct {p0, p0, p1, v0, p4}, Lcom/motorola/messaging/transaction/SmsReceiverService;->displayErrorCodeOne(Landroid/content/Context;Landroid/net/Uri;ZI)V

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
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/messaging/transaction/SmsReceiverService;->updateAllTheDestinations(Landroid/net/Uri;IIIII)Z

    move-result v7

    .line 477
    .local v7, "isComplete":Z
    if-eqz v7, :cond_1

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->handleSendCompleted(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method private hasSmsEmailFormat(Landroid/telephony/SmsMessage;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1169
    .line 1171
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 1172
    if-eqz v1, :cond_0

    .line 1173
    const-string v2, "[\\s#(/]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1174
    if-eqz v1, :cond_0

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/motorola/messaging/contact/ContactUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1177
    const/4 v0, 0x1

    .line 1181
    :cond_0
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 1182
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

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    :cond_1
    return v0
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "error"    # I
    .param p4, "format"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 844
    const/4 v2, 0x0

    aget-object v0, p2, v2

    .line 846
    .local v0, "sms":Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    sget-object v3, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v2, v3, :cond_0

    .line 847
    invoke-direct {p0, p1, v0, p4}, Lcom/motorola/messaging/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;Ljava/lang/String;)V

    .line 863
    :goto_0
    return-object v1

    .line 849
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    sget-object v3, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v2, v3, :cond_1

    .line 855
    const/16 v2, 0x66

    invoke-static {p1, v2}, Lcom/motorola/messaging/util/MessagingNotification;->clearNotification(Landroid/content/Context;I)V

    .line 858
    invoke-static {p1}, Lcom/motorola/messaging/util/MessagingNotification;->notifyNewSimMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 860
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 861
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 863
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private isDuplicate(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1004
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1005
    const-string v0, "SmsReceiverService"

    const-string v1, "isDuplicate"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    aget-object v0, p2, v8

    .line 1009
    if-nez v0, :cond_1

    move v0, v7

    .line 1054
    :goto_0
    return v0

    .line 1013
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_3

    :cond_2
    move v0, v8

    .line 1016
    goto :goto_0

    .line 1019
    :cond_3
    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->getDisplayOriginatingAddress(Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    if-nez v1, :cond_4

    move v0, v8

    .line 1022
    goto :goto_0

    .line 1025
    :cond_4
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1026
    invoke-direct {p0, p2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractBody([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    sget-boolean v4, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v4, :cond_5

    .line 1029
    const-string v4, "SmsReceiverService"

    const-string v5, "Check if SMS is duplicate"

    invoke-static {v4, v5}, Lcom/motorola/messaging/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    :cond_5
    const-string v4, "address = ? AND date_sent = ? AND body = ?"

    .line 1036
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v1, v5, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const/4 v1, 0x2

    aput-object v0, v5, v1

    .line 1040
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/motorola/messaging/transaction/SmsReceiverService;->IS_DUPLICATE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1042
    if-eqz v1, :cond_7

    .line 1044
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1045
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1046
    const-string v0, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS-STATUS - Sms already stored with msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    move v0, v7

    .line 1047
    goto :goto_0

    .line 1050
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_6
    invoke-static {v1}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    :cond_7
    move v0, v8

    .line 1054
    goto/16 :goto_0
.end method

.method private isSMSEmail(Landroid/telephony/SmsMessage;)Z
    .locals 6

    .prologue
    const/16 v5, 0x32

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1111
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 1112
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

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", emailGatewayNumber="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    .line 1120
    if-nez v0, :cond_2

    .line 1153
    :goto_1
    return v2

    :cond_1
    move v0, v2

    .line 1112
    goto :goto_0

    .line 1127
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3

    .line 1130
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1134
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1149
    :cond_4
    :goto_2
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_5

    .line 1150
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

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move v2, v1

    .line 1153
    goto :goto_1

    .line 1137
    :cond_6
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->isSmsEmailEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getSmsEmailGatewayNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1143
    :cond_7
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getDynamic4DigitsEmailGatewayEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v0}, Lcom/motorola/messaging/transaction/SmsReceiverService;->couldBeEmailGateway(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->hasSmsEmailFormat(Landroid/telephony/SmsMessage;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgs"    # [Landroid/telephony/SmsMessage;
    .param p3, "error"    # I

    .prologue
    .line 877
    const/4 v2, 0x0

    aget-object v20, p2, v2

    .line 878
    .local v20, "sms":Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v11

    .line 880
    .local v11, "values":Landroid/content/ContentValues;
    const-string v2, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 883
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 884
    .local v18, "originatingAddress":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v19

    .line 885
    .local v19, "protocolIdentifier":I
    const-string v6, "address = ? AND protocol = ?"

    .line 888
    .local v6, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v18, v7, v2

    const/4 v2, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 892
    .local v7, "selectionArgs":[Ljava/lang/String;
    sget-object v4, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/motorola/messaging/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v8}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 895
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 897
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 898
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 899
    .local v16, "messageId":J
    sget-object v2, Lcom/motorola/messaging/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 902
    .local v10, "messageUri":Landroid/net/Uri;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object v9, v3

    invoke-static/range {v8 .. v13}, Lcom/motorola/messaging/provider/SqliteManager;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 906
    const-string v2, "sms"

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/motorola/messaging/composer/MessageItem;->clearCache(JLjava/lang/String;)V

    .line 908
    new-instance v15, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v2, 0x4

    const-string v4, "SMS_RECEIVED"

    invoke-direct {v15, v2, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 909
    .local v15, "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    const-string v2, "action"

    const-string v4, "replaceMsg"

    invoke-virtual {v15, v2, v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {v15}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 918
    .end local v10    # "messageUri":Landroid/net/Uri;
    .end local v15    # "event":Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;
    .end local v16    # "messageId":J
    :goto_0
    return-object v10

    .line 915
    :catchall_0
    move-exception v2

    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v2

    :cond_0
    invoke-static {v14}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    .line 918
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/motorola/messaging/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;

    move-result-object v10

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 922
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 923
    const-string v1, "SmsReceiverService"

    const-string v2, "storeMessage - START"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 929
    invoke-direct {p0, p2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->extractContentValues([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v2

    .line 930
    const-string v3, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    sget-object v3, Lcom/motorola/messaging/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v1, v3, v2}, Lcom/motorola/messaging/provider/SqliteManager;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 934
    aget-object v3, p2, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 935
    new-instance v4, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;

    const/4 v5, 0x4

    const-string v6, "SMS_RECEIVED"

    invoke-direct {v4, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;-><init>(ILjava/lang/String;)V

    .line 936
    const-string v5, "isEmail"

    aget-object v6, p2, v0

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->isEmail()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;Z)V

    .line 937
    const-string v5, "msgSize"

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v4, v5, v0}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->addField(Ljava/lang/String;I)V

    .line 938
    invoke-virtual {v4}, Lcom/motorola/messaging/frameworkadapter/motorola/CheckinLogger;->log()V

    .line 940
    if-nez v1, :cond_3

    .line 941
    const v0, 0x7f0b0118

    invoke-static {p1, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 949
    :goto_1
    sget-boolean v0, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 950
    const-string v0, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeMessage - END, uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :cond_1
    return-object v1

    .line 937
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 944
    :cond_3
    const-string v0, "address"

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/motorola/messaging/conversation/ConversationManager;->getOrCreateThreadId(ZLjava/lang/String;)J

    move-result-wide v2

    .line 945
    invoke-static {}, Lcom/motorola/messaging/provider/Recycler;->getInstance()Lcom/motorola/messaging/provider/Recycler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/motorola/messaging/provider/Recycler;->deleteOldMessagesByThread(Landroid/content/Context;J)V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 220
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "SmsReceiverService"

    const-string v2, "onCreate() - START"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    invoke-static {}, Lcom/motorola/messaging/transaction/TransactionManager;->getInstance()Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 225
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mManager:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v1}, Lcom/motorola/messaging/transaction/TransactionManager;->getMOSmsManager()Lcom/motorola/messaging/transaction/MOSmsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mMOSmsManager:Lcom/motorola/messaging/transaction/MOSmsManager;

    .line 230
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsReceiverService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 231
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 234
    new-instance v1, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/motorola/messaging/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceHandler:Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;

    .line 236
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 237
    const-string v1, "SmsReceiverService"

    const-string v2, "onCreate() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 270
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 243
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS-STATUS - start sms receiver service, app version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand() - START, startId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceHandler:Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 254
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 255
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 256
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/motorola/messaging/transaction/SmsReceiverService;->mServiceHandler:Lcom/motorola/messaging/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    sget-boolean v1, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v1, :cond_1

    .line 259
    const-string v1, "SmsReceiverService"

    const-string v2, "onStartCommand() - END"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    const/4 v1, 0x3

    return v1
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
    .line 601
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_0

    .line 602
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

    invoke-static {v3, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 610
    .local v12, "msgId":I
    const/4 v10, 0x0

    .line 611
    .local v10, "complete":Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 612
    .local v4, "r":Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 613
    .local v13, "oneSeg":Z
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_1

    .line 614
    const/4 v13, 0x1

    .line 617
    :cond_1
    move/from16 v0, p4

    invoke-static {v12, v0, v13}, Lcom/motorola/messaging/transaction/MOSmsManager;->updateSegmentInPendingTable(IIZ)I

    move-result v14

    .line 618
    .local v14, "pendingTableId":I
    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v3, v1, v2}, Lcom/motorola/messaging/transaction/SmsReceiverService;->getTotalOccurances(Landroid/net/Uri;II)I

    move-result v16

    .line 620
    .local v16, "totalOccurances":I
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_2

    .line 621
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

    invoke-static {v3, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_2
    const/4 v3, -0x1

    if-ne v14, v3, :cond_6

    .line 627
    add-int/lit8 v3, p6, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    if-eqz v13, :cond_3

    .line 628
    const/4 v10, 0x1

    .line 631
    :cond_3
    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    move/from16 v0, p4

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v3, v12, v0, v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->insertPendingTable(Landroid/net/Uri;IIII)V

    .line 657
    :cond_4
    :goto_0
    sget-boolean v3, Lcom/motorola/messaging/transaction/SmsReceiverService;->LOCAL_LOG:Z

    if-eqz v3, :cond_5

    .line 658
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

    invoke-static {v3, v6}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_5
    return v10

    .line 634
    :cond_6
    sget-object v3, Lcom/motorola/messaging/transaction/MOSmsManager;->MESSAGE_PENDING:Landroid/net/Uri;

    int-to-long v6, v14

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 635
    .local v5, "msgUri":Landroid/net/Uri;
    sget-object v6, Lcom/motorola/messaging/transaction/MOSmsManager;->PENDING_MSG_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lcom/motorola/messaging/provider/SqliteManager;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 638
    .local v11, "msgCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 640
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 641
    const/4 v3, 0x4

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 642
    .local v15, "segs":I
    move/from16 v0, v16

    move/from16 v1, p6

    if-ne v0, v1, :cond_7

    .line 643
    const/4 v10, 0x1

    .line 646
    :cond_7
    if-nez v13, :cond_9

    move/from16 v0, p5

    if-gt v15, v0, :cond_9

    const/16 v17, 0x1

    .line 647
    .local v17, "updateSegment":Z
    :goto_1
    move/from16 v0, v17

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v5, v0, v15, v1, v2}, Lcom/motorola/messaging/transaction/MOSmsManager;->updatePendingTable(Landroid/net/Uri;ZIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    .end local v15    # "segs":I
    .end local v17    # "updateSegment":Z
    :cond_8
    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 646
    .restart local v15    # "segs":I
    :cond_9
    const/16 v17, 0x0

    goto :goto_1

    .line 652
    .end local v15    # "segs":I
    :catchall_0
    move-exception v3

    invoke-static {v11}, Lcom/motorola/messaging/provider/SqliteManager;->closeCursor(Landroid/database/Cursor;)V

    throw v3
.end method
