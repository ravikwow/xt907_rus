.class public Lcom/motorola/messaging/pdu/PduHeaders;
.super Ljava/lang/Object;
.source "PduHeaders.java"


# static fields
.field public static final CURRENT_MMS_VERSION:I


# instance fields
.field private mHeaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Lcom/motorola/messaging/pdu/PduHeaders;->getCurrentMmsVersion()I

    move-result v0

    sput v0, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    .line 332
    return-void
.end method

.method private static getCurrentMmsVersion()I
    .locals 3

    .prologue
    .line 725
    const/16 v0, 0x12

    .line 727
    .local v0, "currentMmsVersion":I
    invoke-static {}, Lcom/motorola/messaging/settings/MessageSettings;->getMmsVersion()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "mmsVersion":Ljava/lang/String;
    const-string v2, "mms_version_1_0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 730
    const/16 v0, 0x10

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 731
    :cond_1
    const-string v2, "mms_version_1_1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 732
    const/16 v0, 0x11

    goto :goto_0

    .line 733
    :cond_2
    const-string v2, "mms_version_1_2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 734
    const/16 v0, 0x12

    goto :goto_0

    .line 735
    :cond_3
    const-string v2, "mms_version_1_3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    const/16 v0, 0x13

    goto :goto_0
.end method


# virtual methods
.method protected appendEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    .locals 3
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 655
    if-nez p1, :cond_0

    .line 656
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 659
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 665
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid header field!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 668
    :sswitch_0
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 670
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/pdu/EncodedStringValue;>;"
    if-nez v0, :cond_1

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/pdu/EncodedStringValue;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/pdu/EncodedStringValue;>;"
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    return-void

    .line 659
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 552
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/pdu/EncodedStringValue;

    return-object v0
.end method

.method protected getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 4
    .param p1, "field"    # I

    .prologue
    .line 564
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 566
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/pdu/EncodedStringValue;>;"
    if-nez v0, :cond_0

    .line 567
    const/4 v2, 0x0

    .line 570
    :goto_0
    return-object v2

    .line 569
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    .line 570
    .local v1, "values":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/motorola/messaging/pdu/EncodedStringValue;

    goto :goto_0
.end method

.method protected getLongInteger(I)J
    .locals 3
    .param p1, "field"    # I

    .prologue
    .line 686
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 687
    .local v0, "longInteger":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 688
    const-wide/16 v1, -0x1

    .line 691
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method protected getOctet(I)I
    .locals 3
    .param p1, "field"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 344
    .local v0, "octet":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 345
    const/4 v1, 0x0

    .line 348
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method protected getTextString(I)[B
    .locals 2
    .param p1, "field"    # I

    .prologue
    .line 503
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method protected setEncodedStringValue(Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    .locals 2
    .param p1, "value"    # Lcom/motorola/messaging/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 591
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    return-void

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x89 -> :sswitch_0
        0x93 -> :sswitch_0
        0x96 -> :sswitch_0
        0x9a -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setEncodedStringValues([Lcom/motorola/messaging/pdu/EncodedStringValue;I)V
    .locals 4
    .param p1, "value"    # [Lcom/motorola/messaging/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 628
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 635
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid header field!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 638
    :sswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/messaging/pdu/EncodedStringValue;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 640
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_1
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    return-void

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLongInteger(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "field"    # I

    .prologue
    .line 705
    sparse-switch p3, :sswitch_data_0

    .line 719
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 721
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x87 -> :sswitch_0
        0x88 -> :sswitch_0
        0x8e -> :sswitch_0
        0x9d -> :sswitch_0
        0x9f -> :sswitch_0
        0xa1 -> :sswitch_0
        0xad -> :sswitch_0
        0xaf -> :sswitch_0
        0xb3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setOctet(II)V
    .locals 5
    .param p1, "value"    # I
    .param p2, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/messaging/pdu/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xe0

    const/16 v3, 0xc0

    const/16 v0, 0x81

    const/16 v2, 0xff

    const/16 v1, 0x80

    .line 364
    packed-switch p2, :pswitch_data_0

    .line 490
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :pswitch_1
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    .line 378
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :pswitch_2
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    .line 385
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :pswitch_3
    if-eq v1, p1, :cond_5

    if-eq v0, p1, :cond_5

    .line 392
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :pswitch_4
    if-lt p1, v1, :cond_0

    const/16 v0, 0x82

    if-le p1, v0, :cond_5

    .line 398
    :cond_0
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :pswitch_5
    if-lt p1, v1, :cond_1

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    .line 404
    :cond_1
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_6
    if-lt p1, v1, :cond_2

    const/16 v0, 0x83

    if-le p1, v0, :cond_5

    .line 411
    :cond_2
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :pswitch_7
    if-lt p1, v1, :cond_3

    const/16 v0, 0x84

    if-le p1, v0, :cond_5

    .line 417
    :cond_3
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :pswitch_8
    if-eq v1, p1, :cond_5

    .line 423
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :pswitch_9
    if-lt p1, v1, :cond_4

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    .line 430
    :cond_4
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :pswitch_a
    const/16 v0, 0xc2

    if-le p1, v0, :cond_6

    if-ge p1, v4, :cond_6

    .line 437
    const/16 p1, 0xc0

    .line 492
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    return-void

    .line 438
    :cond_6
    const/16 v0, 0xe3

    if-le p1, v0, :cond_7

    if-gt p1, v2, :cond_7

    .line 440
    const/16 p1, 0xe0

    goto :goto_0

    .line 441
    :cond_7
    if-lt p1, v1, :cond_9

    if-le p1, v1, :cond_8

    if-lt p1, v3, :cond_9

    :cond_8
    if-le p1, v2, :cond_5

    .line 445
    :cond_9
    const/16 p1, 0xe0

    goto :goto_0

    .line 450
    :pswitch_b
    const/16 v0, 0xc1

    if-le p1, v0, :cond_a

    if-ge p1, v4, :cond_a

    .line 452
    const/16 p1, 0xc0

    goto :goto_0

    .line 453
    :cond_a
    const/16 v0, 0xe4

    if-le p1, v0, :cond_b

    if-gt p1, v2, :cond_b

    .line 455
    const/16 p1, 0xe0

    goto :goto_0

    .line 456
    :cond_b
    if-lt p1, v1, :cond_d

    if-le p1, v1, :cond_c

    if-lt p1, v3, :cond_d

    :cond_c
    if-le p1, v2, :cond_5

    .line 460
    :cond_d
    const/16 p1, 0xe0

    goto :goto_0

    .line 465
    :pswitch_c
    const/16 v0, 0xc4

    if-le p1, v0, :cond_e

    if-ge p1, v4, :cond_e

    .line 467
    const/16 p1, 0xc0

    goto :goto_0

    .line 468
    :cond_e
    const/16 v0, 0xeb

    if-le p1, v0, :cond_f

    if-le p1, v2, :cond_11

    :cond_f
    if-lt p1, v1, :cond_11

    const/16 v0, 0x88

    if-le p1, v0, :cond_10

    if-lt p1, v3, :cond_11

    :cond_10
    if-le p1, v2, :cond_5

    .line 474
    :cond_11
    const/16 p1, 0xe0

    goto :goto_0

    .line 478
    :pswitch_d
    const/16 v0, 0x10

    if-lt p1, v0, :cond_12

    const/16 v0, 0x13

    if-le p1, v0, :cond_5

    .line 479
    :cond_12
    sget p1, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    goto :goto_0

    .line 483
    :pswitch_e
    if-lt p1, v1, :cond_13

    const/16 v0, 0x97

    if-le p1, v0, :cond_5

    .line 485
    :cond_13
    new-instance v0, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/InvalidHeaderValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x86
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected setTextString([BI)V
    .locals 2
    .param p1, "value"    # [B
    .param p2, "field"    # I

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 524
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 539
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduHeaders;->mHeaderMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    return-void

    .line 524
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8b -> :sswitch_0
        0x98 -> :sswitch_0
        0x9e -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method
