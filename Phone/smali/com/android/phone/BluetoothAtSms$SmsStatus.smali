.class Lcom/android/phone/BluetoothAtSms$SmsStatus;
.super Ljava/lang/Object;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsStatus"
.end annotation


# instance fields
.field private final UNKNOWN:I

.field private mStatus:I

.field private mStatus_Description:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 359
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->UNKNOWN:I

    .line 360
    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 361
    iget v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 362
    return-void
.end method

.method private toIntValue(Ljava/lang/String;)I
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 393
    const/4 v0, -0x1

    .line 394
    .local v0, "IntStatus":I
    const-string v1, "\"REC UNREAD\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    .line 396
    :cond_0
    const-string v1, "\"REC READ\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const-string v1, "\"STO UNSENT\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 399
    const/4 v0, 0x2

    goto :goto_0

    .line 400
    :cond_2
    const-string v1, "\"STO SENT\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    const/4 v0, 0x3

    goto :goto_0

    .line 402
    :cond_3
    const-string v1, "\"ALL\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 403
    const/4 v0, 0x4

    goto :goto_0

    .line 405
    :cond_4
    const-string v1, "\"UNKNOW\""

    iput-object v1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    goto :goto_0
.end method

.method private toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 411
    const-string v0, "\"UNKNOW\""

    .line 412
    .local v0, "StrStatus":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 429
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 433
    :goto_0
    return-object v0

    .line 414
    :pswitch_0
    const-string v0, "\"REC UNREAD\""

    .line 415
    goto :goto_0

    .line 417
    :pswitch_1
    const-string v0, "\"REC READ\""

    .line 418
    goto :goto_0

    .line 420
    :pswitch_2
    const-string v0, "\"STO UNSENT\""

    .line 421
    goto :goto_0

    .line 423
    :pswitch_3
    const-string v0, "\"STO SENT\""

    .line 424
    goto :goto_0

    .line 426
    :pswitch_4
    const-string v0, "\"ALL\""

    .line 427
    goto :goto_0

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method getIntValue()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    return v0
.end method

.method set(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 383
    iput p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 384
    invoke-direct {p0, p1}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 385
    return-void
.end method

.method set(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    .line 389
    iget-object v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus_Description:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothAtSms$SmsStatus;->toIntValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/BluetoothAtSms$SmsStatus;->mStatus:I

    .line 390
    return-void
.end method
