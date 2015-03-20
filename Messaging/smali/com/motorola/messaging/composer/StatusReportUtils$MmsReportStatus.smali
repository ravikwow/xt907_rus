.class public final Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;
.super Ljava/lang/Object;
.source "StatusReportUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/composer/StatusReportUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsReportStatus"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeliveryStatus:I

.field private mDeliveryStatusText:Ljava/lang/String;

.field private final mIsDeliveryReportRequested:Z

.field private final mIsReadReportRequested:Z

.field private mReadStatus:I

.field private mReadStatusText:Ljava/lang/String;

.field private final mRecipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recipient"    # Ljava/lang/String;
    .param p3, "drValue"    # I
    .param p4, "rrValue"    # I

    .prologue
    const v5, 0x7f0b00cf

    const/16 v4, 0x80

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput v2, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    .line 340
    iput v2, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    .line 346
    iput-object p1, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    .line 347
    invoke-static {p2}, Lcom/motorola/messaging/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/motorola/messaging/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mRecipient:Ljava/lang/String;

    .line 349
    if-ne p3, v4, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsDeliveryReportRequested:Z

    .line 350
    if-ne p4, v4, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsReadReportRequested:Z

    .line 351
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatusText:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    .line 354
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsDeliveryReportRequested:Z

    if-eqz v0, :cond_0

    .line 355
    iput v3, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    .line 358
    :cond_0
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsReadReportRequested:Z

    if-eqz v0, :cond_1

    .line 359
    iput v3, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    .line 361
    :cond_1
    return-void

    .line 347
    :cond_2
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 349
    goto :goto_1

    :cond_4
    move v1, v2

    .line 350
    goto :goto_2
.end method

.method private setDeliveryReportStatusText()V
    .locals 2

    .prologue
    .line 448
    iget v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    packed-switch v0, :pswitch_data_0

    .line 462
    :goto_0
    return-void

    .line 450
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    goto :goto_0

    .line 453
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    goto :goto_0

    .line 456
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    goto :goto_0

    .line 459
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setReadReportStatusText()V
    .locals 2

    .prologue
    .line 437
    iget v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    packed-switch v0, :pswitch_data_0

    .line 445
    :goto_0
    :pswitch_0
    return-void

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatusText:Ljava/lang/String;

    goto :goto_0

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatusText:Ljava/lang/String;

    goto :goto_0

    .line 437
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getDeliveryStatus()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    return v0
.end method

.method public getDeliveryStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method public setDeliveryReportStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsDeliveryReportRequested:Z

    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 405
    :cond_0
    if-eqz p1, :cond_1

    .line 406
    packed-switch p1, :pswitch_data_0

    .line 415
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    .line 421
    :goto_1
    invoke-direct {p0}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->setDeliveryReportStatusText()V

    goto :goto_0

    .line 409
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    goto :goto_1

    .line 412
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    goto :goto_1

    .line 419
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mDeliveryStatus:I

    goto :goto_1

    .line 406
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setReadReportStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mIsReadReportRequested:Z

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 384
    :cond_0
    if-eqz p1, :cond_1

    .line 385
    packed-switch p1, :pswitch_data_0

    .line 397
    :goto_1
    invoke-direct {p0}, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->setReadReportStatusText()V

    goto :goto_0

    .line 387
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    goto :goto_1

    .line 390
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    goto :goto_1

    .line 395
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/messaging/composer/StatusReportUtils$MmsReportStatus;->mReadStatus:I

    goto :goto_1

    .line 385
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
