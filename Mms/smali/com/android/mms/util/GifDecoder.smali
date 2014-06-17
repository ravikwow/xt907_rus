.class public Lcom/android/mms/util/GifDecoder;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/GifDecoder$GifFrame;
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
            "Lcom/android/mms/util/GifDecoder$GifFrame;",
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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/util/GifDecoder;->loopCount:I

    .line 97
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    .line 99
    iput v1, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    .line 102
    iput v1, p0, Lcom/android/mms/util/GifDecoder;->dispose:I

    .line 105
    iput v1, p0, Lcom/android/mms/util/GifDecoder;->lastDispose:I

    .line 107
    iput-boolean v1, p0, Lcom/android/mms/util/GifDecoder;->transparency:Z

    .line 109
    iput v1, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    .line 130
    iput-boolean v1, p0, Lcom/android/mms/util/GifDecoder;->checkAnimation:Z

    .line 626
    iput-boolean v1, p0, Lcom/android/mms/util/GifDecoder;->done:Z

    .line 860
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->name:Ljava/lang/String;

    .line 133
    return-void
.end method


# virtual methods
.method protected decodeImageData()V
    .locals 25

    .prologue
    .line 422
    const/4 v2, -0x1

    .line 423
    .local v2, "NullCode":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/util/GifDecoder;->iw:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/util/GifDecoder;->ih:I

    move/from16 v24, v0

    mul-int v17, v23, v24

    .line 426
    .local v17, "npix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 427
    :cond_0
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/GifDecoder;->pixels:[B

    .line 429
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 430
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [S

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/GifDecoder;->prefix:[S

    .line 431
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 432
    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/GifDecoder;->suffix:[B

    .line 433
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    if-nez v23, :cond_4

    .line 434
    const/16 v23, 0x1001

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    .line 438
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v11

    .line 439
    .local v11, "data_size":I
    const/16 v23, 0x1

    shl-int v6, v23, v11

    .line 440
    .local v6, "clear":I
    add-int/lit8 v13, v6, 0x1

    .line 441
    .local v13, "end_of_information":I
    add-int/lit8 v3, v6, 0x2

    .line 442
    .local v3, "available":I
    move/from16 v18, v2

    .line 443
    .local v18, "old_code":I
    add-int/lit8 v9, v11, 0x1

    .line 444
    .local v9, "code_size":I
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 445
    .local v8, "code_mask":I
    const/4 v7, 0x0

    .local v7, "code":I
    :goto_0
    if-ge v7, v6, :cond_5

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v7

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v7

    move/from16 v24, v0

    aput-byte v24, v23, v7

    .line 445
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 452
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

    .line 454
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

    .line 455
    if-nez v22, :cond_12

    .line 456
    if-ge v5, v9, :cond_8

    .line 458
    if-nez v10, :cond_7

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/util/GifDecoder;->readBlock()I

    move-result v10

    .line 461
    if-gtz v10, :cond_6

    move/from16 v21, v22

    .line 530
    .end local v22    # "top":I
    .restart local v21    # "top":I
    :goto_2
    move/from16 v15, v20

    :goto_3
    move/from16 v0, v17

    if-ge v15, v0, :cond_10

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v15

    .line 530
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 463
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_6
    const/4 v4, 0x0

    .line 465
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->block:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v4

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v5

    add-int v12, v12, v23

    .line 466
    add-int/lit8 v5, v5, 0x8

    .line 467
    add-int/lit8 v4, v4, 0x1

    .line 468
    add-int/lit8 v10, v10, -0x1

    .line 469
    goto :goto_1

    .line 474
    :cond_8
    and-int v7, v12, v8

    .line 475
    shr-int/2addr v12, v9

    .line 476
    sub-int/2addr v5, v9

    .line 480
    if-gt v7, v3, :cond_11

    if-ne v7, v13, :cond_9

    move/from16 v21, v22

    .line 481
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto :goto_2

    .line 482
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_9
    if-ne v7, v6, :cond_a

    .line 484
    add-int/lit8 v9, v11, 0x1

    .line 485
    const/16 v23, 0x1

    shl-int v23, v23, v9

    add-int/lit8 v8, v23, -0x1

    .line 486
    add-int/lit8 v3, v6, 0x2

    .line 487
    move/from16 v18, v2

    .line 488
    goto :goto_1

    .line 490
    :cond_a
    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 492
    move/from16 v18, v7

    .line 493
    move v14, v7

    move/from16 v22, v21

    .line 494
    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_1

    .line 496
    :cond_b
    move/from16 v16, v7

    .line 497
    .local v16, "in_code":I
    if-ne v7, v3, :cond_c

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 499
    move/from16 v7, v18

    move/from16 v22, v21

    .line 501
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_c
    :goto_4
    if-le v7, v6, :cond_d

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v7

    aput-byte v24, v23, v22

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    aget-short v7, v23, v7

    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto :goto_4

    .line 505
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v7

    move/from16 v0, v23

    and-int/lit16 v14, v0, 0xff

    .line 509
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move/from16 v21, v22

    .line 510
    .end local v22    # "top":I
    .restart local v21    # "top":I
    goto/16 :goto_2

    .line 511
    .end local v21    # "top":I
    .restart local v22    # "top":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "top":I
    .restart local v21    # "top":I
    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->prefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v3

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->suffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v14

    move/from16 v24, v0

    aput-byte v24, v23, v3

    .line 514
    add-int/lit8 v3, v3, 0x1

    .line 515
    and-int v23, v3, v8

    if-nez v23, :cond_f

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v3, v0, :cond_f

    .line 517
    add-int/lit8 v9, v9, 0x1

    .line 518
    add-int/2addr v8, v3

    .line 520
    :cond_f
    move/from16 v18, v16

    .line 525
    .end local v16    # "in_code":I
    :goto_5
    add-int/lit8 v21, v21, -0x1

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "pi":I
    .restart local v19    # "pi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/GifDecoder;->pixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 527
    add-int/lit8 v15, v15, 0x1

    move/from16 v20, v19

    .end local v19    # "pi":I
    .restart local v20    # "pi":I
    move/from16 v22, v21

    .end local v21    # "top":I
    .restart local v22    # "top":I
    goto/16 :goto_1

    .line 534
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
    .line 540
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    .line 163
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-ne v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/GifDecoder$GifFrame;

    iget v0, v0, Lcom/android/mms/util/GifDecoder$GifFrame;->delay:I

    iput v0, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    return v0
.end method

.method public getFrame(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 302
    .local v0, "im":Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-ne v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/GifDecoder$GifFrame;

    iget-object v0, v1, Lcom/android/mms/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 305
    :cond_0
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->loopCount:I

    return v0
.end method

.method protected init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 547
    iput v0, p0, Lcom/android/mms/util/GifDecoder;->status:I

    .line 548
    iput v0, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    .line 550
    iput-object v1, p0, Lcom/android/mms/util/GifDecoder;->gct:[I

    .line 551
    iput-object v1, p0, Lcom/android/mms/util/GifDecoder;->lct:[I

    .line 552
    return-void
.end method

.method protected read()I
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 560
    .local v0, "curByte":I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 564
    :goto_0
    return v0

    .line 561
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->status:I

    goto :goto_0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    const/4 v1, -0x1

    .line 388
    :goto_0
    return v1

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->init()V

    .line 371
    instance-of v1, p1, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_1

    .line 372
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1    # "is":Ljava/io/InputStream;
    .local v0, "is":Ljava/io/InputStream;
    move-object p1, v0

    .end local v0    # "is":Ljava/io/InputStream;
    .restart local p1    # "is":Ljava/io/InputStream;
    :cond_1
    move-object v1, p1

    .line 373
    check-cast v1, Ljava/io/BufferedInputStream;

    iput-object v1, p0, Lcom/android/mms/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    .line 374
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readHeader()V

    .line 375
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v1

    if-nez v1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readContents()V

    .line 377
    iget v1, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-gez v1, :cond_2

    .line 378
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->status:I

    .line 385
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_1
    iget v1, p0, Lcom/android/mms/util/GifDecoder;->status:I

    goto :goto_0

    .line 386
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected readBlock()I
    .locals 5

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    .line 574
    const/4 v1, 0x0

    .line 575
    .local v1, "n":I
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_1

    .line 577
    const/4 v0, 0x0

    .line 578
    .local v0, "count":I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    if-ge v1, v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    iget v4, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 580
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 587
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    if-ge v1, v2, :cond_1

    .line 588
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->status:I

    .line 591
    .end local v0    # "count":I
    :cond_1
    return v1

    .line 582
    .restart local v0    # "count":I
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected readColorTable(I)[I
    .locals 13
    .param p1, "ncolors"    # I

    .prologue
    .line 602
    mul-int/lit8 v8, p1, 0x3

    .line 603
    .local v8, "nbytes":I
    const/4 v10, 0x0

    .line 604
    .local v10, "tab":[I
    new-array v1, v8, [B

    .line 605
    .local v1, "c":[B
    const/4 v7, 0x0

    .line 607
    .local v7, "n":I
    :try_start_0
    iget-object v11, p0, Lcom/android/mms/util/GifDecoder;->in:Ljava/io/BufferedInputStream;

    invoke-virtual {v11, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 610
    :goto_0
    if-ge v7, v8, :cond_1

    .line 611
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/mms/util/GifDecoder;->status:I

    .line 623
    :cond_0
    return-object v10

    .line 613
    :cond_1
    const/16 v11, 0x100

    new-array v10, v11, [I

    .line 614
    const/4 v3, 0x0

    .line 615
    .local v3, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    move v4, v3

    .line 616
    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    if-ge v4, p1, :cond_0

    .line 617
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v9, v11, 0xff

    .line 618
    .local v9, "r":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-byte v11, v1, v5

    and-int/lit16 v2, v11, 0xff

    .line 619
    .local v2, "g":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-byte v11, v1, v6

    and-int/lit16 v0, v11, 0xff

    .line 620
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

    .line 621
    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .line 608
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

    .line 634
    :goto_0
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/mms/util/GifDecoder;->done:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v3

    if-nez v3, :cond_2

    .line 635
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    .line 636
    .local v1, "code":I
    sparse-switch v1, :sswitch_data_0

    .line 674
    iput v5, p0, Lcom/android/mms/util/GifDecoder;->status:I

    goto :goto_0

    .line 639
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readImage()V

    goto :goto_0

    .line 643
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    .line 644
    sparse-switch v1, :sswitch_data_1

    .line 662
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->skip()V

    goto :goto_0

    .line 646
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readGraphicControlExt()V

    goto :goto_0

    .line 650
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readBlock()I

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 653
    iget-object v3, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    aget-byte v3, v3, v2

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 655
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readNetscapeExt()V

    goto :goto_0

    .line 658
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->skip()V

    goto :goto_0

    .line 667
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :sswitch_5
    iput-boolean v5, p0, Lcom/android/mms/util/GifDecoder;->done:Z

    goto :goto_0

    .line 677
    .end local v1    # "code":I
    :cond_2
    return-void

    .line 636
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x2c -> :sswitch_1
        0x3b -> :sswitch_5
    .end sparse-switch

    .line 644
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

    .line 683
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    .line 684
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v0

    .line 685
    .local v0, "packed":I
    and-int/lit8 v2, v0, 0x1c

    shr-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->dispose:I

    .line 686
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->dispose:I

    if-nez v2, :cond_0

    .line 687
    iput v1, p0, Lcom/android/mms/util/GifDecoder;->dispose:I

    .line 689
    :cond_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/util/GifDecoder;->transparency:Z

    .line 690
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    .line 691
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->transIndex:I

    .line 692
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    .line 693
    return-void

    .line 689
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readHeader()V
    .locals 4

    .prologue
    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 700
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 701
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GIF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 704
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->status:I

    .line 713
    :cond_1
    :goto_1
    return-void

    .line 708
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readLSD()V

    .line 709
    iget-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->gctFlag:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_1

    .line 710
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->gctSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/GifDecoder;->gct:[I

    .line 711
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->gct:[I

    iget v3, p0, Lcom/android/mms/util/GifDecoder;->bgIndex:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->bgColor:I

    goto :goto_1
.end method

.method protected readImage()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->ix:I

    .line 720
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->iy:I

    .line 721
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->iw:I

    .line 722
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v2

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->ih:I

    .line 724
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v0

    .line 725
    .local v0, "packed":I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->lctFlag:Z

    .line 726
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->interlace:Z

    .line 729
    const/4 v2, 0x2

    and-int/lit8 v5, v0, 0x7

    shl-int/2addr v2, v5

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->lctSize:I

    .line 731
    iget-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->lctFlag:Z

    if-eqz v2, :cond_5

    .line 732
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->lctSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/util/GifDecoder;->readColorTable(I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/GifDecoder;->lct:[I

    .line 733
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->lct:[I

    iput-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    .line 740
    :cond_0
    :goto_2
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    if-eqz v2, :cond_8

    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "save":I
    iget-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_1

    .line 743
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    iget v5, p0, Lcom/android/mms/util/GifDecoder;->transIndex:I

    aget v1, v2, v5

    .line 744
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    iget v5, p0, Lcom/android/mms/util/GifDecoder;->transIndex:I

    aput v4, v2, v5

    .line 747
    :cond_1
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    .line 748
    iget-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->checkAnimation:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    if-le v2, v3, :cond_6

    .line 749
    iput-boolean v3, p0, Lcom/android/mms/util/GifDecoder;->done:Z

    .line 772
    .end local v1    # "save":I
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 725
    goto :goto_0

    :cond_4
    move v2, v4

    .line 726
    goto :goto_1

    .line 735
    :cond_5
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->gct:[I

    iput-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    .line 736
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->bgIndex:I

    iget v5, p0, Lcom/android/mms/util/GifDecoder;->transIndex:I

    if-ne v2, v5, :cond_0

    .line 737
    iput v4, p0, Lcom/android/mms/util/GifDecoder;->bgColor:I

    goto :goto_2

    .line 752
    .restart local v1    # "save":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->decodeImageData()V

    .line 753
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->skip()V

    .line 755
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v2

    if-nez v2, :cond_2

    .line 759
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->width:I

    iget v3, p0, Lcom/android/mms/util/GifDecoder;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    .line 761
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->setPixels()V

    .line 763
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->frames:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/mms/util/GifDecoder$GifFrame;

    iget-object v4, p0, Lcom/android/mms/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/mms/util/GifDecoder;->delay:I

    invoke-direct {v3, v4, v5}, Lcom/android/mms/util/GifDecoder$GifFrame;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-boolean v2, p0, Lcom/android/mms/util/GifDecoder;->transparency:Z

    if-eqz v2, :cond_7

    .line 766
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->act:[I

    iget v3, p0, Lcom/android/mms/util/GifDecoder;->transIndex:I

    aput v1, v2, v3

    .line 768
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->resetFrame()V

    goto :goto_3

    .line 770
    .end local v1    # "save":I
    :cond_8
    iput v3, p0, Lcom/android/mms/util/GifDecoder;->status:I

    goto :goto_3
.end method

.method protected readLSD()V
    .locals 3

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->width:I

    .line 781
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readShort()I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->height:I

    .line 784
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v0

    .line 785
    .local v0, "packed":I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/util/GifDecoder;->gctFlag:Z

    .line 788
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->gctSize:I

    .line 790
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->bgIndex:I

    .line 791
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/GifDecoder;->pixelAspect:I

    .line 792
    return-void

    .line 785
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected readNetscapeExt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 799
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readBlock()I

    .line 800
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    if-ne v2, v4, :cond_1

    .line 802
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    aget-byte v2, v2, v4

    and-int/lit16 v0, v2, 0xff

    .line 803
    .local v0, "b1":I
    iget-object v2, p0, Lcom/android/mms/util/GifDecoder;->block:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 804
    .local v1, "b2":I
    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/mms/util/GifDecoder;->loopCount:I

    .line 806
    .end local v0    # "b1":I
    .end local v1    # "b2":I
    :cond_1
    iget v2, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 807
    :cond_2
    return-void
.end method

.method protected readShort()I
    .locals 2

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 4

    .prologue
    .line 845
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->getFrameCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 847
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/mms/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 848
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 845
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 858
    :cond_1
    return-void
.end method

.method protected resetFrame()V
    .locals 5

    .prologue
    .line 821
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->dispose:I

    iput v0, p0, Lcom/android/mms/util/GifDecoder;->lastDispose:I

    .line 822
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/mms/util/GifDecoder;->ix:I

    iget v2, p0, Lcom/android/mms/util/GifDecoder;->iy:I

    iget v3, p0, Lcom/android/mms/util/GifDecoder;->iw:I

    iget v4, p0, Lcom/android/mms/util/GifDecoder;->ih:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->lastRect:Landroid/graphics/Rect;

    .line 823
    iget-object v0, p0, Lcom/android/mms/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 824
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->bgColor:I

    iput v0, p0, Lcom/android/mms/util/GifDecoder;->lastBgColor:I

    .line 828
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/GifDecoder;->lct:[I

    .line 829
    return-void
.end method

.method protected setPixels()V
    .locals 25

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/util/GifDecoder;->height:I

    mul-int/2addr v1, v3

    new-array v12, v1, [I

    .line 206
    .local v12, "dest":[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->lastDispose:I

    if-lez v1, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->lastDispose:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->frameCount:I

    add-int/lit8 v21, v1, -0x2

    .line 210
    .local v21, "n":I
    if-lez v21, :cond_6

    .line 211
    add-int/lit8 v1, v21, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/GifDecoder;->getFrame(I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/mms/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    .line 217
    .end local v21    # "n":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/util/GifDecoder;->height:I

    mul-int/2addr v1, v3

    new-array v2, v1, [I

    .line 219
    .local v2, "prev":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/util/GifDecoder;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/mms/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/util/GifDecoder;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 220
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/util/GifDecoder;->height:I

    mul-int/2addr v4, v5

    invoke-static {v2, v1, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->lastDispose:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 245
    .end local v2    # "prev":[I
    :cond_1
    const/16 v22, 0x1

    .line 246
    .local v22, "pass":I
    const/16 v17, 0x8

    .line 247
    .local v17, "inc":I
    const/16 v16, 0x0

    .line 248
    .local v16, "iline":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->ih:I

    if-ge v15, v1, :cond_8

    .line 249
    move/from16 v20, v15

    .line 250
    .local v20, "line":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/mms/util/GifDecoder;->interlace:Z

    if-eqz v1, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->ih:I

    move/from16 v0, v16

    if-lt v0, v1, :cond_2

    .line 252
    add-int/lit8 v22, v22, 0x1

    .line 253
    packed-switch v22, :pswitch_data_0

    .line 266
    :cond_2
    :goto_2
    move/from16 v20, v16

    .line 267
    add-int v16, v16, v17

    .line 269
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->iy:I

    add-int v20, v20, v1

    .line 270
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->height:I

    move/from16 v0, v20

    if-ge v0, v1, :cond_7

    .line 271
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->width:I

    mul-int v19, v20, v1

    .line 272
    .local v19, "k":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->ix:I

    add-int v14, v19, v1

    .line 273
    .local v14, "dx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->iw:I

    add-int v13, v14, v1

    .line 274
    .local v13, "dlim":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->width:I

    add-int v1, v1, v19

    if-ge v1, v13, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->width:I

    add-int v13, v19, v1

    .line 277
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/util/GifDecoder;->iw:I

    mul-int v23, v15, v1

    .local v23, "sx":I
    move/from16 v24, v23

    .line 278
    .end local v23    # "sx":I
    .local v24, "sx":I
    :goto_3
    if-ge v14, v13, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/GifDecoder;->pixels:[B

    add-int/lit8 v23, v24, 0x1

    .end local v24    # "sx":I
    .restart local v23    # "sx":I
    aget-byte v1, v1, v24

    and-int/lit16 v0, v1, 0xff

    move/from16 v18, v0

    .line 281
    .local v18, "index":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/util/GifDecoder;->act:[I

    aget v11, v1, v18

    .line 282
    .local v11, "c":I
    if-eqz v11, :cond_5

    .line 283
    aput v11, v12, v14

    .line 285
    :cond_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v24, v23

    .line 286
    .end local v23    # "sx":I
    .restart local v24    # "sx":I
    goto :goto_3

    .line 213
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

    iput-object v1, v0, Lcom/android/mms/util/GifDecoder;->lastImage:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 255
    .end local v21    # "n":I
    .restart local v15    # "i":I
    .restart local v16    # "iline":I
    .restart local v17    # "inc":I
    .restart local v20    # "line":I
    .restart local v22    # "pass":I
    :pswitch_0
    const/16 v16, 0x4

    .line 256
    goto :goto_2

    .line 258
    :pswitch_1
    const/16 v16, 0x2

    .line 259
    const/16 v17, 0x4

    .line 260
    goto :goto_2

    .line 262
    :pswitch_2
    const/16 v16, 0x1

    .line 263
    const/16 v17, 0x2

    goto :goto_2

    .line 248
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 289
    .end local v20    # "line":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/util/GifDecoder;->image:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/mms/util/GifDecoder;->width:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/mms/util/GifDecoder;->width:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/mms/util/GifDecoder;->height:I

    move-object v4, v12

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 290
    return-void

    .line 253
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
    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->readBlock()I

    .line 837
    iget v0, p0, Lcom/android/mms/util/GifDecoder;->blockSize:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/util/GifDecoder;->err()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/mms/util/GifDecoder;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/GifDecoder;->name:Ljava/lang/String;

    goto :goto_0
.end method
