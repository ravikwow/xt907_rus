.class public Lcom/motorola/messaging/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/util/GifDecoder$GifFrame;
    }
.end annotation


# instance fields
.field protected act:[I

.field protected bgColor:I

.field protected bgIndex:I

.field protected block:[B

.field protected blockSize:I

.field protected checkAnimation:Z

.field protected delay:I

.field protected dispose:I

.field done:Z

.field protected frameCount:I

.field protected frames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/util/GifDecoder$GifFrame;",
            ">;"
        }
    .end annotation
.end field

.field protected gct:[I

.field protected gctFlag:Z

.field protected gctSize:I

.field protected height:I

.field protected ih:I

.field protected image:Landroid/graphics/Bitmap;

.field protected in:Ljava/io/BufferedInputStream;

.field protected interlace:Z

.field protected iw:I

.field protected ix:I

.field protected iy:I

.field protected lastBgColor:I

.field protected lastDispose:I

.field protected lastImage:Landroid/graphics/Bitmap;

.field protected lastRect:Landroid/graphics/Rect;

.field protected lct:[I

.field protected lctFlag:Z

.field protected lctSize:I

.field protected loopCount:I

.field private name:Ljava/lang/String;

.field protected pixelAspect:I

.field protected pixelStack:[B

.field protected pixels:[B

.field protected prefix:[S

.field protected status:I

.field protected suffix:[B

.field protected transIndex:I

.field protected transparency:Z

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->loopCount:I

    .line 97
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    .line 99
    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    .line 102
    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->dispose:I

    .line 105
    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->lastDispose:I

    .line 107
    iput-boolean v1, p0, Lcom/motorola/messaging/util/GifDecoder;->transparency:Z

    .line 109
    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    .line 130
    iput-boolean v1, p0, Lcom/motorola/messaging/util/GifDecoder;->checkAnimation:Z

    .line 620
    iput-boolean v1, p0, Lcom/motorola/messaging/util/GifDecoder;->done:Z

    .line 852
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->name:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 416
    const/4 v2, -0x1

    .line 417
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/messaging/util/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/motorola/messaging/util/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 420
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 421
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 424
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/messaging/util/GifDecoder;->prefix:[S

    .line 425
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 426
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    .line 427
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 428
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    .line 432
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v11

    .line 433
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 434
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 435
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 436
    .local v3, "available":I
    move/from16 v18, v2

    .line 437
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 438
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 439
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 439
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 446
    :cond_5
    const/4 v4, 0x0

    .local v4, "bi":I
    move/from16 v19, v4

    .local v19, "pi":I
    move/from16 v21, v4

    .local v21, "top":I
    move v14, v4

    .local v14, "first":I
    move v10, v4

    .local v10, "count":I
    move v5, v4

    .local v5, "bits":I
    move v12, v4

    .line 448
    .local v12, "datum":I
    const/4 v15, 0x0

    .local v15, "i":I
    move/from16 v20, v19

    .end local v19    # "pi":I
    .local v20, "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .local v22, "top":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    .line 449
    if-nez v22, :cond_12

    .line 450
    if-ge v5, v9, :cond_8

    .line 452
    if-nez v10, :cond_7

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/messaging/util/GifDecoder;->readBlock()I

    move-result v10

    .line 455
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 524
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 524
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 457
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v4, 0x0

    .line 459
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 460
    add-int/lit8 v5, v5, 0x8

    .line 461
    add-int/lit8 v4, v4, 0x1

    .line 462
    add-int/lit8 v10, v10, -0x1

    .line 463
    goto :goto_1

    .line 468
    :cond_8
    and-int v7, v12, v8

    .line 469
    shr-int/2addr v12, v9

    .line 470
    sub-int/2addr v5, v9

    .line 474
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 475
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 476
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 478
    add-int/lit8 v9, v11, 0x1

    .line 479
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 480
    add-int/lit8 v3, v6, 0x2

    .line 481
    move/from16 v18, v2

    .line 482
    goto :goto_1

    .line 484
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 486
    move/from16 v18, v7

    .line 487
    move v14, v7

    move/from16 v22, v21

    .line 488
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 490
    :cond_b
    move/from16 v16, v7

    .line 491
    .local v16, "in_code":I
    if-ne v7, v3, :cond_c

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 493
    move/from16 v7, v18

    move/from16 v22, v21

    .line 495
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 499
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 503
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 504
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 505
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 508
    add-int/lit8 v3, v3, 0x1

    .line 509
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 511
    add-int/lit8 v9, v9, 0x1

    .line 512
    add-int/2addr v8, v3

    .line 514
    :cond_f
    move/from16 v18, v16

    .line 519
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/messaging/util/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 521
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 528
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :cond_10
    return-void

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_11
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_12
    move/from16 v21, v22

    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_5
.end method

.method protected err()Z
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    .line 160
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/util/GifDecoder$GifFrame;

    iget v0, v0, Lcom/motorola/messaging/util/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    .line 163
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "im":Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/motorola/messaging/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/util/GifDecoder$GifFrame;

    iget-object v0, v1, Lcom/motorola/messaging/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 299
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->loopCount:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 541
    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    .line 542
    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    .line 543
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 544
    iput-object v1, p0, Lcom/motorola/messaging/util/GifDecoder;->gct:[I

    .line 545
    iput-object v1, p0, Lcom/motorola/messaging/util/GifDecoder;->lct:[I

    .line 546
    return-void
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 554
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 558
    :goto_0
    return v0

    .line 555
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 361
    if-nez p1, :cond_0

    .line 362
    const/4 v1, -0x1

    .line 382
    :goto_0
    return v1

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->init()V

    .line 365
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_1

    .line 366
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object p1, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_1
    move-object v1, p1

    .line 367
    check-cast v1, Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lcom/motorola/messaging/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 368
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readHeader()V

    .line 369
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readContents()V

    .line 371
    iget v1, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    if-gez v1, :cond_2

    .line 372
    const/4 v1, 0x1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    .line 379
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    :goto_1
    iget v1, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    goto :goto_0

    .line 380
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 5

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, "n":I
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_1

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 573
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    iget v4, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 574
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 581
    :cond_0
    :goto_1
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 582
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    .line 585
    .end local v0    # "count":I
    :cond_1
    return v1

    .line 576
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    .line 578
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 13
    .param p1, "ncolors"    # I

    .prologue
    .line 596
    mul-int/lit8 v8, p1, 0x3

    .line 597
    .local v8, "nbytes":I
    const/4 v10, 0x0

    .line 598
    .local v10, "tab":[I
    new-array v1, v8, [B

    .line 599
    .local v1, "c":[B
    const/4 v7, 0x0

    .line 601
    .local v7, "n":I
    :try_start_0
    iget-object v11, p0, Lcom/motorola/messaging/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 604
    :goto_0
    if-ge v7, v8, :cond_1

    .line 605
    const/4 v11, 0x1

    iput v11, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    .line 617
    :cond_0
    return-object v10

    .line 607
    :cond_1
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    move v4, v3

    .line 610
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 611
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    .line 612
    .local v9, "r":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v5

    and-int/lit16 v2, v11, 0xff

    .line 613
    .local v2, "g":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v0, v11, 0xff

    .line 614
    .local v0, "b":I
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/high16 v11, -0x1000000

    shl-int/lit8 v12, v9, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v2, 0x8

    or-int/2addr v11, v12

    or-int/2addr v11, v0

    aput v11, v10, v4

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    move v4, v3

    .line 615
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 602
    .end local v0    # "b":I
    .end local v2    # "g":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "r":I
    :catch_0
    move-exception v11

    goto :goto_0
.end method

.method protected readContents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 628
    :goto_0
    :sswitch_0
    iget-boolean v3, p0, Lcom/motorola/messaging/util/GifDecoder;->done:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    .line 630
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 668
    iput v5, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    goto :goto_0

    .line 633
    :sswitch_1
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readImage()V

    goto :goto_0

    .line 637
    :sswitch_2
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    .line 638
    sparse-switch v1, :sswitch_data_1

    .line 656
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->skip()V

    goto :goto_0

    .line 640
    :sswitch_3
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 644
    :sswitch_4
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readBlock()I

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 647
    iget-object v3, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 649
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 650
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->skip()V

    goto :goto_0

    .line 661
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :sswitch_5
    iput-boolean v5, p0, Lcom/motorola/messaging/util/GifDecoder;->done:Z

    goto :goto_0

    .line 671
    .end local v1    # "code":I
    :cond_2
    return-void

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 638
    :sswitch_data_1
    .sparse-switch
        0xf9 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method protected readGraphicControlExt()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 677
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    .line 678
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v0

    .line 679
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->dispose:I

    .line 680
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 681
    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->dispose:I

    .line 683
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/messaging/util/GifDecoder;->transparency:Z

    .line 684
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    .line 685
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->transIndex:I

    .line 686
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    .line 687
    return-void

    .line 683
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 698
    const/4 v2, 0x1

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    .line 707
    :cond_1
    :goto_1
    return-void

    .line 702
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readLSD()V

    .line 703
    iget-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 704
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->gct:[I

    .line 705
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->gct:[I

    iget v3, p0, Lcom/motorola/messaging/util/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 713
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->ix:I

    .line 714
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->iy:I

    .line 715
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->iw:I

    .line 716
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->ih:I

    .line 718
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v0

    .line 719
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lctFlag:Z

    .line 720
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->interlace:Z

    .line 723
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lctSize:I

    .line 725
    iget-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_5

    .line 726
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/motorola/messaging/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lct:[I

    .line 727
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    .line 734
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    if-eqz v2, :cond_8

    .line 735
    const/4 v1, 0x0

    .line 736
    .local v1, "save":I
    iget-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 737
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    iget v5, p0, Lcom/motorola/messaging/util/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 738
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    iget v5, p0, Lcom/motorola/messaging/util/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 741
    :cond_1
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    .line 742
    iget-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->checkAnimation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    if-le v2, v3, :cond_6

    .line 743
    iput-boolean v3, p0, Lcom/motorola/messaging/util/GifDecoder;->done:Z

    .line 766
    .end local v1    # "save":I
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 719
    goto :goto_0

    :cond_4
    move v2, v4

    .line 720
    goto :goto_1

    .line 729
    :cond_5
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    .line 730
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/motorola/messaging/util/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 731
    iput v4, p0, Lcom/motorola/messaging/util/GifDecoder;->bgColor:I

    goto :goto_2

    .line 746
    .restart local v1    # "save":I
    :cond_6
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->decodeImageData()V

    .line 747
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->skip()V

    .line 749
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_2

    .line 753
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    iget v3, p0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 755
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->setPixels()V

    .line 757
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->frames:Ljava/util/ArrayList;

    new-instance v3, Lcom/motorola/messaging/util/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/motorola/messaging/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/motorola/messaging/util/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/motorola/messaging/util/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-boolean v2, p0, Lcom/motorola/messaging/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_7

    .line 760
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    iget v3, p0, Lcom/motorola/messaging/util/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 762
    :cond_7
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->resetFrame()V

    goto :goto_3

    .line 764
    .end local v1    # "save":I
    :cond_8
    iput v3, p0, Lcom/motorola/messaging/util/GifDecoder;->status:I

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    .line 775
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    .line 778
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v0

    .line 779
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/motorola/messaging/util/GifDecoder;->gctFlag:Z

    .line 782
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->gctSize:I

    .line 784
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->bgIndex:I

    .line 785
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/motorola/messaging/util/GifDecoder;->pixelAspect:I

    .line 786
    return-void

    .line 779
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readBlock()I

    .line 794
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 796
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 797
    .local v0, "b1":I
    iget-object v2, p0, Lcom/motorola/messaging/util/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 798
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/motorola/messaging/util/GifDecoder;->loopCount:I

    .line 800
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 801
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 808
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 839
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->getFrameCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 841
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/motorola/messaging/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 842
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 846
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 850
    :cond_1
    return-void
.end method

.method protected resetFrame()V
    .locals 5

    .prologue
    .line 815
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->dispose:I

    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->lastDispose:I

    .line 816
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/motorola/messaging/util/GifDecoder;->ix:I

    iget v2, p0, Lcom/motorola/messaging/util/GifDecoder;->iy:I

    iget v3, p0, Lcom/motorola/messaging/util/GifDecoder;->iw:I

    iget v4, p0, Lcom/motorola/messaging/util/GifDecoder;->ih:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->lastRect:Landroid/graphics/Rect;

    .line 817
    iget-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 818
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/motorola/messaging/util/GifDecoder;->lastBgColor:I

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->lct:[I

    .line 823
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    mul-int/2addr v1, v3

    new-array v12, v1, [I

    .line 203
    .local v12, "dest":[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastDispose:I

    if-lez v1, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastDispose:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 206
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->frameCount:I

    add-int/lit8 v21, v1, -0x2

    .line 207
    .local v21, "n":I
    if-lez v21, :cond_6

    .line 208
    add-int/lit8 v1, v21, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 214
    .end local v21    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 215
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 216
    .local v2, "prev":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 217
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    mul-int/2addr v4, v5

    invoke-static {v2, v1, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastDispose:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 242
    .end local v2    # "prev":[I
    :cond_1
    const/16 v22, 0x1

    .line 243
    .local v22, "pass":I
    const/16 v17, 0x8

    .line 244
    .local v17, "inc":I
    const/16 v16, 0x0

    .line 245
    .local v16, "iline":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->ih:I

    if-ge v15, v1, :cond_8

    .line 246
    move/from16 v20, v15

    .line 247
    .local v20, "line":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/motorola/messaging/util/GifDecoder;->interlace:Z

    if-eqz v1, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->ih:I

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 249
    add-int/lit8 v22, v22, 0x1

    .line 250
    packed-switch v22, :pswitch_data_0

    .line 263
    :cond_2
    :goto_2
    move/from16 v20, v16

    .line 264
    add-int v16, v16, v17

    .line 266
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->iy:I

    add-int v20, v20, v1

    .line 267
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    move/from16 v0, v20

    if-ge v0, v1, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    mul-int v19, v20, v1

    .line 269
    .local v19, "k":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->ix:I

    add-int v14, v19, v1

    .line 270
    .local v14, "dx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->iw:I

    add-int v13, v14, v1

    .line 271
    .local v13, "dlim":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    add-int v1, v1, v19

    if-ge v1, v13, :cond_4

    .line 272
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    add-int v13, v19, v1

    .line 274
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/messaging/util/GifDecoder;->iw:I

    mul-int v23, v15, v1

    .local v23, "sx":I
    move/from16 v24, v23

    .line 275
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_3
    if-ge v14, v13, :cond_7

    .line 277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v1, v1, v24

    and-int/lit16 v0, v1, 0xff

    move/from16 v18, v0

    .line 278
    .local v18, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->act:[I

    aget v11, v1, v18

    .line 279
    .local v11, "c":I
    if-eqz v11, :cond_5

    .line 280
    aput v11, v12, v14

    .line 282
    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v23

    .line 283
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_3

    .line 210
    .end local v11    # "c":I
    .end local v13    # "dlim":I
    .end local v14    # "dx":I
    .end local v15    # "i":I
    .end local v16    # "iline":I
    .end local v17    # "inc":I
    .end local v18    # "index":I
    .end local v19    # "k":I
    .end local v20    # "line":I
    .end local v22    # "pass":I
    .end local v24    # "sx":I
    .restart local v21    # "n":I
    :cond_6
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/motorola/messaging/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 252
    .end local v21    # "n":I
    .restart local v15    # "i":I
    .restart local v16    # "iline":I
    .restart local v17    # "inc":I
    .restart local v20    # "line":I
    .restart local v22    # "pass":I
    :pswitch_0
    const/16 v16, 0x4

    .line 253
    goto :goto_2

    .line 255
    :pswitch_1
    const/16 v16, 0x2

    .line 256
    const/16 v17, 0x4

    .line 257
    goto :goto_2

    .line 259
    :pswitch_2
    const/16 v16, 0x1

    .line 260
    const/16 v17, 0x2

    goto :goto_2

    .line 245
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 286
    .end local v20    # "line":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/motorola/messaging/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/motorola/messaging/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/motorola/messaging/util/GifDecoder;->height:I

    move-object v4, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 287
    return-void

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected skip()V
    .locals 1

    .prologue
    .line 830
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->readBlock()I

    .line 831
    iget v0, p0, Lcom/motorola/messaging/util/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/messaging/util/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/util/GifDecoder;->name:Ljava/lang/String;

    goto :goto_0
.end method
