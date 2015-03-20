.class public Lcom/motorola/messaging/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/pdu/PduComposer$1;,
        Lcom/motorola/messaging/pdu/PduComposer$BufferStack;,
        Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;,
        Lcom/motorola/messaging/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/motorola/messaging/pdu/GenericPdu;

.field private mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/motorola/messaging/pdu/PduComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/motorola/messaging/pdu/PduComposer;->$assertionsDisabled:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/messaging/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/messaging/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 123
    :goto_1
    sget-object v0, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 124
    sget-object v0, Lcom/motorola/messaging/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/motorola/messaging/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 31
    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/motorola/messaging/pdu/GenericPdu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 92
    iput-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPdu:Lcom/motorola/messaging/pdu/GenericPdu;

    .line 97
    iput v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 102
    iput-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    .line 112
    iput-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 135
    iput-object p2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPdu:Lcom/motorola/messaging/pdu/GenericPdu;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 137
    invoke-virtual {p2}, Lcom/motorola/messaging/pdu/GenericPdu;->getPduHeaders()Lcom/motorola/messaging/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    .line 138
    new-instance v0, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;-><init>(Lcom/motorola/messaging/pdu/PduComposer;Lcom/motorola/messaging/pdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 140
    iput v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/motorola/messaging/pdu/PduComposer;)Lcom/motorola/messaging/pdu/PduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/pdu/PduComposer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/motorola/messaging/pdu/EncodedStringValue;)Lcom/motorola/messaging/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 458
    .local v2, "temp":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/messaging/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 459
    .local v0, "addressType":I
    invoke-static {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->copy(Lcom/motorola/messaging/pdu/EncodedStringValue;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v2

    .line 460
    const/4 v3, 0x1

    if-ne v3, v0, :cond_1

    .line 462
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    move-object v3, v2

    .line 474
    .end local v0    # "addressType":I
    :goto_1
    return-object v3

    .line 463
    .restart local v0    # "addressType":I
    :cond_1
    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    .line 465
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 470
    .end local v0    # "addressType":I
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v3, 0x0

    goto :goto_1

    .line 466
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v0    # "addressType":I
    :cond_2
    const/4 v3, 0x4

    if-ne v3, v0, :cond_0

    .line 468
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/motorola/messaging/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 22
    .param p1, "field"    # I

    .prologue
    .line 481
    packed-switch p1, :pswitch_data_0

    .line 642
    :pswitch_0
    const/16 v20, 0x3

    .line 645
    :goto_0
    return v20

    .line 483
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v19

    .line 486
    .local v19, "version":I
    if-nez v19, :cond_1

    .line 487
    sget v20, Lcom/motorola/messaging/pdu/PduHeaders;->CURRENT_MMS_VERSION:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    .line 645
    .end local v19    # "version":I
    :cond_0
    :goto_1
    const/16 v20, 0x0

    goto :goto_0

    .line 489
    .restart local v19    # "version":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_1

    .line 496
    .end local v19    # "version":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 497
    .local v18, "textString":[B
    if-nez v18, :cond_2

    .line 498
    const/16 v20, 0x2

    goto :goto_0

    .line 501
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 508
    .end local v18    # "textString":[B
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v3

    .line 510
    .local v3, "addr":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v3, :cond_3

    .line 511
    const/16 v20, 0x2

    goto :goto_0

    .line 515
    :cond_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v14, v0, :cond_0

    .line 516
    aget-object v20, v3, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendAddressType(Lcom/motorola/messaging/pdu/EncodedStringValue;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v17

    .line 517
    .local v17, "temp":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v17, :cond_4

    .line 518
    const/16 v20, 0x1

    goto :goto_0

    .line 521
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendEncodedString(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 515
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 528
    .end local v3    # "addr":[Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v14    # "i":I
    .end local v17    # "temp":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v12

    .line 532
    .local v12, "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual {v12}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "insert-address-token"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 537
    :cond_5
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 539
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    goto/16 :goto_1

    .line 541
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v13

    .line 545
    .local v13, "fstart":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 547
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/motorola/messaging/pdu/PduComposer;->appendAddressType(Lcom/motorola/messaging/pdu/EncodedStringValue;)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v17

    .line 548
    .restart local v17    # "temp":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v17, :cond_7

    .line 549
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 552
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendEncodedString(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    .line 554
    invoke-virtual {v13}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 555
    .local v11, "flen":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 556
    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendValueLength(J)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 567
    .end local v11    # "flen":I
    .end local v12    # "from":Lcom/motorola/messaging/pdu/EncodedStringValue;
    .end local v13    # "fstart":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .end local v17    # "temp":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getOctet(I)I

    move-result v16

    .line 568
    .local v16, "octet":I
    if-nez v16, :cond_8

    .line 569
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 572
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 573
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 577
    .end local v16    # "octet":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 578
    .local v4, "date":J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v4

    if-nez v20, :cond_9

    .line 579
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 582
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 583
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/motorola/messaging/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_1

    .line 587
    .end local v4    # "date":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/motorola/messaging/pdu/EncodedStringValue;

    move-result-object v6

    .line 589
    .local v6, "enString":Lcom/motorola/messaging/pdu/EncodedStringValue;
    if-nez v6, :cond_a

    .line 590
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 593
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 594
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/motorola/messaging/pdu/PduComposer;->appendEncodedString(Lcom/motorola/messaging/pdu/EncodedStringValue;)V

    goto/16 :goto_1

    .line 598
    .end local v6    # "enString":Lcom/motorola/messaging/pdu/EncodedStringValue;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v15

    .line 599
    .local v15, "messageClass":[B
    if-nez v15, :cond_b

    .line 600
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 603
    :cond_b
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 604
    const-string v20, "advertisement"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 606
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 607
    :cond_c
    const-string v20, "auto"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 609
    const/16 v20, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 610
    :cond_d
    const-string v20, "personal"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 612
    const/16 v20, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 613
    :cond_e
    const-string v20, "informational"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 615
    const/16 v20, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_1

    .line 617
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_1

    .line 622
    .end local v15    # "messageClass":[B
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 623
    .local v7, "expiry":J
    const-wide/16 v20, -0x1

    cmp-long v20, v20, v7

    if-nez v20, :cond_10

    .line 624
    const/16 v20, 0x2

    goto/16 :goto_0

    .line 627
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v10

    .line 632
    .local v10, "expiryStart":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    const/16 v20, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 633
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Lcom/motorola/messaging/pdu/PduComposer;->appendLongInteger(J)V

    .line 635
    invoke-virtual {v10}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v9

    .line 636
    .local v9, "expiryLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 637
    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendValueLength(J)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_1

    .line 481
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x5

    .line 1166
    if-nez p0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1170
    :cond_1
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1172
    const/4 v0, 0x3

    goto :goto_0

    .line 1173
    :cond_2
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1175
    const/4 v0, 0x1

    goto :goto_0

    .line 1176
    :cond_3
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1178
    const/4 v0, 0x2

    goto :goto_0

    .line 1179
    :cond_4
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1181
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 732
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 733
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 734
    iput v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 738
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 739
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 742
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 754
    :cond_1
    :goto_0
    return v0

    .line 747
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 752
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 754
    goto :goto_0
.end method

.method private makeMessageBody()I
    .locals 31

    .prologue
    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 851
    .local v16, "ctStart":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    move-object/from16 v29, v0

    const/16 v30, 0x84

    invoke-virtual/range {v29 .. v30}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 852
    .local v10, "contentType":Ljava/lang/String;
    sget-object v29, Lcom/motorola/messaging/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 853
    .local v12, "contentTypeIdentifier":Ljava/lang/Integer;
    if-nez v12, :cond_1

    .line 855
    const/16 v29, 0x1

    .line 1025
    :cond_0
    :goto_0
    return v29

    .line 858
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPdu:Lcom/motorola/messaging/pdu/GenericPdu;

    move-object/from16 v29, v0

    check-cast v29, Lcom/motorola/messaging/pdu/SendReq;

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/MultimediaMessagePdu;->getBody()Lcom/motorola/messaging/pdu/PduBody;

    move-result-object v5

    .line 862
    .local v5, "body":Lcom/motorola/messaging/pdu/PduBody;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v29

    if-nez v29, :cond_3

    .line 864
    :cond_2
    const-wide/16 v29, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    .line 867
    const/16 v29, 0x0

    goto :goto_0

    .line 872
    :cond_3
    const/16 v29, 0x0

    :try_start_0
    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v23

    .line 874
    .local v23, "part":Lcom/motorola/messaging/pdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 875
    .local v28, "start":[B
    if-eqz v28, :cond_4

    .line 876
    const/16 v29, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 877
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    const/16 v29, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v28, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 885
    :cond_4
    :goto_1
    const/16 v29, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 886
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    .end local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v28    # "start":[B
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 893
    .local v15, "ctLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 894
    int-to-long v0, v15

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendValueLength(J)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    .line 898
    invoke-virtual {v5}, Lcom/motorola/messaging/pdu/PduBody;->getPartsNum()I

    move-result v27

    .line 899
    .local v27, "partNum":I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 900
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_11

    .line 901
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/motorola/messaging/pdu/PduBody;->getPart(I)Lcom/motorola/messaging/pdu/PduPart;

    move-result-object v23

    .line 902
    .restart local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 905
    .local v4, "attachment":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 908
    .local v11, "contentTypeBegin":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 910
    .local v24, "partContentType":[B
    if-nez v24, :cond_6

    .line 912
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 880
    .end local v4    # "attachment":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .end local v11    # "contentTypeBegin":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .end local v15    # "ctLength":I
    .end local v20    # "i":I
    .end local v24    # "partContentType":[B
    .end local v27    # "partNum":I
    .restart local v28    # "start":[B
    :cond_5
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 888
    .end local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v28    # "start":[B
    :catch_0
    move-exception v18

    .line 889
    .local v18, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 916
    .end local v18    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4    # "attachment":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .restart local v11    # "contentTypeBegin":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .restart local v15    # "ctLength":I
    .restart local v20    # "i":I
    .restart local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v27    # "partNum":I
    :cond_6
    sget-object v29, Lcom/motorola/messaging/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 918
    .local v25, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v25, :cond_7

    .line 919
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 928
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getName()[B

    move-result-object v22

    .line 930
    .local v22, "name":[B
    if-nez v22, :cond_8

    .line 931
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 933
    if-nez v22, :cond_8

    .line 934
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 936
    if-nez v22, :cond_8

    .line 940
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 921
    .end local v22    # "name":[B
    :cond_7
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_4

    .line 944
    .restart local v22    # "name":[B
    :cond_8
    const/16 v29, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 945
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 948
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getCharset()I

    move-result v7

    .line 949
    .local v7, "charset":I
    if-eqz v7, :cond_9

    .line 950
    const/16 v29, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 951
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    .line 954
    :cond_9
    invoke-virtual {v11}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 955
    .local v13, "contentTypeLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 956
    int-to-long v0, v13

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendValueLength(J)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    .line 960
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 962
    .local v8, "contentId":[B
    if-eqz v8, :cond_a

    .line 963
    const/16 v29, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 964
    const/16 v29, 0x3c

    const/16 v30, 0x0

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/16 v29, 0x3e

    array-length v0, v8

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-byte v30, v8, v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 965
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/motorola/messaging/pdu/PduComposer;->appendQuotedString([B)V

    .line 972
    :cond_a
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 973
    .local v9, "contentLocation":[B
    if-eqz v9, :cond_b

    .line 974
    const/16 v29, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 975
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 979
    :cond_b
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 981
    .local v19, "headerLength":I
    const/16 v17, 0x0

    .line 982
    .local v17, "dataLength":I
    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getData()[B

    move-result-object v26

    .line 984
    .local v26, "partData":[B
    if-eqz v26, :cond_e

    .line 985
    const/16 v29, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/messaging/pdu/PduComposer;->arraycopy([BII)V

    .line 986
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1015
    :cond_c
    :goto_6
    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v29

    sub-int v29, v29, v19

    move/from16 v0, v17

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1016
    new-instance v29, Ljava/lang/RuntimeException;

    const-string v30, "BUG: Length sanity check failed"

    invoke-direct/range {v29 .. v30}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 967
    .end local v9    # "contentLocation":[B
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v26    # "partData":[B
    :cond_d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "<"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    new-instance v30, Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ">"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_5

    .line 988
    .restart local v9    # "contentLocation":[B
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v26    # "partData":[B
    :cond_e
    const/4 v14, 0x0

    .line 990
    .local v14, "cr":Ljava/io/InputStream;
    const/16 v29, 0x400

    :try_start_2
    move/from16 v0, v29

    new-array v6, v0, [B

    .line 991
    .local v6, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v29, v0

    invoke-virtual/range {v23 .. v23}, Lcom/motorola/messaging/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 992
    const/16 v21, 0x0

    .line 993
    .local v21, "len":I
    :goto_7
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    const/16 v29, -0x1

    move/from16 v0, v21

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    move/from16 v29, v0

    add-int v29, v29, v21

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 996
    add-int v17, v17, v21

    goto :goto_7

    .line 998
    .end local v6    # "buffer":[B
    .end local v21    # "len":I
    :catch_1
    move-exception v18

    .line 999
    .local v18, "e":Ljava/io/FileNotFoundException;
    const/16 v29, 0x1

    .line 1005
    if-eqz v14, :cond_0

    .line 1007
    :try_start_3
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 1008
    .end local v18    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v30

    goto/16 :goto_0

    .line 1000
    :catch_3
    move-exception v18

    .line 1001
    .local v18, "e":Ljava/io/IOException;
    const/16 v29, 0x1

    .line 1005
    if-eqz v14, :cond_0

    .line 1007
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 1002
    .end local v18    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v18

    .line 1003
    .local v18, "e":Ljava/lang/RuntimeException;
    const/16 v29, 0x1

    .line 1005
    if-eqz v14, :cond_0

    .line 1007
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1005
    .end local v18    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v29

    if-eqz v14, :cond_f

    .line 1007
    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1005
    :cond_f
    :goto_8
    throw v29

    .line 1019
    .end local v14    # "cr":Ljava/io/InputStream;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 1020
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1021
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    .line 900
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 1025
    .end local v4    # "attachment":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .end local v7    # "charset":I
    .end local v8    # "contentId":[B
    .end local v9    # "contentLocation":[B
    .end local v11    # "contentTypeBegin":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .end local v13    # "contentTypeLength":I
    .end local v17    # "dataLength":I
    .end local v19    # "headerLength":I
    .end local v22    # "name":[B
    .end local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .end local v24    # "partContentType":[B
    .end local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v26    # "partData":[B
    :cond_11
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1008
    .restart local v4    # "attachment":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .restart local v7    # "charset":I
    .restart local v8    # "contentId":[B
    .restart local v9    # "contentLocation":[B
    .restart local v11    # "contentTypeBegin":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    .restart local v13    # "contentTypeLength":I
    .restart local v14    # "cr":Ljava/io/InputStream;
    .restart local v17    # "dataLength":I
    .restart local v19    # "headerLength":I
    .restart local v22    # "name":[B
    .restart local v23    # "part":Lcom/motorola/messaging/pdu/PduPart;
    .restart local v24    # "partContentType":[B
    .restart local v25    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v26    # "partData":[B
    :catch_5
    move-exception v30

    goto :goto_8

    .line 1005
    .restart local v6    # "buffer":[B
    .restart local v21    # "len":I
    :cond_12
    if-eqz v14, :cond_c

    .line 1007
    :try_start_5
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_6

    .line 1008
    :catch_6
    move-exception v29

    goto/16 :goto_6
.end method

.method private makeNotifyResp()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 700
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 701
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 702
    iput v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 706
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 707
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 710
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    :cond_1
    :goto_0
    return v0

    .line 715
    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 720
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 725
    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 652
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    .line 653
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 654
    iput v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 658
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 659
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 662
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 693
    :cond_1
    :goto_0
    return v0

    .line 667
    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 672
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 677
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 682
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 685
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 693
    goto :goto_0
.end method

.method private makeSendReqPdu()I
    .locals 5

    .prologue
    const/16 v4, 0x98

    const/4 v2, 0x1

    .line 761
    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v3, :cond_0

    .line 762
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 763
    const/4 v3, 0x0

    iput v3, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 767
    :cond_0
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 768
    const/16 v3, 0x80

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 771
    invoke-virtual {p0, v4}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 773
    iget-object v3, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPduHeader:Lcom/motorola/messaging/pdu/PduHeaders;

    invoke-virtual {v3, v4}, Lcom/motorola/messaging/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 774
    .local v1, "trid":[B
    if-nez v1, :cond_1

    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 778
    :cond_1
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 781
    const/16 v3, 0x8d

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 838
    :cond_2
    :goto_0
    return v2

    .line 786
    :cond_3
    const/16 v3, 0x85

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 789
    const/16 v3, 0x89

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 793
    const/4 v0, 0x0

    .line 796
    .local v0, "recipient":Z
    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 797
    const/4 v0, 0x1

    .line 801
    :cond_4
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 802
    const/4 v0, 0x1

    .line 806
    :cond_5
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_6

    .line 807
    const/4 v0, 0x1

    .line 811
    :cond_6
    if-eqz v0, :cond_2

    .line 816
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 820
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 823
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 826
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 829
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 832
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendHeader(I)I

    .line 835
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendOctet(I)V

    .line 838
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/PduComposer;->makeMessageBody()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 196
    iget v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 197
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .param p1, "date"    # J

    .prologue
    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/pdu/PduComposer;->appendLongInteger(J)V

    .line 397
    return-void
.end method

.method protected appendEncodedString(Lcom/motorola/messaging/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/motorola/messaging/pdu/EncodedStringValue;

    .prologue
    .line 324
    sget-boolean v4, Lcom/motorola/messaging/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 326
    :cond_0
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 327
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/motorola/messaging/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 328
    .local v3, "textString":[B
    if-nez v3, :cond_1

    .line 347
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v4, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->newbuf()V

    .line 338
    iget-object v4, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->mark()Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 340
    .local v2, "start":Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortInteger(I)V

    .line 341
    invoke-virtual {p0, v3}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 343
    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 344
    .local v1, "len":I
    iget-object v4, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->pop()V

    .line 345
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/motorola/messaging/pdu/PduComposer;->appendValueLength(J)V

    .line 346
    iget-object v4, p0, Lcom/motorola/messaging/pdu/PduComposer;->mStack:Lcom/motorola/messaging/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/motorola/messaging/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 9
    .param p1, "longInt"    # J

    .prologue
    const/16 v7, 0x8

    .line 257
    move-wide v3, p1

    .line 260
    .local v3, "temp":J
    const/4 v2, 0x0

    .local v2, "size":I
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_0

    if-ge v2, v7, :cond_0

    .line 261
    ushr-long/2addr v3, v7

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortLength(I)V

    .line 269
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 271
    .local v1, "shift":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 272
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 273
    add-int/lit8 v1, v1, -0x8

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 226
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->appendQuotedString([B)V

    .line 452
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .prologue
    const/4 v1, 0x0

    .line 434
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 435
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/messaging/pdu/PduComposer;->arraycopy([BII)V

    .line 436
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 437
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 214
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 215
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 239
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->appendTextString([B)V

    .line 312
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 290
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    .line 291
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 294
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/messaging/pdu/PduComposer;->arraycopy([BII)V

    .line 295
    invoke-virtual {p0, v1}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 296
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 11
    .param p1, "value"    # J

    .prologue
    const-wide/16 v9, 0x7f

    .line 364
    const-wide/16 v1, 0x7f

    .line 366
    .local v1, "max":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 367
    cmp-long v5, p1, v1

    if-gez v5, :cond_1

    .line 374
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    .line 375
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 376
    .local v3, "temp":J
    and-long/2addr v3, v9

    .line 378
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 380
    add-int/lit8 v0, v0, -0x1

    .line 381
    goto :goto_1

    .line 371
    .end local v3    # "temp":J
    :cond_1
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 383
    :cond_2
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 384
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 413
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 414
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->appendShortLength(I)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/motorola/messaging/pdu/PduComposer;->append(I)V

    .line 419
    invoke-virtual {p0, p1, p2}, Lcom/motorola/messaging/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 188
    iget v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPosition:I

    .line 189
    return-void
.end method

.method public make()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/motorola/messaging/pdu/PduComposer;->mPdu:Lcom/motorola/messaging/pdu/GenericPdu;

    invoke-virtual {v2}, Lcom/motorola/messaging/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 155
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :goto_0
    :pswitch_0
    return-object v1

    .line 157
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/PduComposer;->makeSendReqPdu()I

    move-result v2

    if-nez v2, :cond_0

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 162
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 167
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 172
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/messaging/pdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
