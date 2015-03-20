.class public Lcom/android/phone/BluetoothAtSms;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;,
        Lcom/android/phone/BluetoothAtSms$CNMI;,
        Lcom/android/phone/BluetoothAtSms$CPMS;,
        Lcom/android/phone/BluetoothAtSms$CMSS;,
        Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;,
        Lcom/android/phone/BluetoothAtSms$SmsStatus;,
        Lcom/android/phone/BluetoothAtSms$MyHandler;
    }
.end annotation


# static fields
.field private static final N_ARG_REG_EXPR:Ljava/lang/String;

.field private static final SMS_ME_COLUMNS:[Ljava/lang/String;

.field private static mInputMsgBody:Ljava/lang/String;

.field private static unAcknowledgedBufferedNotifications:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static unAcknowledgedNotifications:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCanDeleteNumber:I

.field private mCmgcbit:I

.field private mCmgsbit:I

.field private mCmgwbit:I

.field private mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

.field private final mContext:Landroid/content/Context;

.field private mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

.field private mDestinationAddress:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mInputMode:I

.field private mIntentsRegister:Z

.field private final mLock:Ljava/lang/Object;

.field private mPduLength:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mServiceCenter:Ljava/lang/String;

.field private mSmsFormatType:I

.field private mSmsReciever:Landroid/content/BroadcastReceiver;

.field private final mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "person"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->N_ARG_REG_EXPR:Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    .line 473
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handsfree"    # Lcom/android/phone/BluetoothHandsfree;

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 212
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;

    .line 235
    iput-boolean v1, p0, Lcom/android/phone/BluetoothAtSms;->mIntentsRegister:Z

    .line 446
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgsbit:I

    .line 447
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgwbit:I

    .line 448
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I

    .line 519
    new-instance v0, Lcom/android/phone/BluetoothAtSms$1;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$1;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 602
    new-instance v0, Lcom/android/phone/BluetoothAtSms$2;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$2;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    .line 477
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    .line 478
    iput-object p2, p0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 479
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    .line 480
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 482
    new-instance v0, Lcom/android/phone/BluetoothAtSms$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$MyHandler;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mHandler:Landroid/os/Handler;

    .line 483
    new-instance v0, Lcom/android/phone/BluetoothAtSms$CPMS;

    const-string v2, "\"ME\""

    const-string v3, "\"ME\""

    const-string v4, "\"ME\""

    invoke-direct {v0, v2, v3, v4}, Lcom/android/phone/BluetoothAtSms$CPMS;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    .line 484
    new-instance v0, Lcom/android/phone/BluetoothAtSms$CNMI;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms$CNMI;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

    .line 485
    return-void
.end method

.method private SmsPduHexStr2Byte(Ljava/lang/String;)[B
    .locals 6

    .prologue
    .line 1821
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 1822
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 1823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 1825
    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1822
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1827
    :cond_0
    return-object v1
.end method

.method private SmsPdubyte2HexStr([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1837
    if-nez p1, :cond_0

    .line 1838
    const-string v0, ""

    .line 1847
    :goto_0
    return-object v0

    .line 1839
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1840
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1842
    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    .line 1843
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1844
    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    .line 1845
    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1840
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1847
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/BluetoothAtSms;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/BluetoothAtSms;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtSms;->mSuccess:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/BluetoothAtSms;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/BluetoothAtSms;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/BluetoothAtSms;->mSuccess:Z

    return p1
.end method

.method static synthetic access$1100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-static {p0}, Lcom/android/phone/BluetoothAtSms;->addNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Lcom/android/phone/BluetoothAtSms;->canSendNotificationToTE()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # J

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/BluetoothAtSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/phone/BluetoothHandsfree;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/BluetoothAtSms;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CPMS;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Lcom/android/phone/BluetoothAtSms$CPMS;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->parseAtCpms([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/BluetoothAtSms;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms;->mServiceCenter:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/ContentValues;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgc([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 196
    sput-object p0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgsbit:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgwbit:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgs([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgw([Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/BluetoothAtSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/BluetoothAtSms;Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/phone/BluetoothAtSms;[Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # Lcom/android/phone/BluetoothAtSms$CNMI;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->parseAtCnmi([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3400()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedBufferedNotifications:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->deleteMessageFromME(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->getAllSmsIndexsFromME(Landroid/content/Context;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/phone/BluetoothAtSms;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct/range {p0 .. p5}, Lcom/android/phone/BluetoothAtSms;->sendMessageFromMem(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/BluetoothAtSms;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/BluetoothAtSms;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # I

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/BluetoothAtSms;
    .param p1, "x1"    # [B

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addNotification(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1867
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: addNotification() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1871
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: addNotification() ---------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: addNotification() unAcknowledgedNotifications:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1874
    const-string v2, "BtAtSms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BTAtCNMA: addNotification() ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1877
    :cond_0
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: addNotification() ---------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: addNotification() end"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    return-void
.end method

.method private static canSendNotificationToTE()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1882
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: canSendNotificationToTE() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: canSendNotificationToTE() unAcknowledgedNotifications:"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: canSendNotificationToTE() ---------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1886
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1887
    const-string v4, "BtAtSms"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BTAtCNMA: canSendNotificationToTE() ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1890
    :cond_0
    const-string v0, "BtAtSms"

    const-string v1, "BTAtCNMA: canSendNotificationToTE() ---------------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v0, v3, :cond_1

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->unAcknowledgedNotifications:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v2, v3

    .line 1896
    :cond_2
    return v2
.end method

.method private deleteMessageFromME(Landroid/content/Context;I)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 1319
    const/4 v3, -0x1

    .line 1320
    .local v3, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1321
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, p2

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1322
    .local v2, "queryUri":Landroid/net/Uri;
    invoke-virtual {v1, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1323
    .local v0, "count":I
    const-string v4, "BtAtSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteMessageFromME: queryUri= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1325
    const/16 v3, 0x1f4

    .line 1328
    .end local v3    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 1326
    .restart local v3    # "result":I
    :cond_1
    if-nez v0, :cond_0

    .line 1327
    const/16 v3, 0x141

    goto :goto_0
.end method

.method private getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "SmsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v6, "SmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1691
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1693
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1695
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1696
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v11, v1, :cond_0

    .line 1697
    new-instance v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 1698
    .local v12, "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    .line 1699
    const-string v1, "type"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 1700
    const-string v1, "thread_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->thread_id:I

    .line 1701
    const-string v1, "address"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 1702
    const-string v1, "person"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person_id:I

    .line 1703
    const-string v1, "date"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 1704
    const-string v1, "read"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    .line 1705
    const-string v1, "status"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->status:I

    .line 1706
    const-string v1, "subject"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->subject:Ljava/lang/String;

    .line 1707
    const-string v1, "body"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 1708
    const-string v1, "person"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person:Ljava/lang/String;

    .line 1709
    const-string v1, "protocol"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->protocol:I

    .line 1710
    const-string v1, "reply_path_present"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    .line 1712
    const-string v1, "service_center"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 1714
    const-string v1, "getAllMessagesFromME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\naddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nreply_path_present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nservice_center: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v12, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v11    # "i":I
    .end local v12    # "msg":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1727
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 1783
    :cond_2
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 1724
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1729
    :pswitch_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1730
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1731
    .local v7, "SmsUnreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_4

    .line 1732
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v1, :cond_3

    .line 1733
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1731
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1735
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v8, v7

    .line 1736
    goto :goto_1

    .line 1740
    .end local v7    # "SmsUnreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11    # "i":I
    :pswitch_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1741
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1742
    .local v8, "SmsreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 1743
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-eqz v1, :cond_5

    .line 1744
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1742
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1746
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    .line 1751
    .end local v8    # "SmsreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11    # "i":I
    :pswitch_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1752
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1753
    .restart local v8    # "SmsreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_8

    .line 1754
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    .line 1755
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1758
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto/16 :goto_1

    .line 1763
    .end local v8    # "SmsreadList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11    # "i":I
    :pswitch_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1764
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1765
    .local v9, "SmssentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    .line 1766
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v1, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 1767
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1770
    :cond_a
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v8, v9

    .line 1771
    goto/16 :goto_1

    .line 1775
    .end local v9    # "SmssentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;>;"
    .end local v11    # "i":I
    :pswitch_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v8, v6

    .line 1776
    goto/16 :goto_1

    .line 1779
    :pswitch_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v8, v6

    .line 1780
    goto/16 :goto_1

    .line 1727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getAllSmsIndexsFromME(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "smsIndexs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1361
    const-string v2, "content://sms"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1362
    .local v1, "queryUri":Landroid/net/Uri;
    const-string v5, "_id ASC"

    .line 1363
    .local v5, "orderby":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1364
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "_id"

    aput-object v8, v2, v4

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1367
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1369
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1371
    .local v7, "index":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1373
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1374
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1378
    .end local v7    # "index":I
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1381
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getSmsMessageStorageCapacity(Landroid/content/Context;Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "capacity"    # Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;

    .prologue
    const/16 v7, 0x1f4

    const/4 v3, 0x0

    .line 1119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1120
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    iget-object v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->memName:Ljava/lang/String;

    const-string v2, "\"ME\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1122
    const/16 v1, 0x1000

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->total:I

    .line 1123
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1126
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1127
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$SmsStorageCapacity;->used:I

    .line 1128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1136
    const/4 v1, -0x1

    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return v1

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_0
    move v1, v7

    .line 1130
    goto :goto_0

    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    move v1, v7

    .line 1133
    goto :goto_0
.end method

.method private getSmsMessageStorageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "memory_index"    # I

    .prologue
    .line 1150
    packed-switch p1, :pswitch_data_0

    .line 1158
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1152
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    goto :goto_0

    .line 1154
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    goto :goto_0

    .line 1156
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mCpmsConfig:Lcom/android/phone/BluetoothAtSms$CPMS;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    goto :goto_0

    .line 1150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleAtCmglSetCmdPduMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 12

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2038
    const-string v8, "+CMGL"

    .line 2039
    invoke-virtual {p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->getIntValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2149
    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v4}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2150
    const-string v1, "+CMS ERROR: 500"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2151
    :goto_0
    return-object v0

    .line 2041
    :pswitch_0
    const-string v0, "\"ME\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2042
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 2044
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2045
    if-eqz v5, :cond_1

    move v1, v2

    .line 2046
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2047
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2048
    const-string v0, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2049
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v7, v0, v6}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2051
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 2052
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v6

    .line 2053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",,"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v9, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2046
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_1
    move-object v0, v3

    .line 2059
    goto/16 :goto_0

    .line 2062
    :cond_2
    :pswitch_1
    const-string v0, "\"ME\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2063
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2065
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2066
    if-eqz v3, :cond_3

    .line 2067
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 2068
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v5, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 2069
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v5

    .line 2070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2067
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2076
    goto/16 :goto_0

    .line 2079
    :cond_4
    :pswitch_2
    const-string v0, "\"ME\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2080
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v6}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2082
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2083
    if-eqz v3, :cond_5

    .line 2084
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 2085
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 2086
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2084
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 2093
    goto/16 :goto_0

    .line 2096
    :cond_6
    :pswitch_3
    const-string v0, "\"ME\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2097
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v5}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2099
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2100
    if-eqz v3, :cond_7

    .line 2101
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 2102
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 2103
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v4

    .line 2104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ",,"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\r\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2101
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    move-object v0, v1

    .line 2110
    goto/16 :goto_0

    .line 2113
    :cond_8
    :pswitch_4
    const-string v0, "\"ME\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 2116
    new-instance v7, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v7, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2117
    if-eqz v9, :cond_c

    move v1, v2

    .line 2118
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2121
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v0, v4, :cond_a

    .line 2123
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v0, :cond_9

    .line 2125
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2126
    const-string v0, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2127
    iget-object v10, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v10, v0, v3}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    move v3, v2

    .line 2138
    :goto_6
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v10, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v0

    .line 2139
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;

    move-result-object v10

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ": "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",,"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v11, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v11}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_9
    move v3, v4

    .line 2130
    goto :goto_6

    .line 2133
    :cond_a
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v0, v6, :cond_b

    move v3, v5

    .line 2134
    goto :goto_6

    :cond_b
    move v3, v6

    .line 2136
    goto :goto_6

    :cond_c
    move-object v0, v7

    .line 2146
    goto/16 :goto_0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleAtCmglSetCmdTextMode(Lcom/android/phone/BluetoothAtSms$SmsStatus;Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 2156
    const-string v4, "+CMGL"

    .line 2157
    invoke-virtual {p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->getIntValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2252
    :cond_0
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v0, v8}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2253
    const-string v1, "+CMS ERROR: 500"

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2254
    :goto_0
    return-object v0

    .line 2159
    :pswitch_0
    const-string v1, "\"ME\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2160
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2162
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2163
    if-eqz v3, :cond_1

    move v1, v0

    .line 2164
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 2165
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2166
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2167
    iget-object v6, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v6, v0, v5}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"REC UNREAD\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\",\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 2174
    goto/16 :goto_0

    .line 2177
    :cond_2
    :pswitch_1
    const-string v1, "\"ME\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2178
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v8}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2180
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2181
    if-eqz v3, :cond_3

    move v1, v0

    .line 2182
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"REC READ\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\",\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2188
    goto/16 :goto_0

    .line 2191
    :cond_4
    :pswitch_2
    const-string v1, "\"ME\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2192
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v9}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2194
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2195
    if-eqz v3, :cond_5

    move v1, v0

    .line 2196
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"STO UNSENT\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\",\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2196
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 2202
    goto/16 :goto_0

    .line 2205
    :cond_6
    :pswitch_3
    const-string v1, "\"ME\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2206
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2208
    new-instance v2, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v2, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2209
    if-eqz v3, :cond_7

    move v1, v0

    .line 2210
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 2211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\"STO SENT\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ",\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\",\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    .line 2216
    goto/16 :goto_0

    .line 2219
    :cond_8
    :pswitch_4
    const-string v1, "\"ME\""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2220
    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/android/phone/BluetoothAtSms;->getAllMessagesFromME(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 2222
    new-instance v3, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v3, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2223
    if-eqz v5, :cond_c

    move v1, v0

    .line 2224
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2227
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v0, v8, :cond_a

    .line 2229
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    if-nez v0, :cond_9

    .line 2230
    const-string v2, "\"REC UNREAD\""

    .line 2231
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2233
    iget-object v7, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-direct {p0, v7, v0, v6}, Lcom/android/phone/BluetoothAtSms;->updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V

    .line 2244
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 2224
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    .line 2236
    :cond_9
    const-string v0, "\"REC READ\""

    move-object v2, v0

    goto :goto_6

    .line 2239
    :cond_a
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    if-ne v0, v9, :cond_b

    .line 2240
    const-string v0, "\"STO SENT\""

    move-object v2, v0

    goto :goto_6

    .line 2242
    :cond_b
    const-string v0, "\"STO UNSENT\""

    move-object v2, v0

    goto :goto_6

    :cond_c
    move-object v0, v3

    .line 2249
    goto/16 :goto_0

    .line 2157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseAtCmgc([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1940
    const-string v2, "BtAtSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAtCmgc: mSmsFormatType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    iget v2, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v2, :cond_2

    .line 1942
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1950
    :cond_0
    :goto_0
    return v0

    .line 1944
    :cond_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    :goto_1
    move v0, v1

    .line 1950
    goto :goto_0

    .line 1946
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"(\\+)?(\\d+)\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1948
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseAtCmgl([Ljava/lang/Object;)Lcom/android/phone/BluetoothAtSms$SmsStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1901
    new-instance v0, Lcom/android/phone/BluetoothAtSms$SmsStatus;

    invoke-direct {v0, p0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    .line 1902
    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    packed-switch v1, :pswitch_data_0

    .line 1915
    :cond_0
    :goto_0
    return-object v0

    .line 1904
    :pswitch_0
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0|1|2|3|4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->set(I)V

    goto :goto_0

    .line 1908
    :pswitch_1
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\"REC UNREAD\"|\"REC READ\"|\"STO UNSENT\"|\"STO SENT\"|\"ALL\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1910
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->set(Ljava/lang/String;)V

    goto :goto_0

    .line 1902
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAtCmgs([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1954
    const-string v2, "BtAtSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAtCmgs: mSmsFormatType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    iget v2, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v2, :cond_2

    .line 1956
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1964
    :cond_0
    :goto_0
    return v0

    .line 1958
    :cond_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    :goto_1
    move v0, v1

    .line 1964
    goto :goto_0

    .line 1960
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"(\\+)?(\\d+)\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseAtCmgw([Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1968
    const-string v2, "BtAtSms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseAtCmgw: mSmsFormatType= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget v2, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v2, :cond_2

    .line 1970
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return v0

    .line 1972
    :cond_1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    :goto_1
    move v0, v1

    .line 1978
    goto :goto_0

    .line 1974
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\"(\\+)?(\\d+)\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1976
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseAtCnmi([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CNMI;)I
    .locals 7

    .prologue
    const/16 v1, 0x1f4

    const/4 v6, 0x2

    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1982
    if-eqz p1, :cond_0

    .line 1983
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 2033
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1987
    :pswitch_1
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1988
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1991
    goto :goto_0

    .line 1993
    :pswitch_2
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1994
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 1995
    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1998
    goto :goto_0

    .line 2000
    :pswitch_3
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2002
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 2003
    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 2004
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 2007
    goto/16 :goto_0

    .line 2009
    :pswitch_4
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2011
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 2012
    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 2013
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    .line 2014
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 2017
    goto/16 :goto_0

    .line 2019
    :pswitch_5
    aget-object v2, p1, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    aget-object v2, p1, v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0|1|2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2022
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    .line 2023
    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    .line 2024
    aget-object v1, p1, v6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->bm:I

    .line 2025
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/android/phone/BluetoothAtSms$CNMI;->ds:I

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 2028
    goto/16 :goto_0

    .line 1983
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private parseAtCpms([Ljava/lang/Object;Lcom/android/phone/BluetoothAtSms$CPMS;)Z
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;
    .param p2, "cpms"    # Lcom/android/phone/BluetoothAtSms$CPMS;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1919
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1936
    :goto_0
    return v0

    .line 1921
    :pswitch_0
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    goto :goto_0

    .line 1925
    :pswitch_1
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 1926
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    goto :goto_0

    .line 1930
    :pswitch_2
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem1:Ljava/lang/String;

    .line 1931
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem2:Ljava/lang/String;

    .line 1932
    const/4 v1, 0x2

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/phone/BluetoothAtSms$CPMS;->mem3:Ljava/lang/String;

    goto :goto_0

    .line 1919
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private process(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handsfree"    # Lcom/android/phone/BluetoothHandsfree;
    .param p3, "input"    # Ljava/lang/String;

    .prologue
    .line 1527
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCmgsbit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothAtSms;->mCmgsbit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCmgwbit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothAtSms;->mCmgwbit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCmgcbit= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1529
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process ::input.charAt(i)= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v1, -0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Lcom/android/phone/BluetoothAtSms;->useChar(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;C)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1533
    :cond_0
    return-void

    .line 1528
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "message"    # Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    .prologue
    const/4 v3, 0x0

    .line 1172
    const/4 v7, -0x1

    .line 1173
    .local v7, "result":I
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p2

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    .local v1, "queryUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1175
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/phone/BluetoothAtSms;->SMS_ME_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1176
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1178
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1179
    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->id:I

    .line 1180
    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 1181
    const-string v2, "thread_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->thread_id:I

    .line 1182
    const-string v2, "address"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 1183
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person_id:I

    .line 1184
    const-string v2, "date"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 1185
    const-string v2, "read"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    .line 1186
    const-string v2, "status"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->status:I

    .line 1187
    const-string v2, "subject"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->subject:Ljava/lang/String;

    .line 1188
    const-string v2, "body"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 1189
    const-string v2, "person"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->person:Ljava/lang/String;

    .line 1190
    const-string v2, "protocol"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->protocol:I

    .line 1191
    const-string v2, "reply_path_present"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    .line 1193
    const-string v2, "service_center"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 1196
    const-string v2, "readMessageFromME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\naddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->read:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nbody:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nreply_path_present: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->reply_path_present:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nservice_center: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p3, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1204
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1208
    :cond_0
    return v7

    .line 1201
    :cond_1
    const/16 v7, 0x141

    goto :goto_0

    .line 1204
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private saveSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handsfree"    # Lcom/android/phone/BluetoothHandsfree;

    .prologue
    .line 1447
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    if-ne v1, v2, :cond_1

    .line 1448
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    .line 1450
    const-string v1, "\r\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1452
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input length is: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input is: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v1, :cond_9

    .line 1457
    const-string v1, "BtAtSms"

    const-string v2, "PDU MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v14, v1, :cond_3

    .line 1459
    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 1463
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    add-int/lit8 v7, v14, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1511
    .end local v14    # "i":I
    :catch_0
    move-exception v13

    .line 1512
    .local v13, "ex":Ljava/lang/RuntimeException;
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception is captured: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1514
    .local v18, "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMS ERROR: 500"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1515
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1519
    .end local v13    # "ex":Ljava/lang/RuntimeException;
    .end local v18    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_1
    :goto_1
    return-void

    .line 1466
    .restart local v14    # "i":I
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 1469
    :cond_3
    :try_start_1
    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothAtSms;->SmsPduHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v17

    .line 1470
    .local v17, "pdus":[B
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    move-object/from16 v0, v17

    array-length v2, v0

    const/4 v7, 0x0

    aget-byte v7, v17, v7

    sub-int/2addr v2, v7

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1471
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "pdu format error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1472
    :cond_4
    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v16

    .line 1473
    .local v16, "message":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-nez v16, :cond_5

    .line 1474
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "pdu format error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1475
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object v3

    .line 1476
    .local v3, "dsAddress":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 1477
    .local v4, "MessageText":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v5

    .line 1478
    .local v5, "mTimestamp":J
    if-eqz v3, :cond_6

    if-nez v4, :cond_7

    .line 1479
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "pdu format error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1480
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/BluetoothAtSms;->saveTextSmsMessageOnME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v15

    .line 1482
    .local v15, "index":I
    if-gez v15, :cond_8

    .line 1483
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1484
    .restart local v18    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMS ERROR: 321"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto :goto_1

    .line 1488
    .end local v18    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_8
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveTextMessage return OK index= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1490
    .restart local v18    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMGW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1495
    .end local v3    # "dsAddress":Ljava/lang/String;
    .end local v4    # "MessageText":Ljava/lang/String;
    .end local v5    # "mTimestamp":J
    .end local v14    # "i":I
    .end local v15    # "index":I
    .end local v16    # "message":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v17    # "pdus":[B
    .end local v18    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_9
    const-string v1, "BtAtSms"

    const-string v2, "TEXT MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1497
    .restart local v5    # "mTimestamp":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    sget-object v10, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    move-object/from16 v7, p0

    move-wide v11, v5

    invoke-direct/range {v7 .. v12}, Lcom/android/phone/BluetoothAtSms;->saveTextSmsMessageOnME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v15

    .line 1499
    .restart local v15    # "index":I
    if-gez v15, :cond_a

    .line 1500
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1501
    .restart local v18    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v1, "+CMS ERROR: 321"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1502
    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1505
    .end local v18    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_a
    const-string v1, "BtAtSms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveTextMessage return OK index= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    new-instance v18, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1507
    .restart local v18    # "result":Landroid/bluetooth/AtCommandResult;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMGW : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual/range {v18 .. v18}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private saveTextSmsMessageOnME(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "destAddress"    # Ljava/lang/String;
    .param p3, "messageBody"    # Ljava/lang/String;
    .param p4, "mTimestamp"    # J

    .prologue
    const/4 v1, -0x1

    .line 1798
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1799
    .local v2, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1800
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, p2, p3, v5, v6}, Landroid/provider/Telephony$Sms$Draft;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    .line 1801
    if-nez v4, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return v1

    .line 1803
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, "path":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1807
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1808
    .local v1, "index":I
    goto :goto_0

    .line 1809
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private sendMessageFromMem(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .locals 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mem"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "da"    # Ljava/lang/String;
    .param p5, "SendCmdName"    # Ljava/lang/String;

    .prologue
    .line 1225
    const/16 v19, -0x1

    .line 1226
    .local v19, "error":I
    const/4 v6, 0x0

    .line 1227
    .local v6, "messageBody":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1228
    .local v5, "dsAddress":Ljava/lang/String;
    const/16 v29, 0x0

    .line 1229
    .local v29, "uri":Landroid/net/Uri;
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 1230
    .local v27, "prefs":Landroid/content/SharedPreferences;
    const-string v7, "pref_key_sms_delivery_reports"

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1231
    .local v9, "requestDeliveryReport":Z
    const-string v7, "\"SM\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1234
    const/16 v7, 0x1f4

    .line 1307
    :goto_0
    return v7

    .line 1236
    :cond_0
    new-instance v23, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/4 v7, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 1237
    .local v23, "message":Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/phone/BluetoothAtSms;->readMessageFromME(Landroid/content/Context;ILcom/android/phone/BluetoothAtSms$SmsMessageOnME;)I

    move-result v19

    .line 1238
    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_1

    move/from16 v7, v19

    .line 1239
    goto :goto_0

    .line 1240
    :cond_1
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 1241
    if-eqz p4, :cond_3

    .line 1242
    move-object/from16 v5, p4

    .line 1245
    :goto_1
    if-eqz v5, :cond_2

    if-nez v6, :cond_4

    .line 1246
    :cond_2
    const/16 v7, 0x1f4

    goto :goto_0

    .line 1244
    :cond_3
    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    goto :goto_1

    .line 1247
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1248
    .local v4, "mContentResolver":Landroid/content/ContentResolver;
    new-instance v7, Ljava/util/HashSet;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v8, v13

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v10

    .line 1250
    .local v10, "mThreadId":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 1251
    .local v21, "mTimestamp":J
    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    move-object/from16 v0, v23

    iget v7, v0, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    .line 1254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://sms/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    .line 1255
    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    .line 1256
    .local v30, "values":Landroid/content/ContentValues;
    const-string v7, "address"

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v7, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1258
    const-string v7, "thread_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1259
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v28

    .line 1260
    .local v28, "ret":I
    const/4 v7, -0x1

    move/from16 v0, v28

    if-ne v0, v7, :cond_5

    .line 1261
    const/16 v7, 0x1f4

    goto/16 :goto_0

    .line 1264
    :cond_5
    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-static {v0, v1, v7, v8}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1276
    .end local v28    # "ret":I
    .end local v30    # "values":Landroid/content/ContentValues;
    :goto_2
    if-nez v29, :cond_7

    .line 1277
    const/16 v7, 0x1f4

    goto/16 :goto_0

    .line 1268
    :cond_6
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v4 .. v11}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v29

    goto :goto_2

    .line 1270
    :catch_0
    move-exception v18

    .line 1271
    .local v18, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 1272
    const/16 v7, 0x1f4

    goto/16 :goto_0

    .line 1278
    .end local v18    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_7
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v12

    .line 1279
    .local v12, "mSmsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v12, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 1280
    .local v15, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1281
    .local v24, "messageCount":I
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1282
    .local v17, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1284
    .local v16, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1285
    if-eqz v9, :cond_8

    .line 1286
    new-instance v25, Landroid/content/Intent;

    const-string v7, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1287
    .local v25, "msgDeliveredIntent":Landroid/content/Intent;
    const-string v7, "SendCmdName"

    move-object/from16 v0, v25

    move-object/from16 v1, p5

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    .end local v25    # "msgDeliveredIntent":Landroid/content/Intent;
    :cond_8
    new-instance v26, Landroid/content/Intent;

    const-string v7, "com.mot.bt.Sms.MESSAGE_SENT"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1292
    .local v26, "msgSendCompleteIntent":Landroid/content/Intent;
    const-string v7, "SendCmdName"

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    add-int/lit8 v7, v24, -0x1

    move/from16 v0, v20

    if-ne v0, v7, :cond_9

    .line 1294
    const-string v7, "BtAtSms"

    const-string v8, " IsLastPackageOfSMS  SET"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const-string v7, "IsLastPackageOfSMS"

    const-string v8, "yes"

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const/4 v7, 0x0

    const/high16 v8, 0x40000000

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1284
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 1299
    :cond_9
    const-string v7, "IsLastPackageOfSMS"

    const-string v8, "no"

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1304
    .end local v26    # "msgSendCompleteIntent":Landroid/content/Intent;
    :cond_a
    const-string v7, "BtAtSms"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendIntents size is "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v14, 0x0

    move-object v13, v5

    invoke-virtual/range {v12 .. v17}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1307
    const/4 v7, -0x1

    goto/16 :goto_0
.end method

.method private sendPduMessage(Landroid/content/Context;[BLjava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Pdus"    # [B
    .param p3, "SendCmdName"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x1f4

    .line 1644
    const-string v1, "BtAtSms"

    const-string v3, "sendPduMessage ENTER! "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 1646
    .local v6, "message":Lcom/android/internal/telephony/gsm/SmsMessage;
    if-nez v6, :cond_0

    .line 1647
    const-string v1, "BtAtSms"

    const-string v3, "returned message=null!!! "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :goto_0
    return v0

    .line 1650
    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRecipientAddress()Ljava/lang/String;

    move-result-object v2

    .line 1651
    .local v2, "dsAddress":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    .line 1652
    .local v4, "MessageText":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-nez v4, :cond_2

    .line 1653
    :cond_1
    const-string v1, "BtAtSms"

    const-string v3, "dsAddress == null || MessageText == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1656
    :cond_2
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dsAddress: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageText: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms;->sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private sendSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handsfree"    # Lcom/android/phone/BluetoothHandsfree;

    .prologue
    const/4 v12, -0x1

    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 1386
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    if-ne v11, v0, :cond_1

    .line 1387
    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mInputMode:I

    .line 1389
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1391
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input length is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :try_start_0
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I

    if-nez v0, :cond_6

    .line 1396
    const-string v0, "BtAtSms"

    const-string v1, "PDU MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 1398
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 1402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1435
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 1436
    .local v7, "ex":Ljava/lang/RuntimeException;
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception is captured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1438
    .local v10, "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 500"

    invoke-virtual {v10, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1443
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .end local v10    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_1
    :goto_1
    return-void

    .line 1405
    .restart local v8    # "i":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1408
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms;->SmsPduHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v9

    .line 1409
    .local v9, "pdus":[B
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mPduLength:I

    array-length v1, v9

    const/4 v2, 0x0

    aget-byte v2, v9, v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_4

    .line 1410
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "pdu format error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :cond_4
    const-string v0, "BtAtSms"

    invoke-direct {p0, p1, v9, v0}, Lcom/android/phone/BluetoothAtSms;->sendPduMessage(Landroid/content/Context;[BLjava/lang/String;)I

    move-result v6

    .line 1412
    .local v6, "error":I
    if-eq v6, v12, :cond_5

    .line 1413
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPduMessage return ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1415
    .restart local v10    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 304"

    invoke-virtual {v10, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1416
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto :goto_1

    .line 1419
    .end local v10    # "result":Landroid/bluetooth/AtCommandResult;
    :cond_5
    const-string v0, "BtAtSms"

    const-string v1, "sendTextMessage return OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1423
    .end local v6    # "error":I
    .end local v8    # "i":I
    .end local v9    # "pdus":[B
    :cond_6
    const-string v0, "BtAtSms"

    const-string v1, "TEXT MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    iget-object v2, p0, Lcom/android/phone/BluetoothAtSms;->mDestinationAddress:Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    const-string v5, "BtAtSms"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/BluetoothAtSms;->sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1427
    .restart local v6    # "error":I
    if-eq v6, v12, :cond_1

    .line 1428
    const-string v0, "BtAtSms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendTextMessage return ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 1430
    .restart local v10    # "result":Landroid/bluetooth/AtCommandResult;
    const-string v0, "+CMS ERROR: 305"

    invoke-virtual {v10, v0}, Landroid/bluetooth/AtCommandResult;->addResponse(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v10}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private sendTextMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dsAddress"    # Ljava/lang/String;
    .param p3, "scAddress"    # Ljava/lang/String;
    .param p4, "MessageText"    # Ljava/lang/String;
    .param p5, "SendCmdName"    # Ljava/lang/String;

    .prologue
    .line 1585
    const-string v3, "BtAtSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MessageText length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 1587
    :cond_0
    const/16 v3, 0x1f4

    .line 1631
    :goto_0
    return v3

    .line 1588
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v10

    .line 1589
    .local v10, "mSmsManager":Landroid/telephony/SmsManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1590
    .local v2, "mContentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1591
    .local v13, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1592
    .local v20, "messageCount":I
    const-string v3, "BtAtSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    new-instance v15, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1594
    .local v15, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v14, Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1595
    .local v14, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 1596
    .local v23, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_key_sms_delivery_reports"

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1597
    .local v7, "requestDeliveryReport":Z
    new-instance v3, Ljava/util/HashSet;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v8

    .line 1599
    .local v8, "mThreadId":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1600
    .local v18, "mTimestamp":J
    const/16 v24, 0x0

    .line 1602
    .local v24, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1608
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 1609
    if-eqz v7, :cond_2

    .line 1610
    new-instance v21, Landroid/content/Intent;

    const-string v3, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1611
    .local v21, "msgDeliveredIntent":Landroid/content/Intent;
    const-string v3, "SendCmdName"

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    .end local v21    # "msgDeliveredIntent":Landroid/content/Intent;
    :cond_2
    new-instance v22, Landroid/content/Intent;

    const-string v3, "com.mot.bt.Sms.MESSAGE_SENT"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1616
    .local v22, "msgSendCompleteIntent":Landroid/content/Intent;
    const-string v3, "SendCmdName"

    move-object/from16 v0, v22

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1617
    add-int/lit8 v3, v20, -0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_3

    .line 1618
    const-string v3, "BtAtSms"

    const-string v4, " IsLastPackageOfSMS  SET"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string v3, "IsLastPackageOfSMS"

    const-string v4, "yes"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const/4 v3, 0x0

    const/high16 v4, 0x40000000

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1604
    .end local v17    # "j":I
    .end local v22    # "msgSendCompleteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v16

    .line 1605
    .local v16, "e":Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 1606
    const/16 v3, 0x1f4

    goto/16 :goto_0

    .line 1623
    .end local v16    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v17    # "j":I
    .restart local v22    # "msgSendCompleteIntent":Landroid/content/Intent;
    :cond_3
    const-string v3, "IsLastPackageOfSMS"

    const-string v4, "no"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1628
    .end local v22    # "msgSendCompleteIntent":Landroid/content/Intent;
    :cond_4
    const-string v3, "BtAtSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendIntents size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 1629
    invoke-virtual/range {v10 .. v15}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1631
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method private timeStampFormat(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1859
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1860
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy/MM/dd,hh:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1861
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateSmsOnME(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 1669
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, p2

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1670
    .local v1, "targetUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1671
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, p3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1672
    return-void
.end method

.method private useChar(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;C)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handsfree"    # Lcom/android/phone/BluetoothHandsfree;
    .param p3, "read_char"    # C

    .prologue
    const/16 v3, 0x1b

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1537
    const/16 v1, 0x1a

    if-eq p3, v1, :cond_3

    if-eq p3, v3, :cond_3

    .line 1538
    const/16 v1, 0x8

    if-eq p3, v1, :cond_2

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    .line 1543
    const/16 v1, 0xd

    if-ne p3, v1, :cond_1

    .line 1544
    const-string v1, "\r\n>"

    invoke-virtual {p2, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    .line 1545
    iput v0, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    .line 1567
    :cond_0
    :goto_0
    return v0

    .line 1547
    :cond_1
    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    goto :goto_0

    .line 1550
    :cond_2
    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    if-lez v1, :cond_0

    .line 1551
    sget-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/BluetoothAtSms;->mInputMsgBody:Ljava/lang/String;

    .line 1552
    iget v1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/BluetoothAtSms;->mCanDeleteNumber:I

    goto :goto_0

    .line 1558
    :cond_3
    if-ne p3, v3, :cond_5

    .line 1559
    const-string v0, "BtAtSms"

    const-string v1, "Message input canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_4
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1561
    :cond_5
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCmgsbit:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCmgcbit:I

    if-ne v0, v2, :cond_7

    .line 1562
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->sendSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    goto :goto_1

    .line 1563
    :cond_7
    iget v0, p0, Lcom/android/phone/BluetoothAtSms;->mCmgwbit:I

    if-ne v0, v2, :cond_4

    .line 1564
    invoke-direct {p0, p1, p2}, Lcom/android/phone/BluetoothAtSms;->saveSms(Landroid/content/Context;Lcom/android/phone/BluetoothHandsfree;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/android/phone/BluetoothAtSms;->mIntentsRegister:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BluetoothAtSms;->mIntentsRegister:Z

    .line 517
    :cond_0
    return-void
.end method

.method public deleteAllMessageOnME(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1339
    const/4 v3, -0x1

    .line 1340
    .local v3, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1341
    .local v1, "mContentResolver":Landroid/content/ContentResolver;
    const-string v4, "BtAtSms"

    const-string v5, " deleteAllMessageOnME:  calling ContentUris.parseId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const-string v4, "content://sms"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1344
    .local v2, "queryUri":Landroid/net/Uri;
    invoke-virtual {v1, v2, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1345
    .local v0, "count":I
    const-string v4, "BtAtSms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " deleteAllMessageOnME: count =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1347
    const/16 v3, 0x1f4

    .line 1348
    .end local v3    # "result":I
    :cond_0
    return v3
.end method

.method public register(Landroid/bluetooth/AtParser;)V
    .locals 2

    .prologue
    .line 2260
    const-string v0, "AtCmgsConcomitant"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$3;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$3;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandConcomitantHandler;)V

    .line 2274
    const-string v0, "+CPMS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$4;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$4;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2397
    const-string v0, "+CMGR"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$5;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$5;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2492
    const-string v0, "+CMGC"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$6;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$6;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2515
    const-string v0, "+CMGS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$7;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$7;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2538
    const-string v0, "+CMGW"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$8;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$8;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2562
    const-string v0, "+CMGL"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$9;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$9;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2598
    const-string v0, "+CNMI"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$10;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$10;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2621
    const-string v0, "+CNMA"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$11;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$11;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2738
    const-string v0, "+CMGF"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$12;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$12;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2774
    const-string v0, "+CMGD"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$13;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$13;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 2933
    const-string v0, "+CMSS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$14;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$14;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3028
    const-string v0, "+CSMS"

    new-instance v1, Lcom/android/phone/BluetoothAtSms$15;

    invoke-direct {v1, p0}, Lcom/android/phone/BluetoothAtSms$15;-><init>(Lcom/android/phone/BluetoothAtSms;)V

    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/AtParser;->register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V

    .line 3062
    return-void
.end method

.method public setupIntentReceiver()V
    .locals 5

    .prologue
    .line 488
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 489
    .local v1, "SmsSndfilter":Landroid/content/IntentFilter;
    const-string v3, "com.mot.bt.Sms.MESSAGE_SENT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 490
    const-string v3, "com.mot.bt.Sms.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    :try_start_0
    const-string v3, "vnd.android.cursor.item/sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :goto_0
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsSndIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 499
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 500
    .local v0, "SmsRecieverFilter":Landroid/content/IntentFilter;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    const-string v3, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/BluetoothAtSms;->mSmsReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/BluetoothAtSms;->mIntentsRegister:Z

    .line 506
    return-void

    .line 493
    .end local v0    # "SmsRecieverFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    .line 494
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
