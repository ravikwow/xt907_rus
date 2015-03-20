.class public Lcom/android/bluetooth/map/MapUtils/MapUtils;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;,
        Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
    }
.end annotation


# static fields
.field public static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMasService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1739
    return-void
.end method

.method public static fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .param p0, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1518
    sget-boolean v18, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v18, :cond_0

    const-string v18, "MapUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "inside fetch body Email :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_0
    const/4 v4, -0x1

    .line 1521
    .local v4, "beginVersionPos":I
    const/16 v17, 0x0

    .line 1522
    .local v17, "rfc822Flag":I
    const/4 v12, 0x0

    .line 1523
    .local v12, "mimeFlag":I
    const/4 v5, -0x1

    .line 1525
    .local v5, "beginVersionPos1":I
    const/4 v15, 0x0

    .line 1526
    .local v15, "pos1":I
    invoke-static/range {p0 .. p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBoundary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1527
    .local v6, "boundary":Ljava/lang/String;
    if-eqz v6, :cond_3

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1528
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1529
    const/4 v12, 0x1

    .line 1535
    :goto_0
    const-string v18, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 1536
    .local v7, "contentIndex":I
    if-lez v7, :cond_1

    .line 1537
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1538
    .local v8, "contentType":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "message/rfc822"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1539
    const/16 v17, 0x1

    .line 1542
    .end local v8    # "contentType":Ljava/lang/String;
    :cond_1
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v14, v18, v19

    .line 1543
    .local v14, "pos":I
    :goto_1
    if-lez v14, :cond_2

    .line 1544
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1545
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v4, v14, v18

    .line 1566
    :cond_2
    if-lez v4, :cond_e

    .line 1568
    if-nez v17, :cond_a

    .line 1569
    if-nez v12, :cond_9

    .line 1570
    const-string v18, "END:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 1571
    .local v11, "endVersionPos":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_8

    .line 1572
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1612
    .end local v11    # "endVersionPos":I
    :goto_2
    return-object v18

    .line 1532
    .end local v7    # "contentIndex":I
    .end local v14    # "pos":I
    :cond_3
    const-string v18, "Date:"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 1533
    const/4 v12, 0x0

    goto :goto_0

    .line 1548
    .restart local v7    # "contentIndex":I
    .restart local v14    # "pos":I
    :cond_4
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1549
    .local v13, "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_7

    .line 1552
    const-string v18, "BEGIN:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1553
    .local v3, "beginMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_5

    .line 1554
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no BEGIN:MSG"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1556
    :cond_5
    const-string v18, "END:MSG"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 1557
    .local v10, "endMsg":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_6

    .line 1558
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no END:MSG"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1560
    :cond_6
    const-string v18, "BEGIN:MSG"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v3

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v19, v10, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 1562
    .end local v3    # "beginMsg":I
    .end local v10    # "endMsg":I
    :cond_7
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v14, v13, v18

    .line 1564
    goto/16 :goto_1

    .line 1575
    .end local v13    # "next":I
    .restart local v11    # "endVersionPos":I
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto :goto_2

    .line 1578
    .end local v11    # "endVersionPos":I
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    sub-int v11, v18, v19

    .line 1581
    .restart local v11    # "endVersionPos":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    goto/16 :goto_2

    .line 1582
    :catch_0
    move-exception v9

    .line 1583
    .local v9, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1586
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v11    # "endVersionPos":I
    :cond_a
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1587
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "--"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    .line 1589
    .restart local v11    # "endVersionPos":I
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    .line 1593
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v16, v18, v19

    .line 1594
    .local v16, "pos2":I
    :goto_3
    if-lez v16, :cond_b

    .line 1595
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1596
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v5, v16, v18

    .line 1607
    :cond_b
    if-lez v5, :cond_e

    .line 1608
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_2

    .line 1590
    .end local v16    # "pos2":I
    :catch_1
    move-exception v9

    .line 1591
    .restart local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no end boundary"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1599
    .end local v9    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "pos2":I
    :cond_c
    const-string v18, "\r\n"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    .line 1600
    .restart local v13    # "next":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    .line 1601
    new-instance v18, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v19, "Ill-formatted bMessage, no empty line"

    invoke-direct/range {v18 .. v19}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1603
    :cond_d
    const-string v18, "\r\n"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v16, v13, v18

    .line 1605
    goto :goto_3

    .line 1612
    .end local v11    # "endVersionPos":I
    .end local v13    # "next":I
    .end local v16    # "pos2":I
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_2
.end method

.method private static fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 1400
    const-string v3, "ENCODING:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1401
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1402
    const-string v3, "ENCODING:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1403
    .local v0, "beginVersionPos":I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1404
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1408
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 1447
    const-string v5, "LENGTH:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1448
    .local v4, "pos":I
    if-lez v4, :cond_0

    .line 1449
    const-string v5, "LENGTH:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v1, v4, v5

    .line 1450
    .local v1, "beginVersionPos":I
    const-string v5, "\r\n"

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1451
    .local v3, "endVersionPos":I
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1453
    .local v0, "bd":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1458
    .end local v0    # "bd":Ljava/lang/String;
    .end local v1    # "beginVersionPos":I
    .end local v3    # "endVersionPos":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 1473
    const-string v3, "BEGIN:MSG"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1474
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1475
    const-string v3, "BEGIN:MSG"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int v0, v2, v3

    .line 1477
    .local v0, "beginVersionPos":I
    const-string v3, "END:MSG"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v1, v3, v4

    .line 1479
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1481
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static fetchBoundary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 1505
    const-string v3, "boundary=\""

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1506
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1507
    const-string v3, "boundary=\""

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1508
    .local v0, "beginVersionPos":I
    const-string v3, "\""

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1509
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1513
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchContentType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmsg"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    .prologue
    .line 1616
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1617
    .local v3, "pos1":I
    const-string v4, "Content-Type:"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1618
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1620
    const-string v4, "Content-Type:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v2, v4

    .line 1621
    .local v0, "beginVersionPos":I
    const-string v4, "\r\n"

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1622
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1626
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static fetchFolder(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Ljava/lang/String;

    .prologue
    .line 1304
    const-string v3, "FOLDER:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1305
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1306
    const-string v3, "FOLDER:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1307
    .local v0, "beginVersionPos":I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1309
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1312
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchOriginatorVcardEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bmsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 1135
    const-string v3, "BEGIN:VCARD"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1136
    .local v1, "vCardBeginPos":I
    if-ne v1, v6, :cond_0

    .line 1138
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No Vcard"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1140
    :cond_0
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vCard start position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_1
    const-string v3, "BEGIN:BENV"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1142
    .local v0, "bEnvPos":I
    if-le v1, v0, :cond_2

    .line 1144
    const-string v3, ""

    .line 1153
    :goto_0
    return-object v3

    .line 1146
    :cond_2
    const-string v3, "END:VCARD"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1147
    .local v2, "vCardEndPos":I
    if-ne v2, v6, :cond_3

    .line 1149
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No END:VCARD"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1151
    :cond_3
    const-string v3, "END:VCARD"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    .line 1153
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Ljava/lang/String;

    .prologue
    .line 1260
    const-string v3, "STATUS:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1261
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1263
    const-string v3, "STATUS:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1264
    .local v0, "beginStatusPos":I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1265
    .local v1, "endStatusPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .end local v0    # "beginStatusPos":I
    .end local v1    # "endStatusPos":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private static fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bmsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1227
    const/4 v2, 0x0

    .line 1228
    .local v2, "locBENV":I
    const/4 v3, 0x0

    .line 1229
    .local v3, "pos":I
    const-string v4, "\r\nBEGIN:BENV"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1230
    const-string v4, "\r\nBEGIN:VCARD"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 1231
    if-gez v3, :cond_0

    .line 1233
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No vCard in BENV"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1235
    :cond_0
    if-lez v3, :cond_2

    .line 1236
    const-string v4, "\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v0, v3, v4

    .line 1237
    .local v0, "beginVcardPos":I
    const-string v4, "END:VCARD"

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1238
    .local v1, "endVcardPos":I
    if-gez v1, :cond_1

    .line 1240
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No END:VCARD in BENV"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1242
    :cond_1
    const-string v4, "END:VCARD"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 1243
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1246
    .end local v0    # "beginVcardPos":I
    .end local v1    # "endVcardPos":I
    :goto_0
    return-object v4

    :cond_2
    const-string v4, ""

    goto :goto_0
.end method

.method private static fetchSubjectEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 1157
    const-string v3, "Subject:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1159
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1160
    const-string v3, "Subject:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1161
    .local v0, "beginVersionPos":I
    const-string v3, "\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1162
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1164
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static fetchType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Ljava/lang/String;

    .prologue
    .line 1282
    const-string v3, "TYPE:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1283
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1284
    const-string v3, "TYPE:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1285
    .local v0, "beginTypePos":I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1287
    .local v1, "endTypePos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1290
    .end local v0    # "beginTypePos":I
    .end local v1    # "endTypePos":I
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static fetchVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Ljava/lang/String;

    .prologue
    .line 1178
    const-string v3, "VERSION:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1179
    .local v2, "pos":I
    if-lez v2, :cond_0

    .line 1181
    const-string v3, "VERSION:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1182
    .local v0, "beginVersionPos":I
    const-string v3, "\r\n"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1183
    .local v1, "endVersionPos":I
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1186
    .end local v0    # "beginVersionPos":I
    .end local v1    # "endVersionPos":I
    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static folderListingXML(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "<?xml version=\"1.0\"?><!DOCTYPE folder-listing SYSTEM \"obex-folder-listing.dtd\"><folder-listing version=\"1.0\">"

    .line 95
    .local v2, "str":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 96
    .local v1, "s":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<folder name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 101
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</folder-listing>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    return-object v2
.end method

.method public static fromBmessageEmail(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmsg"    # Ljava/lang/String;
    .param p2, "mMasId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v2, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v2}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 994
    .local v2, "bMsgObj":Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 995
    .local v5, "vCard":Ljava/lang/String;
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_0

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vCard Info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_0
    invoke-static {v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v4

    .line 998
    .local v4, "recipient":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v7, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 999
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v8, "No Email in recipient vCard"

    invoke-direct {v7, v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1001
    :cond_1
    iget-object v7, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_email(Ljava/lang/String;)V

    .line 1002
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_2

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_2
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchOriginatorVcardEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "vcardOrig":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 1006
    invoke-static {v6}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v3

    .line 1007
    .local v3, "originator":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 1008
    const-wide/16 v0, -0x1

    .line 1009
    .local v0, "accountId":J
    invoke-static {p2}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getAccountId(I)J

    move-result-wide v0

    .line 1010
    const-wide/16 v7, -0x1

    cmp-long v7, v0, v7

    if-eqz v7, :cond_3

    if-eqz p0, :cond_3

    .line 1011
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountIdEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 1013
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Email inserted by MSE as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/bluetooth/map/MapUtils/EmailUtils;->getEmailAccountDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    .line 1016
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig F-Name inserted by MSE as: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_3
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 1019
    new-instance v7, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v8, "No Email in originator vCard"

    invoke-direct {v7, v8}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1022
    .end local v0    # "accountId":J
    :cond_4
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_email(Ljava/lang/String;)V

    .line 1023
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_5

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Email: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_5
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    .line 1025
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_6

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Formatted Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_6
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mFormattedName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    .line 1033
    .end local v3    # "originator":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    :cond_7
    :goto_0
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_8

    .line 1034
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bmsg version:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_8
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 1039
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_9

    .line 1040
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read status:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_9
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 1045
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_a

    .line 1046
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message Type:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_a
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 1051
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_b

    .line 1052
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Folder:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_b
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 1057
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_c

    .line 1058
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "body length:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_c
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 1063
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 1065
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_d

    .line 1066
    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message encoding:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_d
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 1072
    invoke-static {p1}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchSubjectEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setSubject(Ljava/lang/String;)V

    .line 1074
    return-object v2

    .line 1028
    .restart local v3    # "originator":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    :cond_e
    sget-boolean v7, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v7, :cond_f

    const-string v7, "MapUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orig Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    :cond_f
    iget-object v7, v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setOriginatorVcard_name(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static fromBmessageMMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 7
    .param p0, "bmsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 933
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 935
    .local v0, "bMsgObj":Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    const/4 v1, 0x0

    .line 936
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 937
    .local v3, "vCard":Ljava/lang/String;
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_0

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vCard Info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    invoke-static {v3}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v2

    .line 940
    .local v2, "recipient":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 941
    iget-object v1, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    .line 948
    :goto_0
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_1

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    :cond_1
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_2

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_2
    sget-boolean v4, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v4, :cond_3

    const-string v4, "MapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recipeint address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_3
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 954
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 957
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 960
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 963
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 966
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 969
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 972
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 975
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 977
    return-object v0

    .line 942
    :cond_4
    iget-object v4, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 943
    iget-object v1, v2, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    goto/16 :goto_0

    .line 945
    :cond_5
    new-instance v4, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v5, "No Email/Tel in vCard"

    invoke-direct {v4, v5}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static fromBmessageSMS(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    .locals 6
    .param p0, "bmsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 884
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;-><init>()V

    .line 885
    .local v0, "bMsgObj":Lcom/android/bluetooth/map/MapUtils/BmessageConsts;
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchRecipientVcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "vCard":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    move-result-object v1

    .line 888
    .local v1, "recipient":Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 889
    new-instance v3, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v4, "No TEL in vCard"

    invoke-direct {v3, v4}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 891
    :cond_0
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setRecipientVcard_phone_number(Ljava/lang/String;)V

    .line 892
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "MapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mTel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_1
    iget-object v3, v1, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setVcard_version(Ljava/lang/String;)V

    .line 898
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBmsg_version(Ljava/lang/String;)V

    .line 901
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchReadStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setStatus(Ljava/lang/String;)V

    .line 904
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setType(Ljava/lang/String;)V

    .line 907
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setFolder(Ljava/lang/String;)V

    .line 910
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyLength(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_length(I)V

    .line 913
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_msg(Ljava/lang/String;)V

    .line 916
    invoke-static {p0}, Lcom/android/bluetooth/map/MapUtils/MapUtils;->fetchBodyEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->setBody_encoding(Ljava/lang/String;)V

    .line 918
    return-object v0
.end method

.method public static mapEventReportXML(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "handle"    # Ljava/lang/String;
    .param p2, "folder"    # Ljava/lang/String;
    .param p3, "oldFolder"    # Ljava/lang/String;
    .param p4, "msgType"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 418
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 422
    .local v6, "writer":Ljava/io/StringWriter;
    :try_start_0
    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 423
    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v7, ""

    const-string v8, "MAP-event-report"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v7, ""

    const-string v8, "version"

    const-string v9, "1.0"

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v7, ""

    const-string v8, "event"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    if-eqz p0, :cond_0

    .line 431
    const-string v7, ""

    const-string v8, "type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 435
    :cond_0
    if-eqz p1, :cond_1

    .line 436
    const-string v7, ""

    const-string v8, "handle"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    :cond_1
    if-eqz p2, :cond_2

    .line 441
    const-string v7, ""

    const-string v8, "folder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 445
    :cond_2
    if-eqz p3, :cond_3

    .line 446
    const-string v7, ""

    const-string v8, "old_folder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 451
    :cond_3
    if-eqz p4, :cond_4

    .line 452
    const-string v7, ""

    const-string v8, "msg_type"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    :cond_4
    const-string v7, ""

    const-string v8, "event"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 457
    const-string v7, "\n"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 458
    const-string v7, ""

    const-string v8, "MAP-event-report"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 459
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 460
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    .local v4, "str1":Ljava/lang/String;
    const/4 v2, 0x0

    .line 462
    .local v2, "line1":I
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 463
    if-lez v2, :cond_5

    .line 464
    const-string v7, "event type"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 465
    .local v1, "index":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "str2":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<MAP-event-report version=\"1.0\">\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 480
    .end local v1    # "index":I
    .end local v2    # "line1":I
    .end local v4    # "str1":Ljava/lang/String;
    .end local v5    # "str2":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v4

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 480
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 474
    :catch_1
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 476
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 477
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static messageListingXML(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;>;"
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 119
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 120
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 122
    .local v5, "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v6, Ljava/io/OutputStreamWriter;

    const-string v12, "UTF-8"

    invoke-direct {v6, v7, v12}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    .end local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .local v6, "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    :try_start_1
    const-string v10, "<?xml version=\"1.0\"?>"

    .line 130
    .local v10, "str2":Ljava/lang/String;
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 131
    const-string v12, "UTF-8"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 132
    const-string v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 133
    const-string v12, "\n"

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    const/4 v12, 0x0

    const-string v13, "MAP-msg-listing"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v12, 0x0

    const-string v13, "version"

    const-string v14, "1.0"

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;

    .line 137
    .local v4, "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    const/4 v12, 0x0

    const-string v13, "msg"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    const/4 v12, 0x0

    const-string v13, "handle"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_handle:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    iget-boolean v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendSubject:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 141
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    if-nez v12, :cond_10

    .line 142
    const/4 v12, 0x0

    const-string v13, "subject"

    const-string v14, ""

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    :cond_0
    :goto_1
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 149
    const/4 v12, 0x0

    const-string v13, "datetime"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->datetime:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    :cond_1
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    if-eqz v12, :cond_2

    .line 152
    const/4 v12, 0x0

    const-string v13, "sender_name"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_name:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    :cond_2
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 156
    const/4 v12, 0x0

    const-string v13, "sender_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sender_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    :cond_3
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 161
    const/4 v12, 0x0

    const-string v13, "replyto_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->replyto_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    :cond_4
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    if-eqz v12, :cond_5

    .line 166
    const/4 v12, 0x0

    const-string v13, "recipient_name"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_name:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    :cond_5
    iget-boolean v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sendRecipient_addressing:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 170
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    if-eqz v12, :cond_11

    .line 171
    const/4 v12, 0x0

    const-string v13, "recipient_addressing"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->recepient_addressing:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    :cond_6
    :goto_2
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    if-eqz v12, :cond_7

    .line 178
    const/4 v12, 0x0

    const-string v13, "type"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->type:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    :cond_7
    iget v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    if-eqz v12, :cond_8

    .line 181
    const/4 v12, 0x0

    const-string v13, "size"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->size:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    :cond_8
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 185
    const/4 v12, 0x0

    const-string v13, "text"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->contains_text:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_9
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 189
    const/4 v12, 0x0

    const-string v13, "reception_status"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->reception_status:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    :cond_a
    iget v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_b

    .line 194
    const/4 v12, 0x0

    const-string v13, "attachment_size"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->attachment_size:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    :cond_b
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    if-eqz v12, :cond_c

    .line 199
    const/4 v12, 0x0

    const-string v13, "priority"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->priority:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    :cond_c
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 203
    const/4 v12, 0x0

    const-string v13, "read"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->read:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_d
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    if-eqz v12, :cond_e

    .line 207
    const/4 v12, 0x0

    const-string v13, "sent"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->sent:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    :cond_e
    iget-object v12, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    if-eqz v12, :cond_f

    .line 211
    const/4 v12, 0x0

    const-string v13, "protected"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->msg_protected:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    :cond_f
    const/4 v12, 0x0

    const-string v13, "msg"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 235
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    const/4 v10, 0x0

    move-object v5, v6

    .end local v6    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    :goto_4
    return-object v10

    .line 123
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v12, "MapUtils"

    const-string v13, "Failed to encode: charset=UTF-8"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v10, 0x0

    goto :goto_4

    .line 144
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .restart local v6    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v10    # "str2":Ljava/lang/String;
    :cond_10
    const/4 v12, 0x0

    :try_start_2
    const-string v13, "subject"

    iget-object v14, v4, Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;->subject:Ljava/lang/String;

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 238
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10    # "str2":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 174
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .restart local v10    # "str2":Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    :try_start_3
    const-string v13, "recipient_addressing"

    const-string v14, ""

    invoke-interface {v8, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 241
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "msg":Lcom/android/bluetooth/map/MapUtils/MsgListingConsts;
    .end local v10    # "str2":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 217
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v10    # "str2":Ljava/lang/String;
    :cond_12
    const/4 v12, 0x0

    :try_start_4
    const-string v13, "MAP-msg-listing"

    invoke-interface {v8, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 220
    :try_start_5
    const-string v12, "UTF-8"

    invoke-virtual {v7, v12}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "str1":Ljava/lang/String;
    sget-boolean v12, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v12, :cond_13

    const-string v12, "MapUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Printing XML-Converted String: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_13
    const/4 v3, 0x0

    .line 223
    .local v3, "line1":I
    const-string v12, "\n"

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 224
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v3, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 225
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_14

    .line 226
    const-string v12, "msg handle"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, "indxHandle":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 228
    .local v11, "str3":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    add-int/lit8 v14, v2, -0x1

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v10

    .end local v2    # "indxHandle":I
    .end local v11    # "str3":Ljava/lang/String;
    :cond_14
    move-object v5, v6

    .line 230
    .end local v6    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    goto/16 :goto_4

    .line 231
    .end local v3    # "line1":I
    .end local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v9    # "str1":Ljava/lang/String;
    .restart local v6    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_4
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_6
    const-string v12, "MapUtils"

    const-string v13, "Failed to encode: charset=UTF-8"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 233
    const/4 v10, 0x0

    .end local v10    # "str2":Ljava/lang/String;
    move-object v5, v6

    .end local v6    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v5    # "myOutputStreamWriter":Ljava/io/OutputStreamWriter;
    goto/16 :goto_4
.end method

.method static parseVCard(Ljava/lang/String;)Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;
        }
    .end annotation

    .prologue
    .line 1877
    sget-boolean v0, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseVCard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;

    invoke-direct {v0}, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;-><init>()V

    .line 1883
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1884
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1889
    :try_start_1
    new-instance v1, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v1}, Lcom/android/vcard/VCardParser_V21;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1891
    :try_start_2
    sget-boolean v3, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "MapUtils"

    const-string v4, "try 2.1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    :cond_1
    const-string v3, "2.1"

    iput-object v3, v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    .line 1893
    invoke-virtual {v1, v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1914
    :goto_0
    return-object v0

    .line 1885
    :catch_0
    move-exception v0

    .line 1886
    :try_start_3
    const-string v1, "MapUtils"

    const-string v2, "Unable to parse vCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1887
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v1, "Unable to parse vCard"

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1906
    :catch_1
    move-exception v0

    .line 1907
    const-string v1, "MapUtils"

    const-string v2, "Unable to parse vCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1908
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v1, "Unable to parse vCard"

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1894
    :catch_2
    move-exception v1

    .line 1895
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V

    .line 1896
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1898
    :try_start_5
    sget-boolean v2, Lcom/android/bluetooth/map/MapUtils/MapUtils;->V:Z

    if-eqz v2, :cond_2

    const-string v2, "MapUtils"

    const-string v3, "try 3.0"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_2
    const-string v2, "3.0"

    iput-object v2, v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$RecipientVCard;->mVersion:Ljava/lang/String;

    .line 1900
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    .line 1901
    invoke-virtual {v2, v1, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1902
    :catch_3
    move-exception v0

    .line 1903
    :try_start_6
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    const-string v1, "vCard with unsupported version."

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1909
    :catch_4
    move-exception v0

    .line 1910
    const-string v1, "MapUtils"

    const-string v2, "Unable to parse vCard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1911
    new-instance v0, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;

    const-string v1, "Unable to parse vCard"

    invoke-direct {v0, v1}, Lcom/android/bluetooth/map/MapUtils/MapUtils$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toBmessageEmail(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    .prologue
    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 756
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 761
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 766
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 771
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 780
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 785
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_5
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 792
    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 807
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 812
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 818
    const-string v2, "FN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_9
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 825
    const-string v2, "EMAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_email:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_a
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 836
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :goto_0
    const-string v2, "CHARSET:UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_b

    .line 845
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 850
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    :cond_c
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 839
    :cond_d
    :try_start_1
    const-string v2, "ENCODING:8BIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static toBmessageMMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    .prologue
    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 630
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 635
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 640
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 645
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 654
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 659
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 665
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 680
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 685
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 691
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_9
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v2, "PARTID:26988"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 704
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_a
    const-string v2, "CHARSET:UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v2, "LANGUAGE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_b

    .line 713
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_b
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 718
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_c
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static toBmessageSMS(Lcom/android/bluetooth/map/MapUtils/BmessageConsts;)Ljava/lang/String;
    .locals 4
    .param p0, "bmsg"    # Lcom/android/bluetooth/map/MapUtils/BmessageConsts;

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v1, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v2, "BEGIN:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 501
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->bmsg_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 506
    const-string v2, "STATUS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->status:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 511
    const-string v2, "TYPE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 516
    const-string v2, "FOLDER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->folder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_3
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 525
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 530
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 536
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->originator_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    :cond_6
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v2, "BEGIN:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 551
    const-string v2, "VERSION:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->vcard_version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 556
    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_8
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 562
    const-string v2, "TEL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->recipient_vcard_phone_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_9
    const-string v2, "END:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string v2, "BEGIN:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 573
    const-string v2, "CHARSET:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_a
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 580
    const-string v2, "ENCODING:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_b
    iget v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    if-eqz v2, :cond_c

    .line 586
    const-string v2, "LENGTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_length:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    :cond_c
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 591
    const-string v2, "BEGIN:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v2, p0, Lcom/android/bluetooth/map/MapUtils/BmessageConsts;->body_msg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v2, "END:MSG\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :cond_d
    const-string v2, "END:BBODY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v2, "END:BENV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v2, "END:BMSG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
