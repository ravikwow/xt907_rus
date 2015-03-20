.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final PROFILE_PROJECTION:[Ljava/lang/String;

.field static final SIM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final SIM_URI:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 89
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "lookup"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PROFILE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "content://icc/adn"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_URI:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 129
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 130
    return-void
.end method


# virtual methods
.method public final composeAndSendCallLogVcards(ILjavax/btobex/Operation;IIZZ[B)I
    .locals 21
    .param p1, "type"    # I
    .param p2, "op"    # Ljavax/btobex/Operation;
    .param p3, "startPoint"    # I
    .param p4, "endPoint"    # I
    .param p5, "vcardType21"    # Z
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 542
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 543
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v2, 0xd0

    .line 598
    :goto_0
    return v2

    .line 546
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "typeSelection":Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 549
    .local v3, "myUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 552
    .local v4, "CALLLOG_PROJECTION":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 554
    .local v14, "ID_COLUMN_INDEX":I
    const/4 v15, 0x0

    .line 555
    .local v15, "callsCursor":Landroid/database/Cursor;
    const-wide/16 v19, 0x0

    .line 556
    .local v19, "startPointId":J
    const-wide/16 v16, 0x0

    .line 559
    .local v16, "endPointId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 561
    if-eqz v15, :cond_2

    .line 562
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 563
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v19

    .line 565
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 566
    move-wide/from16 v16, v19

    .line 574
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 575
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 590
    .local v18, "recordSelection":Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_7

    .line 591
    move-object/from16 v8, v18

    .line 598
    .local v8, "selection":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/btobex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v2

    goto :goto_0

    .line 568
    .end local v8    # "selection":Ljava/lang/String;
    .end local v18    # "recordSelection":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v15, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 569
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    goto :goto_1

    .line 574
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_5

    .line 575
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 574
    :cond_5
    throw v2

    .line 585
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .restart local v18    # "recordSelection":Ljava/lang/String;
    goto :goto_2

    .line 593
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "selection":Ljava/lang/String;
    goto :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/btobex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 14
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 691
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ge v0, v1, :cond_0

    .line 692
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/16 v1, 0xd0

    .line 735
    :goto_0
    return v1

    .line 695
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 696
    .local v2, "myUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 697
    .local v11, "contactCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 698
    .local v5, "selection":Ljava/lang/String;
    const-wide/16 v12, 0x0

    .line 699
    .local v12, "contactId":J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 701
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5    # "selection":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 703
    if-eqz v11, :cond_1

    .line 704
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 705
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 709
    :cond_1
    if-eqz v11, :cond_2

    .line 710
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 735
    .restart local v5    # "selection":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/btobex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v1

    goto :goto_0

    .line 709
    .end local v5    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_3

    .line 710
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 709
    :cond_3
    throw v1

    .line 713
    .restart local v5    # "selection":Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 715
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "display_name COLLATE NOCASE"

    .end local v5    # "selection":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 717
    if-eqz v11, :cond_5

    .line 718
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 719
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v12

    .line 723
    :cond_5
    if-eqz v11, :cond_2

    .line 724
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 723
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_6

    .line 724
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 723
    :cond_6
    throw v1

    .line 728
    .restart local v5    # "selection":Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;Z[B)I
    .locals 17
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "ownerVCard"    # Ljava/lang/String;
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 603
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 604
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const/16 v2, 0xd0

    .line 643
    :goto_0
    return v2

    .line 607
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 609
    .local v3, "myUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 610
    .local v12, "contactCursor":Landroid/database/Cursor;
    const-wide/16 v15, 0x0

    .line 611
    .local v15, "startPointId":J
    const-wide/16 v13, 0x0

    .line 613
    .local v13, "endPointId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 615
    if-eqz v12, :cond_2

    .line 616
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 617
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v15

    .line 619
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 620
    move-wide v13, v15

    .line 628
    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    .line 629
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "selection":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/btobex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I

    move-result v2

    goto :goto_0

    .line 622
    .end local v6    # "selection":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 623
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v13

    goto :goto_1

    .line 628
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 629
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 628
    :cond_5
    throw v2

    .line 637
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "in_visible_group=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "selection":Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendSIMPhonebookOneVcard(Ljavax/btobex/Operation;IZLjava/lang/String;I)I
    .locals 10
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "offset"    # I
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "orderByWhat"    # I

    .prologue
    const/16 v6, 0xd0

    const/4 v7, 0x1

    .line 740
    if-ge p2, v7, :cond_1

    .line 741
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "Internal error: offset is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .end local p1    # "op":Ljavax/btobex/Operation;
    :cond_0
    :goto_0
    return v6

    .line 744
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_1
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 746
    .local v4, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 747
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 749
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 750
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/btobex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 751
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v4, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-nez v7, :cond_4

    .line 774
    :cond_2
    if-eqz v3, :cond_3

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_3
    if-eqz v1, :cond_0

    .line 778
    .end local p1    # "op":Ljavax/btobex/Operation;
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 755
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_4
    :try_start_3
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p5, v7, :cond_8

    .line 757
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 762
    :cond_5
    :goto_2
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_6

    .line 763
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1    # "op":Ljavax/btobex/Operation;
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 764
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 766
    :cond_6
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "vcard":Ljava/lang/String;
    if-nez v5, :cond_b

    .line 768
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    if-eqz v3, :cond_7

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_7
    if-eqz v1, :cond_0

    goto :goto_1

    .line 758
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_8
    :try_start_4
    sget v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p5, v7, :cond_5

    .line 760
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 774
    .end local p1    # "op":Ljavax/btobex/Operation;
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :goto_3
    if-eqz v2, :cond_9

    .line 775
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_9
    if-eqz v0, :cond_a

    .line 778
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 774
    :cond_a
    throw v6

    .line 772
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v5    # "vcard":Ljava/lang/String;
    :cond_b
    :try_start_5
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 774
    if-eqz v3, :cond_c

    .line 775
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 777
    :cond_c
    if-eqz v1, :cond_d

    .line 778
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 782
    :cond_d
    const/16 v6, 0xa0

    goto/16 :goto_0

    .line 774
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v5    # "vcard":Ljava/lang/String;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :catchall_1
    move-exception v6

    goto :goto_3

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendSIMPhonebookVcards(Ljavax/btobex/Operation;IIZLjava/lang/String;)I
    .locals 10
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "startPoint"    # I
    .param p3, "endPoint"    # I
    .param p4, "vcardType21"    # Z
    .param p5, "ownerVCard"    # Ljava/lang/String;

    .prologue
    .line 647
    const/4 v7, 0x1

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_2

    .line 648
    :cond_0
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "internal error: startPoint or endPoint is not correct."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/16 v7, 0xd0

    .line 686
    .end local p1    # "op":Ljavax/btobex/Operation;
    :cond_1
    :goto_0
    return v7

    .line 651
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_2
    const-string v7, "content://icc/adn"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 652
    .local v5, "myUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 653
    .local v2, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    const/4 v0, 0x0

    .line 655
    .local v0, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :try_start_1
    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {v1, p0, p1, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/btobex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 658
    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v3, v5, v7, v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v7

    if-nez v7, :cond_5

    .line 660
    :cond_3
    const/16 v7, 0xd0

    .line 678
    if-eqz v3, :cond_4

    .line 679
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 681
    :cond_4
    if-eqz v1, :cond_1

    .line 682
    :goto_1
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto :goto_0

    .line 662
    :cond_5
    add-int/lit8 v7, p2, -0x1

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v3, v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->moveToPosition(IZ)V

    .line 663
    add-int/lit8 v4, p2, -0x1

    .local v4, "count":I
    :goto_2
    if-ge v4, p3, :cond_6

    .line 664
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_9

    .line 665
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1    # "op":Ljavax/btobex/Operation;
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 666
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 678
    :cond_6
    if-eqz v3, :cond_7

    .line 679
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 681
    :cond_7
    if-eqz v1, :cond_8

    .line 682
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 686
    :cond_8
    const/16 v7, 0xa0

    goto :goto_0

    .line 669
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_9
    :try_start_4
    invoke-virtual {v3, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6

    .line 670
    .local v6, "vcard":Ljava/lang/String;
    if-nez v6, :cond_b

    .line 671
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 673
    const/16 v7, 0xd0

    .line 678
    if-eqz v3, :cond_a

    .line 679
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 681
    :cond_a
    if-eqz v1, :cond_1

    goto :goto_1

    .line 675
    :cond_b
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 663
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 678
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local v4    # "count":I
    .end local v6    # "vcard":Ljava/lang/String;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_0
    move-exception v7

    .end local p1    # "op":Ljavax/btobex/Operation;
    :goto_3
    if-eqz v2, :cond_c

    .line 679
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;->terminate()V

    .line 681
    :cond_c
    if-eqz v0, :cond_d

    .line 682
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 678
    :cond_d
    throw v7

    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3

    .end local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .end local p1    # "op":Ljavax/btobex/Operation;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v0    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v2, v3

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    .restart local v2    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapSIMvCardComposer;
    goto :goto_3
.end method

.method public final composeAndSendVCards(Ljavax/btobex/Operation;Ljava/lang/String;ZLjava/lang/String;ZZ[B)I
    .locals 13
    .param p1, "op"    # Ljavax/btobex/Operation;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "vcardType21"    # Z
    .param p4, "ownerVCard"    # Ljava/lang/String;
    .param p5, "isContacts"    # Z
    .param p6, "ignorefilter"    # Z
    .param p7, "filter"    # [B

    .prologue
    .line 787
    const-wide/16 v5, 0x0

    .line 790
    .local v5, "timestamp":J
    if-eqz p5, :cond_11

    .line 791
    const/4 v3, 0x0

    .line 792
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;

    invoke-direct {v9, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    .line 793
    .local v9, "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    if-nez p6, :cond_0

    .line 794
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->setFilter([B)V

    .line 796
    :cond_0
    const/4 v1, 0x0

    .line 800
    .local v1, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_5

    .line 801
    const/high16 v8, -0x40000000

    .line 805
    .local v8, "vcardType":I
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->isPhotoEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 806
    const/high16 v10, 0x800000

    or-int/2addr v8, v10

    .line 808
    :cond_1
    new-instance v4, Lcom/android/vcard/VCardComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-direct {v4, v10, v8, v11}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    :try_start_1
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;

    invoke-direct {v10, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v4, v10}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 824
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/btobex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 825
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_2
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id"

    invoke-virtual {v4, v10, p2, v11, v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result v10

    if-nez v10, :cond_6

    .line 827
    :cond_2
    const/16 v10, 0xd0

    .line 853
    if-eqz v4, :cond_3

    .line 854
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_3
    if-eqz v2, :cond_4

    .line 857
    :goto_1
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 900
    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v8    # "vcardType":I
    .end local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .end local p1    # "op":Ljavax/btobex/Operation;
    :cond_4
    :goto_2
    return v10

    .line 803
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_5
    const v8, -0x3fffffff

    .restart local v8    # "vcardType":I
    goto :goto_0

    .line 830
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    :cond_6
    :try_start_3
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 831
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_a

    .line 832
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1    # "op":Ljavax/btobex/Operation;
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 833
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 853
    :cond_7
    if-eqz v4, :cond_8

    .line 854
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_8
    if-eqz v2, :cond_9

    .line 857
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 900
    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v8    # "vcardType":I
    .end local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    :cond_9
    :goto_3
    const/16 v10, 0xa0

    goto :goto_2

    .line 836
    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v8    # "vcardType":I
    .restart local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_a
    :try_start_4
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v7

    .line 838
    .local v7, "vcard":Ljava/lang/String;
    if-nez p6, :cond_b

    .line 839
    move/from16 v0, p3

    invoke-virtual {v9, v7, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;->applyFilter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 842
    :cond_b
    if-nez v7, :cond_d

    .line 843
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 845
    const/16 v10, 0xd0

    .line 853
    if-eqz v4, :cond_c

    .line 854
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_c
    if-eqz v2, :cond_4

    goto :goto_1

    .line 847
    :cond_d
    :try_start_5
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    move-result v10

    if-nez v10, :cond_6

    .line 849
    const/16 v10, 0xd0

    .line 853
    if-eqz v4, :cond_e

    .line 854
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_e
    if-eqz v2, :cond_4

    goto :goto_1

    .line 853
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v7    # "vcard":Ljava/lang/String;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_0
    move-exception v10

    .end local p1    # "op":Ljavax/btobex/Operation;
    :goto_4
    if-eqz v3, :cond_f

    .line 854
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 856
    :cond_f
    if-eqz v1, :cond_10

    .line 857
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 853
    :cond_10
    throw v10

    .line 861
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local v8    # "vcardType":I
    .end local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_11
    const/4 v3, 0x0

    .line 862
    .local v3, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v1, 0x0

    .line 865
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_6
    new-instance v4, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 866
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_7
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/btobex/Operation;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 867
    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_8
    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    invoke-virtual {v4, v10, p2, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v10

    if-nez v10, :cond_15

    .line 870
    :cond_12
    const/16 v10, 0xd0

    .line 888
    if-eqz v4, :cond_13

    .line 889
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 891
    :cond_13
    if-eqz v2, :cond_4

    .line 892
    :goto_5
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto/16 :goto_2

    .line 885
    .restart local v7    # "vcard":Ljava/lang/String;
    :cond_14
    :try_start_9
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 873
    .end local v7    # "vcard":Ljava/lang/String;
    :cond_15
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_16

    .line 874
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_18

    .line 875
    check-cast p1, Ljavax/btobex/ServerOperation;

    .end local p1    # "op":Ljavax/btobex/Operation;
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/btobex/ServerOperation;->isAborted:Z

    .line 876
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 888
    :cond_16
    if-eqz v4, :cond_17

    .line 889
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 891
    :cond_17
    if-eqz v2, :cond_9

    .line 892
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    goto/16 :goto_3

    .line 879
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :cond_18
    :try_start_a
    move/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v7

    .line 880
    .restart local v7    # "vcard":Ljava/lang/String;
    if-nez v7, :cond_14

    .line 881
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 883
    const/16 v10, 0xd0

    .line 888
    if-eqz v4, :cond_19

    .line 889
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 891
    :cond_19
    if-eqz v2, :cond_4

    goto :goto_5

    .line 888
    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v7    # "vcard":Ljava/lang/String;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v10

    .end local p1    # "op":Ljavax/btobex/Operation;
    :goto_6
    if-eqz v3, :cond_1a

    .line 889
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 891
    :cond_1a
    if-eqz v1, :cond_1b

    .line 892
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 888
    :cond_1b
    throw v10

    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_6

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local p1    # "op":Ljavax/btobex/Operation;
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_6

    .line 853
    .end local v3    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v4, "composer":Lcom/android/vcard/VCardComposer;
    .restart local v8    # "vcardType":I
    .restart local v9    # "vcardfilter":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$FilterVcard;
    .restart local p1    # "op":Ljavax/btobex/Operation;
    :catchall_4
    move-exception v10

    move-object v3, v4

    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .local v3, "composer":Lcom/android/vcard/VCardComposer;
    goto/16 :goto_4

    .end local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3    # "composer":Lcom/android/vcard/VCardComposer;
    .end local p1    # "op":Ljavax/btobex/Operation;
    .restart local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v4    # "composer":Lcom/android/vcard/VCardComposer;
    :catchall_5
    move-exception v10

    move-object v1, v2

    .end local v2    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1    # "buffer":Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v3, v4

    .end local v4    # "composer":Lcom/android/vcard/VCardComposer;
    .restart local v3    # "composer":Lcom/android/vcard/VCardComposer;
    goto/16 :goto_4
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .param p1, "type"    # I

    .prologue
    .line 240
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x0

    .line 243
    .local v7, "size":I
    const/4 v6, 0x0

    .line 245
    .local v6, "callCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 247
    if-eqz v6, :cond_0

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 251
    :cond_0
    if-eqz v6, :cond_1

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_1
    return v7

    .line 251
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_2
    throw v0
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v13, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v19, "startNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v17, "onlyphoneNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 475
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 476
    .local v8, "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 477
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 474
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 480
    .end local v8    # "c":C
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    .local v7, "SearchOnlyNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 482
    .local v9, "contactCursor":Landroid/database/Cursor;
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 485
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v4, "in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "display_name"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 488
    if-eqz v9, :cond_a

    .line 489
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 491
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 492
    .local v14, "number":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 489
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 526
    .end local v14    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_3
    throw v1

    .line 496
    .restart local v14    # "number":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v16, "onlyNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 498
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 499
    .restart local v8    # "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_5

    const/16 v1, 0x39

    if-gt v8, v1, :cond_5

    .line 500
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 497
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 503
    .end local v8    # "c":C
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 505
    .local v20, "tmpNumber":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 506
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 507
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 512
    :cond_7
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v12    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 515
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 516
    .restart local v12    # "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 517
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 521
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 526
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v16    # "onlyNumber":Ljava/lang/StringBuilder;
    .end local v20    # "tmpNumber":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 531
    .local v18, "startListSize":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 532
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 533
    .local v15, "object":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 534
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 537
    .end local v15    # "object":Ljava/lang/String;
    :cond_d
    return-object v13
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 206
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 207
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 208
    .local v7, "size":I
    const/4 v6, 0x0

    .line 210
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "in_visible_group=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 211
    if-eqz v6, :cond_0

    .line 212
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 215
    :cond_0
    if-eqz v6, :cond_1

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :cond_1
    return v7

    .line 215
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_2
    throw v0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .locals 23
    .param p1, "vcardType21"    # Z

    .prologue
    .line 133
    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 134
    .local v4, "myProfileUri":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 135
    .local v19, "profileContactCursor":Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 136
    .local v21, "vCard":Ljava/lang/String;
    const/4 v13, 0x0

    .line 137
    .local v13, "fIstream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 139
    .local v9, "assetFd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PROFILE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 141
    if-eqz v19, :cond_3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    const-string v3, "BluetoothPbapVcardManager"

    const-string v5, " getOwnerPhoneNumberVcard: Fetching MyProfile Contact details  "

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 144
    .local v15, "myContactID":J
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, "lookupKey":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 146
    const/16 v19, 0x0

    .line 147
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v3, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 148
    .local v20, "shareUri":Landroid/net/Uri;
    const-string v3, "BluetoothPbapVcardManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " shareUri:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "r"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9

    .line 150
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v13

    .line 151
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    long-to-int v3, v5

    new-array v10, v3, [B

    .line 152
    .local v10, "buf":[B
    invoke-virtual {v13, v10}, Ljava/io/FileInputStream;->read([B)I

    .line 153
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v21    # "vCard":Ljava/lang/String;
    .local v22, "vCard":Ljava/lang/String;
    :try_start_1
    const-string v3, "BluetoothPbapVcardManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " MyProfile Contact details: myVcard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v21, v22

    .line 167
    .end local v10    # "buf":[B
    .end local v14    # "lookupKey":Ljava/lang/String;
    .end local v15    # "myContactID":J
    .end local v20    # "shareUri":Landroid/net/Uri;
    .end local v22    # "vCard":Ljava/lang/String;
    .restart local v21    # "vCard":Ljava/lang/String;
    :goto_0
    if-eqz v19, :cond_0

    .line 168
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_0
    if-eqz v13, :cond_1

    .line 172
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 177
    :cond_1
    :goto_1
    if-eqz v9, :cond_2

    .line 179
    :try_start_3
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 185
    :cond_2
    :goto_2
    return-object v21

    .line 158
    :cond_3
    :try_start_4
    new-instance v11, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 159
    .local v11, "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v18

    .line 161
    .local v18, "number":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v11, v3, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    goto :goto_0

    .line 164
    .end local v11    # "composer":Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "number":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 165
    .local v12, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    if-eqz v19, :cond_4

    .line 168
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_4
    if-eqz v13, :cond_5

    .line 172
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 177
    :cond_5
    :goto_4
    if-eqz v9, :cond_2

    .line 179
    :try_start_7
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 180
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2

    .line 167
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v19, :cond_6

    .line 168
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_6
    if-eqz v13, :cond_7

    .line 172
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 177
    :cond_7
    :goto_6
    if-eqz v9, :cond_8

    .line 179
    :try_start_9
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 167
    :cond_8
    :goto_7
    throw v3

    .line 173
    :catch_2
    move-exception v5

    goto :goto_6

    .line 180
    :catch_3
    move-exception v5

    goto :goto_7

    .line 173
    .restart local v12    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    goto :goto_4

    .end local v12    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    goto :goto_1

    .line 167
    .end local v21    # "vCard":Ljava/lang/String;
    .restart local v10    # "buf":[B
    .restart local v14    # "lookupKey":Ljava/lang/String;
    .restart local v15    # "myContactID":J
    .restart local v20    # "shareUri":Landroid/net/Uri;
    .restart local v22    # "vCard":Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v21, v22

    .end local v22    # "vCard":Ljava/lang/String;
    .restart local v21    # "vCard":Ljava/lang/String;
    goto :goto_5

    .line 164
    .end local v21    # "vCard":Ljava/lang/String;
    .restart local v22    # "vCard":Ljava/lang/String;
    :catch_6
    move-exception v12

    move-object/from16 v21, v22

    .end local v22    # "vCard":Ljava/lang/String;
    .restart local v21    # "vCard":Ljava/lang/String;
    goto :goto_3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 13
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v11, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 355
    .local v9, "myUri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 356
    .local v1, "myProfileUri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 357
    .local v8, "contactCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 359
    .local v12, "profileContactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 361
    if-eqz v12, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 362
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, " Fetching MyProfile Contact details"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 364
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 365
    const/4 v12, 0x0

    .line 366
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v10    # "name":Ljava/lang/String;
    :goto_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_5

    .line 373
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 380
    :cond_0
    :goto_1
    if-eqz v8, :cond_6

    .line 381
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 383
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 384
    .restart local v10    # "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 387
    :cond_1
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 391
    .end local v10    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_2
    if-eqz v12, :cond_3

    .line 395
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_3
    throw v0

    .line 369
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    :cond_5
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 377
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "in_visible_group=1"

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE NOCASE"

    move-object v3, v9

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_1

    .line 391
    :cond_6
    if-eqz v8, :cond_7

    .line 392
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_7
    if-eqz v12, :cond_8

    .line 395
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_8
    return-object v11
.end method

.method public final getPhonebookSize(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 190
    sparse-switch p1, :sswitch_data_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 202
    .local v0, "size":I
    :goto_0
    return v0

    .line 192
    .end local v0    # "size":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 193
    .restart local v0    # "size":I
    goto :goto_0

    .line 195
    .end local v0    # "size":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactsSize()I

    move-result v0

    .line 196
    .restart local v0    # "size":I
    goto :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getSIMContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v13, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v19, "startNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .local v17, "onlyphoneNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_1

    .line 406
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 407
    .local v8, "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_0

    const/16 v1, 0x39

    if-gt v8, v1, :cond_0

    .line 408
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 405
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 411
    .end local v8    # "c":C
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "SearchOnlyNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 414
    .local v9, "contactCursor":Landroid/database/Cursor;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 417
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 419
    if-eqz v9, :cond_a

    .line 420
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 422
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, "number":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 420
    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 457
    .end local v14    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 457
    :cond_3
    throw v1

    .line 427
    .restart local v14    # "number":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v16, "onlyNumber":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v11, v1, :cond_6

    .line 429
    invoke-virtual {v14, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 430
    .restart local v8    # "c":C
    const/16 v1, 0x30

    if-lt v8, v1, :cond_5

    const/16 v1, 0x39

    if-gt v8, v1, :cond_5

    .line 431
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 428
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 434
    .end local v8    # "c":C
    :cond_6
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 436
    .local v20, "tmpNumber":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 437
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 438
    .local v12, "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 443
    :cond_7
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v12    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 447
    .restart local v12    # "name":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v3, 0x104000e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 452
    :cond_9
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 457
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v16    # "onlyNumber":Ljava/lang/StringBuilder;
    .end local v20    # "tmpNumber":Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    .line 458
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 461
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 462
    .local v18, "startListSize":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_4
    move/from16 v0, v18

    if-ge v10, v0, :cond_d

    .line 463
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 464
    .local v15, "object":Ljava/lang/String;
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 465
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 468
    .end local v15    # "object":Ljava/lang/String;
    :cond_d
    return-object v13
.end method

.method public final getSIMContactsSize()I
    .locals 8

    .prologue
    .line 223
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .local v1, "myUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 225
    .local v7, "size":I
    const/4 v6, 0x0

    .line 227
    .local v6, "contactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 228
    if-eqz v6, :cond_0

    .line 229
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 232
    :cond_0
    if-eqz v6, :cond_1

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    return v7

    .line 232
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 233
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_2
    throw v0
.end method

.method public final getSIMPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 14
    .param p1, "orderByWhat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v12, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v8, "allnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 299
    .local v10, "myUri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 300
    .local v9, "contactCursor":Landroid/database/Cursor;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 301
    .local v1, "myProfileUri":Landroid/net/Uri;
    const/4 v13, 0x0

    .line 303
    .local v13, "profileContactCursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 305
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, " Fetching MyProfile Contact details"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 308
    .local v11, "name":Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v13, 0x0

    .line 310
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v11    # "name":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->SIM_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 316
    if-eqz v9, :cond_4

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 319
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 320
    .restart local v11    # "name":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 323
    :cond_0
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 327
    .end local v11    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_1

    .line 328
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_1
    if-eqz v13, :cond_2

    .line 331
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_2
    throw v0

    .line 313
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :cond_4
    if-eqz v9, :cond_5

    .line 328
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_5
    if-eqz v13, :cond_6

    .line 331
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_6
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_8

    .line 346
    :cond_7
    :goto_2
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 347
    return-object v12

    .line 336
    :cond_8
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_7

    .line 338
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 260
    .local v1, "myUri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 264
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 265
    .local v7, "CALLS_NUMBER_COLUMN_INDEX":I
    const/4 v6, 0x1

    .line 267
    .local v6, "CALLS_NAME_COLUMN_INDEX":I
    const/4 v8, 0x0

    .line 268
    .local v8, "callCursor":Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    if-eqz v8, :cond_3

    .line 273
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 276
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 279
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f050008

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 285
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    .end local v10    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 290
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 290
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_4
    return-object v9
.end method
