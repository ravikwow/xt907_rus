.class public Lcom/android/mms/transaction/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOG:Z

.field protected static mContext:Landroid/content/Context;

.field private static mDownloadManager:Lcom/android/mms/util/DownloadManager;

.field private static mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

.field private static mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

.field protected static mResolver:Landroid/content/ContentResolver;

.field protected static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static sInstance:Lcom/android/mms/transaction/TransactionManager;


# instance fields
.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-string v0, "Mms:transaction"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    .line 48
    sput-object v2, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    .line 49
    sput-object v2, Lcom/android/mms/transaction/TransactionManager;->mResolver:Landroid/content/ContentResolver;

    .line 50
    sput-object v2, Lcom/android/mms/transaction/TransactionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionManager;->mServiceHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public static getInstance()Lcom/android/mms/transaction/TransactionManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->sInstance:Lcom/android/mms/transaction/TransactionManager;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/mms/transaction/TransactionManager;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionManager;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->sInstance:Lcom/android/mms/transaction/TransactionManager;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->sInstance:Lcom/android/mms/transaction/TransactionManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "TransactionManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    sput-object p0, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->mResolver:Landroid/content/ContentResolver;

    .line 77
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 80
    return-void
.end method

.method public static wakeUpService(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 103
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - START"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    sget-object v1, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 109
    sget-object v1, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 110
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - END"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    return-void
.end method

.method public static wakeUpServiceWithIntentData(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - START"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 121
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/mms/ui/MessageUtils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 123
    const-string v0, "TransactionManager"

    const-string v1, "wakeup TransactionService - END"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public createNotificationTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)Lcom/android/mms/transaction/NotificationTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "ind"    # Lcom/google/android/mms/pdu/NotificationInd;

    .prologue
    .line 220
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    return-object v0
.end method

.method public createNotificationTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)Lcom/android/mms/transaction/NotificationTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 213
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public createNotificationTransaction(Lcom/android/mms/transaction/NotificationTransaction;)Lcom/android/mms/transaction/NotificationTransaction;
    .locals 1
    .param p1, "transaction"    # Lcom/android/mms/transaction/NotificationTransaction;

    .prologue
    .line 226
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {v0, p1}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Lcom/android/mms/transaction/NotificationTransaction;)V

    return-object v0
.end method

.method public createRetrieveTransaction(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)Lcom/android/mms/transaction/RetrieveTransaction;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceId"    # I
    .param p3, "connectionSettings"    # Lcom/android/mms/transaction/TransactionSettings;
    .param p4, "uriString"    # Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRetrieveTransaction(Lcom/android/mms/transaction/RetrieveTransaction;)Lcom/android/mms/transaction/RetrieveTransaction;
    .locals 1
    .param p1, "transaction"    # Lcom/android/mms/transaction/RetrieveTransaction;

    .prologue
    .line 238
    new-instance v0, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-direct {v0, p1}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Lcom/android/mms/transaction/RetrieveTransaction;)V

    return-object v0
.end method

.method public createTransaction(Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;
    .locals 1
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 243
    instance-of v0, p1, Lcom/android/mms/transaction/SendTransaction;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Lcom/android/mms/transaction/SendTransaction;

    check-cast p1, Lcom/android/mms/transaction/SendTransaction;

    .end local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {v0, p1}, Lcom/android/mms/transaction/SendTransaction;-><init>(Lcom/android/mms/transaction/SendTransaction;)V

    .line 253
    :goto_0
    return-object v0

    .line 245
    .restart local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_0
    instance-of v0, p1, Lcom/android/mms/transaction/NotificationTransaction;

    if-eqz v0, :cond_1

    .line 246
    check-cast p1, Lcom/android/mms/transaction/NotificationTransaction;

    .end local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionManager;->createNotificationTransaction(Lcom/android/mms/transaction/NotificationTransaction;)Lcom/android/mms/transaction/NotificationTransaction;

    move-result-object v0

    goto :goto_0

    .line 247
    .restart local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_1
    instance-of v0, p1, Lcom/android/mms/transaction/RetrieveTransaction;

    if-eqz v0, :cond_2

    .line 248
    check-cast p1, Lcom/android/mms/transaction/RetrieveTransaction;

    .end local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/TransactionManager;->createRetrieveTransaction(Lcom/android/mms/transaction/RetrieveTransaction;)Lcom/android/mms/transaction/RetrieveTransaction;

    move-result-object v0

    goto :goto_0

    .line 249
    .restart local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_2
    instance-of v0, p1, Lcom/android/mms/transaction/ReadRecTransaction;

    if-eqz v0, :cond_3

    .line 250
    new-instance v0, Lcom/android/mms/transaction/ReadRecTransaction;

    check-cast p1, Lcom/android/mms/transaction/ReadRecTransaction;

    .end local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    invoke-direct {v0, p1}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Lcom/android/mms/transaction/ReadRecTransaction;)V

    goto :goto_0

    .line 253
    .restart local p1    # "transaction":Lcom/android/mms/transaction/Transaction;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadManager()Lcom/android/mms/util/DownloadManager;
    .locals 2

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/mms/transaction/TransactionManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "TransactionManager"

    const-string v1, "getDownloadManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    .line 190
    :cond_1
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mDownloadManager:Lcom/android/mms/util/DownloadManager;

    return-object v0
.end method

.method public getHttpUtils(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/HttpUtils;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 202
    new-instance v0, Lcom/android/mms/transaction/HttpUtils;

    invoke-direct {v0, p1, p2}, Lcom/android/mms/transaction/HttpUtils;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;)V

    return-object v0
.end method

.method public getMOSmsManager()Lcom/android/mms/transaction/MOSmsManager;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/mms/transaction/MOSmsManager;

    invoke-direct {v0}, Lcom/android/mms/transaction/MOSmsManager;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    .line 198
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mMOSmsManager:Lcom/android/mms/transaction/MOSmsManager;

    return-object v0
.end method

.method public getNetworkManager()Lcom/android/mms/transaction/NetworkManager;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/mms/transaction/NetworkManager;

    invoke-direct {v0}, Lcom/android/mms/transaction/NetworkManager;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/TransactionManager;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    .line 178
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/TransactionManager;->mNetworkManager:Lcom/android/mms/transaction/NetworkManager;

    return-object v0
.end method

.method public getSMSResultFromIntent(Landroid/content/Intent;)Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 257
    new-instance v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;

    invoke-direct {v0}, Lcom/android/mms/transaction/TransactionManager$SmsResultData;-><init>()V

    .line 260
    .local v0, "result":Lcom/android/mms/transaction/TransactionManager$SmsResultData;
    const-string v1, "result"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->resultCode:I

    .line 261
    const-string v1, "errorCode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->errorCode:I

    .line 266
    const-string v1, "destinations_set_id"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->destsSetId:I

    .line 267
    const-string v1, "max_parts"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfSegments:I

    .line 268
    const-string v1, "max_destinations"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/mms/transaction/TransactionManager$SmsResultData;->noOfDestinations:I

    .line 269
    return-object v0
.end method

.method public onRetrieveStatus(I)I
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 292
    return p1
.end method

.method public onSentStatus(I)I
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 288
    return p1
.end method

.method public onTransactionProcess(Lcom/android/mms/transaction/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/android/mms/transaction/Transaction;

    .prologue
    .line 285
    return-void
.end method

.method public setServiceHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "serviceHandler"    # Landroid/os/Handler;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionManager;->mServiceHandler:Landroid/os/Handler;

    .line 274
    return-void
.end method
