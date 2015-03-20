.class public Lcom/motorola/messaging/transaction/UTManager;
.super Lcom/motorola/messaging/transaction/TransactionManager;
.source "UTManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/transaction/UTManager$1;,
        Lcom/motorola/messaging/transaction/UTManager$UTpersist;,
        Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend;,
        Lcom/motorola/messaging/transaction/UTManager$SMSMTManager;,
        Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;,
        Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;,
        Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryMultipleFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSLongDownload;,
        Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError;,
        Lcom/motorola/messaging/transaction/UTManager$MMSAutomaticDownloadAckError;,
        Lcom/motorola/messaging/transaction/UTManager$MMSNetworkNoService;,
        Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable;,
        Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;,
        Lcom/motorola/messaging/transaction/UTManager$MMSApnError;,
        Lcom/motorola/messaging/transaction/UTManager$MMSDownloadPermamentFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSSendPermamentFailure;,
        Lcom/motorola/messaging/transaction/UTManager$MMSCall2;,
        Lcom/motorola/messaging/transaction/UTManager$MMSCall1;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final LOCAL_LOG:Z

.field private static mOldUTnumber:I

.field private static mTestExecution:I

.field private static mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

.field private static mUTNumber:I

.field private static mUTStep:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager;->DEBUG:Z

    .line 56
    sget-boolean v2, Lcom/motorola/messaging/transaction/UTManager;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/transaction/UTManager;->LOCAL_LOG:Z

    .line 64
    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mTestExecution:I

    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/motorola/messaging/transaction/TransactionManager;-><init>()V

    .line 1413
    return-void
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    return v0
.end method

.method static synthetic access$2308()I
    .locals 2

    .prologue
    .line 53
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    return v0
.end method

.method public static getInstance()Lcom/motorola/messaging/transaction/TransactionManager;
    .locals 3

    .prologue
    .line 101
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "UTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, MSG-UT, UT number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UT execution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/messaging/transaction/UTManager;->mTestExecution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UT step="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    sget-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    if-nez v0, :cond_1

    .line 110
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0x32

    if-gt v0, v1, :cond_3

    .line 111
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$SMSMTManager;

    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$SMSMTManager;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 127
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_2

    .line 128
    const-string v0, "UTManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, OUT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    sget-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    return-object v0

    .line 114
    :cond_3
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0x33

    if-lt v0, v1, :cond_4

    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    .line 115
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;

    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$SMSMOManager;-><init>(I)V

    sput-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    goto :goto_0

    .line 118
    :cond_4
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0x65

    if-lt v0, v1, :cond_5

    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_5

    .line 119
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-static {v0}, Lcom/motorola/messaging/transaction/UTManager;->runMMSTestSuite(I)Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    goto :goto_0

    .line 122
    :cond_5
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0xc9

    if-lt v0, v1, :cond_1

    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_1

    .line 123
    sget v0, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-static {v0}, Lcom/motorola/messaging/transaction/UTManager;->runGenericTestSuite(I)Lcom/motorola/messaging/transaction/TransactionManager;

    move-result-object v0

    sput-object v0, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/telephony/TelephonyManager;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 67
    sget-boolean v1, Lcom/motorola/messaging/transaction/UTManager;->LOCAL_LOG:Z

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "UTManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    sput-object p0, Lcom/motorola/messaging/transaction/UTManager;->mContext:Landroid/content/Context;

    .line 72
    sput-object p1, Lcom/motorola/messaging/transaction/UTManager;->mResolver:Landroid/content/ContentResolver;

    .line 73
    sput-object p2, Lcom/motorola/messaging/transaction/UTManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "enabled":Z
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getUTMsgNumber()I

    move-result v1

    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    .line 76
    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    sget v2, Lcom/motorola/messaging/transaction/UTManager;->mOldUTnumber:I

    if-eq v1, v2, :cond_1

    .line 77
    const-string v1, "UTManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG-UT - Running new unit test, UT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mOldUTnumber:I

    .line 79
    const/4 v1, 0x1

    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    .line 80
    const/4 v1, 0x0

    sput-object v1, Lcom/motorola/messaging/transaction/UTManager;->mUTInstance:Lcom/motorola/messaging/transaction/TransactionManager;

    .line 83
    :cond_1
    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mUTNumber:I

    if-eqz v1, :cond_2

    .line 84
    const/4 v0, 0x1

    .line 85
    sget v1, Lcom/motorola/messaging/transaction/UTManager;->mTestExecution:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/motorola/messaging/transaction/UTManager;->mTestExecution:I

    .line 88
    :cond_2
    return v0
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 92
    sget-boolean v0, Lcom/motorola/messaging/transaction/UTManager;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "UTManager"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    const/4 v0, 0x1

    sput v0, Lcom/motorola/messaging/transaction/UTManager;->mUTStep:I

    .line 97
    const/4 v0, 0x0

    sput v0, Lcom/motorola/messaging/transaction/UTManager;->mTestExecution:I

    .line 98
    return-void
.end method

.method private static runGenericTestSuite(I)Lcom/motorola/messaging/transaction/TransactionManager;
    .locals 12
    .param p0, "UTnumber"    # I

    .prologue
    const/16 v2, 0x226

    const/16 v1, 0x1f4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1342
    const/4 v0, 0x0

    .line 1363
    .local v0, "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    packed-switch p0, :pswitch_data_0

    .line 1396
    :goto_0
    return-object v0

    .line 1366
    :pswitch_0
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    move v2, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/transaction/UTManager$UTpersist;-><init>(IIZZZZ)V

    .line 1367
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1371
    :pswitch_1
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/transaction/UTManager$UTpersist;-><init>(IIZZZZ)V

    .line 1372
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1376
    :pswitch_2
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    move-object v5, v0

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/motorola/messaging/transaction/UTManager$UTpersist;-><init>(IIZZZZ)V

    .line 1377
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1381
    :pswitch_3
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/motorola/messaging/transaction/UTManager$UTpersist;-><init>(IIZZZZ)V

    .line 1382
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1388
    :pswitch_4
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$UTpersist;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    move v5, v4

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/messaging/transaction/UTManager$UTpersist;-><init>(IIZZZZ)V

    .line 1389
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1392
    :pswitch_5
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$SmsPowerUpResend;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 1363
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static runMMSTestSuite(I)Lcom/motorola/messaging/transaction/TransactionManager;
    .locals 2
    .param p0, "UTnumber"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    packed-switch p0, :pswitch_data_0

    .line 212
    :goto_0
    return-object v0

    .line 140
    :pswitch_0
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSCall1;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSCall1;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 141
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 144
    :pswitch_1
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSCall2;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSCall2;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 145
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 148
    :pswitch_2
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSApnTimeout;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 149
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 152
    :pswitch_3
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSApnError;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSApnError;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 153
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 156
    :pswitch_4
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSNetworkIsAvailable;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 157
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 160
    :pswitch_5
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSNetworkNoService;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSNetworkNoService;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 161
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 164
    :pswitch_6
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSAutomaticDownloadAckError;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSAutomaticDownloadAckError;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 165
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 168
    :pswitch_7
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSManualDownloadAckError;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 169
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 172
    :pswitch_8
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSSendPermamentFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSSendPermamentFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 173
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 176
    :pswitch_9
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSDownloadPermamentFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSDownloadPermamentFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 177
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 180
    :pswitch_a
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 181
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 184
    :pswitch_b
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporaryAsyncAPNSwitchFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 185
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 188
    :pswitch_c
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSTemporarySyncAPNSwitchFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 189
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 192
    :pswitch_d
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryMultipleFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSRetryTemporaryMultipleFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 193
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 196
    :pswitch_e
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSNoResponseTimeoutFailure;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 197
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 200
    :pswitch_f
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSExpiredMessage;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 201
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 204
    :pswitch_10
    new-instance v0, Lcom/motorola/messaging/transaction/UTManager$MMSLongDownload;

    .end local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    invoke-direct {v0, v1}, Lcom/motorola/messaging/transaction/UTManager$MMSLongDownload;-><init>(Lcom/motorola/messaging/transaction/UTManager$1;)V

    .line 205
    .restart local v0    # "testManager":Lcom/motorola/messaging/transaction/TransactionManager;
    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
